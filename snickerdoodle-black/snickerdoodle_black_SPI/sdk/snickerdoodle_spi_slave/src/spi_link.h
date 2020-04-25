/**
 ******************************************************************************
 * @file	spi_link.h
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 April 20
 * @brief	Definition of generic, multi-channel SPI communication link.
 * @copyright Copyright (c) 2020, krtkl inc. All rights reserved.
 * @license BSD 3-Clause License
 *
 *******************************************************************************
 *
 * Copyright (c) 2020, krtkl inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *****************************************************************************/

#ifndef SPI_LINK_H_
#define SPI_LINK_H_

/******************************************************************************
 * 			Includes
 *****************************************************************************/

#include "spi_link_config.h"  /* user-supplied with config and typedefs. */

/******************************************************************************
 * 			Defines and Macros
 *****************************************************************************/

/* Maximum number of bytes that can be carried by a single message. */
#define SPI_LINK_DATA_SIZE (64)

/* Other interesting things clients should not be concerned with. */
#define SPI_LINK_HEADER_SIZE (4)
#define SPI_LINK_CRC_SIZE (2)
#define SPI_LINK_MSG_OFFSET_LEN (3)

/* Bulk message sizes on the wire. */
#define SPI_LINK_MSG_SIZE (SPI_LINK_HEADER_SIZE + SPI_LINK_DATA_SIZE + SPI_LINK_CRC_SIZE)
#define SPI_LINK_MSG_SIZE_NO_CRC (SPI_LINK_HEADER_SIZE + SPI_LINK_DATA_SIZE)

/* Obtain the data pointer within an spi_link message object instance.
 * Must be used by clients to access the data buffer within an spi_link
 * message object obtained via a call to spi_link_acquire_msg() or passed
 * to client via (*pf_spi_link_receive_msg callback)() invocation. */
#define SPI_LINK_MSG_DATA(spi_link_msg_handle_t) \
	(((u8*)spi_link_msg_handle_t) + SPI_LINK_HEADER_SIZE)

/* Obtain the length, in bytes, of meaningful client data carried in
 * a message instance. */
#define SPI_LINK_MSG_LENGTH (spi_link_msg_handle_t) \
	((u8)*(((u8*)spi_link_msg_handle_t) + SPI_LINK_MSG_OFFSET_LEN))

/******************************************************************************
 * 			Type definitions
 *****************************************************************************/

typedef enum
{
	SPI_LINK_OK,
	SPI_LINK_FAILED,
	SPI_LINK_BUSY,
	SPI_LINK_CRC_ERROR
} spi_link_status_t;

/* Forward reference to opaque message structure. */
struct spi_link_msg;

/* Handle to opaque message structure. */
typedef struct spi_link_msg * spi_link_msg_handle_t;

/**
 * @brief Client Callback type for received messages, per channel.
 *
 * @warning Registered callbacks will be called from interrupt context!
 *
 * @param msg The received message instance.
 *
 * @returns spi_link_status_t status code.
 * @retval SPI_LINK_OK if msg was processed synchronously and can be reused.
 * @retval SPI_LINK_BUSY if msg is being processed asynchronously, in which case
 *                       client must eventually call spi_link_msg_processed().
 */
typedef spi_link_status_t (*pf_spi_link_receive_msg)(spi_link_msg_handle_t msg);

/**
 * @brief Server Callback type for initiating transmit-receive operation.
 *
 * The length parameter will always include the CRC bytes.  If the server
 * is handling the CRC then it must adjust the length accordingly.
 *
 * @param tx_data Address of the data to transmit.
 * @param rx_data Address of buffer to receive data.
 * @param length Number of bytes to transmit and receive.
 *
 * @param spi_link_status_t The result.
 * @retval SPI_LINK_BUSY if the transaction was successfully started.
 * @retval SPI_LINK_FAILED if the transaction could not be started.
 */
typedef spi_link_status_t (*pf_spi_link_transmit_receive)(
		u8 *tx_data, u8 *rx_data, size_t length);

/**
 * @brief Callback type for calculation of CRC-16.
 *
 * Function must calculate the CRC-16/CCITT (i.e. x^16 + x^12 + x^5 + x^0)
 * for the data passed, with zero initial value, not data reflection,
 * and no final XOR of the output.
 *
 * @param data Address of the data.
 * @param length Length of the data in bytes.
 *
 * @param uint16_t The CRC value.
 */
typedef uint16_t (*pf_spi_link_calculate_crc)(const u8 *data, size_t length);

/******************************************************************************
 * 			Function prototypes
 *****************************************************************************/

/**
 * @brief Initialize the spi_link internal state.
 *
 * Must be called before registering clients, server, or using the link.
 *
 */
extern void spi_link_init(void);

/**
 * @brief Start SPI communications.
 *
 * May be called any time after server registered to initiate transactions.
 *
 */
extern void spi_link_start(void);

/**
 * @brief Stop SPI communications.
 *
 * May be called any time after spi_link_start() to cease transactions.
 *
 */
extern void spi_link_stop(void);

/******************************************************************************
 * 			Client Interface prototypes
 *****************************************************************************/

/**
 * @brief Register a client for a logical channel.
 *
 * This may be called once per channel to register a callback for messages
 * received on the channel.
 *
 * @param channel The channel being registered.
 * @param callback The callback function for received messages.
 */
extern void spi_link_register_client(
		spi_link_channel_t channel,
		pf_spi_link_receive_msg callback);

/**
 * @brief Acquire a message instance.
 *
 * Clients must call this to obtain a message instance to send data.
 * A client may acquire only one message at a time, and must eventually
 * return them via calls to spi_link_send_msg() or spi_link_release_msg().
 *
 * @param channel The channel making the request.
 * @returns spi_link_msg_handle_t if successfully acquired, NULL otherwise.
 */
extern spi_link_msg_handle_t spi_link_acquire_msg(spi_link_channel_t channel);

/**
 * @brief Send a message instance over the SPI link.
 *
 * This queues a message, which was previously obtained via a call to
 * spi_link_acquire_msg(), for transmission over the link. Messages are
 * sent in the order in which they are queued.  If SPI_LINK_OK is
 * returned, the message must no longer be accessed by the client.
 * If SPI_LINK_FAILED is returned, the client is still responsible for
 * the message instance.
 *
 * @param msg A message instance previously obtained via spi_link_acquire_msg().
 * @param length Number of bytes of client data carried in this message.
 * @returns spi_link_status_t code indicating success or failure
 * @retval SPI_LINK_OK If the message was queued for transmission.
 * @retval SPI_LINK_FAILED If the message was not queued for transmission.
 */
extern spi_link_status_t spi_link_send_msg(
		spi_link_msg_handle_t msg, size_t length);

/**
 * @brief Release a message instance.
 *
 * This is used to release a message that was previously acquired via a call
 * to spi_link_acquire_msg() in the event then message will not be sent.
 *
 * @param msg A message instance previously obtained via spi_link_acquire_msg().
 */
extern void spi_link_release_msg(spi_link_msg_handle_t msg);

/**
 * @brief Release a received message instance.
 *
 * This is used to release a message that was previously delivered via the
 * (*pf_spi_link_receive_msg)() callback.  This allows asynchronous processing
 * of received messages.
 *
 * @param msg A message instance previously received.
 */
extern void spi_link_msg_processed(spi_link_msg_handle_t msg);

/******************************************************************************
 * 			Server Interface prototypes
 *****************************************************************************/

/**
 * @brief Register a server to perform actual SPI message transfers.
 *
 * This must be called once to register the server used to perform actual
 * SPI transfers.
 *
 * @param tx_rx_callback Callback to initiate SPI transactions.
 * @param crc_callback Callback to calculate the data CRC value.
 *                     If NULL then it is assumed the server calculates
 *                     and verifies the CRC for all messages.
 */
extern void spi_link_register_server(
		pf_spi_link_transmit_receive tx_rx_callback,
		pf_spi_link_calculate_crc crc_callback);

/**
 * @brief Called to report the result of a transmit-receive operation.
 *
 * This must be called by the server to report the result of each transaction
 * initiated via a call to the (*pf_spi_link_transmit_receive)() callback.
 *
 * @param result The result of the most recent transmit-receive operation,
 *               SPI_LINK_OK if it succeeded, SPI_LINK_FAILED if not.
 */
extern void spi_link_transaction_result(spi_link_status_t result);

#endif /* SPI_LINK_H_ */
