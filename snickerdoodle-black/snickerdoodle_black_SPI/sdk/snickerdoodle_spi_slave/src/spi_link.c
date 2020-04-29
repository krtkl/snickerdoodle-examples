/**
 ******************************************************************************
 * @file	spi_link.c
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 April 20
 * @brief	Implementation of generic, multi-channel SPI communication link.
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

/******************************************************************************
 * 			Includes
 *****************************************************************************/

#include <string.h>
#include <assert.h>
#include "spi_link.h"

/******************************************************************************
 * 			Defines and Macros
 *****************************************************************************/

/* Offset defining structure of a message. */
#define SPI_LINK_MSG_OFFSET_SEQ (2)
#define SPI_LINK_MSG_OFFSET_ACK (3)
#define SPI_LINK_MSG_OFFSET_CHAN (4) /* Logical channel number */
#define SPI_LINK_MSG_OFFSET_DATA (SPI_LINK_HEADER_SIZE)

#define SPI_LINK_STARTED (1)
#define SPI_LINK_STOPPED (0)
#define SPI_LINK_INVALID_SEQ (-1)

/******************************************************************************
 * 			Type definitions
 *****************************************************************************/

struct spi_link_context;

typedef struct spi_link_msg
{
	u8 msg[SPI_LINK_MSG_SIZE];

	spi_link_msg_handle_t p_next;
	spi_link_msg_handle_t p_prev;
	struct spi_link_context *p_context;
} spi_link_msg_t;

typedef struct spi_link_context
{
	/* raw buffers and messages */
	u8 dummy_header[SPI_LINK_HEADER_SIZE];
	spi_link_msg_t tx_messages[SPI_LINK_TX_MSG_COUNT];
	spi_link_msg_t rx_messages[SPI_LINK_RX_MSG_COUNT];

	spi_link_msg_handle_t rx_free_list;		/* Free list of received message objects */
	spi_link_msg_handle_t rx_fifo_first;    /* FIFO of unprocessed, received messages */
	spi_link_msg_handle_t rx_fifo_last;
	spi_link_msg_handle_t rx_current;		/* current RX message */

	spi_link_msg_handle_t tx_free_list;     /* Free list of transmit message objects */
	spi_link_msg_handle_t tx_fifo_first;	/* FIFO of prepared, unsent messages */
	spi_link_msg_handle_t tx_fifo_last;
	spi_link_msg_handle_t tx_pending;       /* Pending TX message, awaiting ACK. */
	spi_link_msg_handle_t tx_prior;         /* Prior TX message, in case we need to re-send. */
	size_t tx_reservation_count;
	int tx_prior_seq[2];                    /* Prior TX sequence numbers. */

	int started;
	u8 seq_number;
	u8 ack_number;

	/* Client info */
	pf_spi_link_receive_msg rx_callbacks[SPI_LINK_NUM_CHANNELS];
	spi_link_msg_handle_t msg_held[SPI_LINK_NUM_CHANNELS];
	size_t tx_count[SPI_LINK_NUM_CHANNELS];

	/* Server info */
	pf_spi_link_transmit_receive tx_rx_callback;

	/* Debug */
	int retransmit_count;
} spi_link_context_t;

/******************************************************************************
 * 			Private Data
 *****************************************************************************/

/*static*/ spi_link_context_t s_context;

/******************************************************************************
 * 			Function prototypes
 *****************************************************************************/

static void spi_link_transact(int rx_ack);
static inline void spi_link_process_acked_msg(spi_link_msg_handle_t msg);
static inline void spi_link_fifo_push(spi_link_msg_handle_t msg, spi_link_msg_handle_t *p_first, spi_link_msg_handle_t *p_last);
static inline void spi_link_fifo_pop(spi_link_msg_handle_t *p_msg, spi_link_msg_handle_t *p_first, spi_link_msg_handle_t *p_last);
static inline void spi_link_free_list_push(spi_link_msg_handle_t msg, spi_link_msg_handle_t *p_list);
static inline void spi_link_free_list_pop(spi_link_msg_handle_t *p_msg, spi_link_msg_handle_t *p_list);

/******************************************************************************
 * 			Public Functions
 *****************************************************************************/

void spi_link_init(void)
{
	memset(&s_context, 0, sizeof(spi_link_context_t));

	/* Add all buffer to free lists */
	for (int index = 0; index < SPI_LINK_RX_MSG_COUNT; index++)
	{
		spi_link_free_list_push(&s_context.rx_messages[index], &s_context.rx_free_list);
	}
	for (int index = 0; index < SPI_LINK_TX_MSG_COUNT; index++)
	{
		spi_link_free_list_push(&s_context.tx_messages[index], &s_context.tx_free_list);
		/* Start Of Frame bytes never change, so write them now. */
		s_context.tx_messages[index].msg[SPI_LINK_MSG_OFFSET_SOF1] = SPI_LINK_MSG_SOF1;
		s_context.tx_messages[index].msg[SPI_LINK_MSG_OFFSET_SOF2] = SPI_LINK_MSG_SOF2;
	}

	/* Reserve a spot in the TX FIFO for each channel. */
	s_context.tx_reservation_count = SPI_LINK_NUM_CHANNELS;

	/* Get a receive buffer. */
	spi_link_free_list_pop(&s_context.rx_current, &s_context.rx_free_list);

	/* Initialize the sequence, acknowledgment numbers, and related. */
	s_context.seq_number = 0;
	s_context.ack_number = 255;
	s_context.tx_prior_seq[0] = SPI_LINK_INVALID_SEQ;
	s_context.tx_prior_seq[1] = SPI_LINK_INVALID_SEQ;
}

/* -------------------------------------------------------------------------- */

void spi_link_start(void)
{
	if (SPI_LINK_STARTED != s_context.started)
	{
		s_context.started = SPI_LINK_STARTED;
		spi_link_transact(SPI_LINK_INVALID_SEQ);
	}
}

/* -------------------------------------------------------------------------- */

void spi_link_stop(void)
{
	s_context.started = SPI_LINK_STOPPED;
}

/* -------------------------------------------------------------------------- */

void spi_link_register_client(
		spi_link_channel_t channel,
		pf_spi_link_receive_msg callback)
{
	assert((channel >= 0) && (channel < SPI_LINK_NUM_CHANNELS));
	if ((channel >= 0) && (channel < SPI_LINK_NUM_CHANNELS))
	{
		s_context.rx_callbacks[channel] = callback;
	}
}

/* -------------------------------------------------------------------------- */

spi_link_msg_handle_t spi_link_acquire_msg(spi_link_channel_t channel)
{
	if ((channel >= 0) && (channel < SPI_LINK_NUM_CHANNELS) &&
			(NULL == s_context.msg_held[channel]))
	{
		spi_link_msg_handle_t msg;
		spi_link_free_list_pop(&msg, &s_context.tx_free_list);
		s_context.msg_held[channel] = msg;
		msg->msg[SPI_LINK_MSG_OFFSET_CHAN] = channel;
		return msg;
	}
	return NULL;
}

/* -------------------------------------------------------------------------- */

spi_link_status_t spi_link_send_msg(
		spi_link_msg_handle_t msg, size_t length)
{
	spi_link_status_t result = SPI_LINK_FAILED;
	if (msg)
	{
		/* Enforce fairness by keeping a reservation for each channel that does
		 * not currently have a message in the FIFO.*/
		int allow = 0;
		u8 channel = msg->msg[SPI_LINK_MSG_OFFSET_CHAN];
		size_t tx_count = s_context.tx_count[channel];
		if (tx_count == 0)
		{
			s_context.tx_reservation_count--;
			allow = 1;
		}
		else if ((tx_count + s_context.tx_reservation_count) < SPI_LINK_TX_MSG_COUNT)
		{
			allow = 1;
		}

		if (allow)
		{
			msg->msg[SPI_LINK_MSG_OFFSET_LEN] = (u8)(length & 0xff);
			spi_link_fifo_push(msg, &s_context.tx_fifo_first, &s_context.tx_fifo_last);
			s_context.msg_held[channel] = NULL;
			s_context.tx_count[channel]++;
			result = SPI_LINK_OK;
		}
	}
	return result;
}

/* -------------------------------------------------------------------------- */

void spi_link_release_msg(spi_link_msg_handle_t msg)
{
	if (msg)
	{
		u8 channel = msg->msg[SPI_LINK_MSG_OFFSET_CHAN];
		s_context.msg_held[channel] = NULL;
		spi_link_free_list_push(msg, &s_context.tx_free_list);
	}
}

/* -------------------------------------------------------------------------- */

void spi_link_msg_processed(spi_link_msg_handle_t msg)
{
	assert(msg);
	if (msg)
	{
		spi_link_free_list_push(msg, &s_context.rx_free_list);
	}
}

/* -------------------------------------------------------------------------- */

void spi_link_register_server(pf_spi_link_transmit_receive tx_rx_callback)
{
	s_context.tx_rx_callback = tx_rx_callback;
}

/* -------------------------------------------------------------------------- */

void spi_link_transaction_result(spi_link_status_t result)
{
	int rx_ack = SPI_LINK_INVALID_SEQ;
	if (result == SPI_LINK_OK)
	{
		/* We received a valid message from the other end. */
		rx_ack = s_context.rx_current->msg[SPI_LINK_MSG_OFFSET_ACK];
		u8 rx_seq = s_context.rx_current->msg[SPI_LINK_MSG_OFFSET_SEQ];
		u8 rx_chan = s_context.rx_current->msg[SPI_LINK_MSG_OFFSET_CHAN];

		/* Is this a new message? We accept a message as new in strict order by
		 * sequence, one at a time (analogous to a window size of 1 message).
		 */
		if (rx_seq == ((u8)(s_context.ack_number + 1)))
		{
			if (rx_chan < SPI_LINK_NUM_CHANNELS)
			{
				/* Client message. Always make sure we have a free RX message
				 * object before actually accepting the message.
				 */
				spi_link_msg_handle_t rx_next_msg;
				spi_link_free_list_pop(&rx_next_msg, &s_context.rx_free_list);
				if (rx_next_msg)
				{
					/* Queue the message for delivery to client. */
					spi_link_fifo_push(s_context.rx_current, &s_context.rx_fifo_first, &s_context.rx_fifo_last);

					/* Bump our ACK number to acknowledge receipt. */
					s_context.ack_number = rx_seq;

					/* Prepare to receive next message. */
					s_context.rx_current = rx_next_msg;
				}
				else
				{
					/* Do not acknowledge the message if we don't have a free message
					 * object available.  This will force the other side to re-send it.
					 */
				}
			}
			else
			{
				/* Dummy message. Just acknowledge it and re-use the RX message instance. */
				s_context.ack_number = rx_seq;
			}
		}

		/* Has a transmission been acknowledged? */
		if (s_context.tx_prior && (s_context.tx_prior->msg[SPI_LINK_MSG_OFFSET_SEQ] == (u8)rx_ack))
		{
			spi_link_process_acked_msg(s_context.tx_prior);
			s_context.tx_prior = NULL;
		}
		else if (s_context.tx_pending && (s_context.tx_pending->msg[SPI_LINK_MSG_OFFSET_SEQ] == (u8)rx_ack))
		{
			spi_link_process_acked_msg(s_context.tx_pending);
			s_context.tx_pending = NULL;

			if (s_context.tx_prior)
			{
				/* Special case that happens rarely. Since the pending message sequence
				 * will always succeed that of the prior message, then if the pending
				 * message was ACKed, we must have missed the ACK for the prior.  This
				 * can happen when the slave loses frame synchronization.
				 */
				spi_link_process_acked_msg(s_context.tx_prior);
				s_context.tx_prior = NULL;
			}
		}
	}

	/* Start the next transaction. */
	spi_link_transact(rx_ack);

	/* Finally, attempt to delivered messages from the RX FIFO to clients. */
	while (s_context.rx_fifo_first)
	{
		/* Is there a client for this message? */
		u8 channel =  s_context.rx_fifo_first->msg[SPI_LINK_MSG_OFFSET_CHAN];
		assert(channel < SPI_LINK_NUM_CHANNELS);
		if (s_context.rx_callbacks[channel])
		{
			/* There is a client, so attempt delivery. */
			spi_link_status_t status = (*s_context.rx_callbacks[channel])(s_context.rx_fifo_first);
			if (SPI_LINK_OK == status)
			{
				/* Message delivered and processed synchronously. */
				spi_link_msg_handle_t msg;
				spi_link_fifo_pop(&msg, &s_context.rx_fifo_first, &s_context.rx_fifo_last);
				spi_link_free_list_push(msg, &s_context.rx_free_list);
			}
			else if (SPI_LINK_BUSY == status)
			{
				/* Message delivered and being processed asynchronously. */
				spi_link_fifo_pop(NULL, &s_context.rx_fifo_first, &s_context.rx_fifo_last);
			}
			else
			{
				/* Failed to deliver, so we are done for now. */
				break;
			}
		}
		else
		{
			/* No registered client for this channel, discard the message. */
			spi_link_msg_handle_t msg;
			spi_link_fifo_pop(&msg, &s_context.rx_fifo_first, &s_context.rx_fifo_last);
			spi_link_free_list_push(msg, &s_context.rx_free_list);
		}
	}
}

/* -------------------------------------------------------------------------- */

static void spi_link_transact(int rx_ack)
{
	u8 *tx_msg_data;
	u8 *rx_msg_data;
	spi_link_msg_handle_t tx_current = NULL;

	/* Setup next transmission. */
	if (s_context.tx_prior)
	{
		/* Prior transmission not yet acknowledged, so re-send it. */
		tx_current = s_context.tx_prior;
		tx_current->msg[SPI_LINK_MSG_OFFSET_ACK] = s_context.ack_number;
		s_context.retransmit_count++;
	}
	else if (s_context.tx_pending)
	{
		if (SPI_LINK_INVALID_SEQ == rx_ack)
		{
			/* Re-send since prior transaction did not succeed. */
			tx_current = s_context.tx_pending;
		}
		else if ((rx_ack == s_context.tx_prior_seq[0]) && (s_context.tx_prior_seq[0] == s_context.tx_prior_seq[1]))
		{
			/* Re-send, rather than advance.  This situation occurs on the master side,
			 * after the slave re-synchronizes.
			 */
			tx_current = s_context.tx_pending;
		}

		if (tx_current)
		{
			tx_current->msg[SPI_LINK_MSG_OFFSET_ACK] = s_context.ack_number;
			s_context.retransmit_count++;
		}
		else
		{
			/* Advance to next message. */
			s_context.tx_prior = s_context.tx_pending;
		}
	}

	if (!tx_current)
	{
		if (s_context.tx_fifo_first)
		{
			/* Get next message from FIFO. */
			spi_link_fifo_pop(&tx_current, &s_context.tx_fifo_first, &s_context.tx_fifo_last);
		}
		else
		{
			/* Nothing to send, so send a dummy message. */
			spi_link_free_list_pop(&tx_current, &s_context.tx_free_list);
			assert(tx_current);
			tx_current->msg[SPI_LINK_MSG_OFFSET_CHAN] = SPI_LINK_DUMMY_CHANNEL;
		}
		tx_current->msg[SPI_LINK_MSG_OFFSET_ACK] = s_context.ack_number;
		tx_current->msg[SPI_LINK_MSG_OFFSET_SEQ] = s_context.seq_number++;
		s_context.tx_pending = tx_current;
	}

	/* Get actual TX and RX buffers. */
	tx_msg_data = &tx_current->msg[0];
	rx_msg_data = &s_context.rx_current->msg[0];

	/* Keep track of TX sequences. */
	s_context.tx_prior_seq[1] = s_context.tx_prior_seq[0];
	s_context.tx_prior_seq[0] = tx_msg_data[SPI_LINK_MSG_OFFSET_SEQ];

	if (s_context.tx_rx_callback)
	{
		spi_link_status_t status =
				(*s_context.tx_rx_callback)(tx_msg_data, rx_msg_data, SPI_LINK_MSG_SIZE);
		/* TODO: What if this call fails? We have no way to restart communication
		 * without a timer or some other process to re-try upon failure.
		 */
		(void)status;
	}
}

/* -------------------------------------------------------------------------- */
static inline void spi_link_process_acked_msg(spi_link_msg_handle_t msg)
{
	u8 tx_chan = msg->msg[SPI_LINK_MSG_OFFSET_CHAN];
	if (tx_chan < SPI_LINK_NUM_CHANNELS)
	{
		s_context.tx_count[tx_chan]--;
		if (s_context.tx_count[tx_chan] == 0)
		{
			s_context.tx_reservation_count++;
		}
	}
	spi_link_free_list_push(msg, &s_context.tx_free_list);
}

/* -------------------------------------------------------------------------- */

static inline void spi_link_fifo_push(spi_link_msg_handle_t msg, spi_link_msg_handle_t *p_first, spi_link_msg_handle_t *p_last)
{
	if (*p_last)
	{
		(*p_last)->p_next = msg;
		msg->p_prev = *p_last;
		*p_last = msg;
	}
	else
	{
		*p_first = *p_last = msg;
		msg->p_prev = NULL;
	}
	msg->p_next = NULL;
}

/* -------------------------------------------------------------------------- */

static inline void spi_link_fifo_pop(spi_link_msg_handle_t *p_msg, spi_link_msg_handle_t *p_first, spi_link_msg_handle_t *p_last)
{
	spi_link_msg_handle_t msg;
	if (*p_first)
	{
		msg = *p_first;
		if (*p_first == *p_last)
		{
			*p_first = *p_last = NULL;
		}
		else
		{
			*p_first = (*p_first)->p_next;
			(*p_first)->p_prev = NULL;
		}
	}
	else
	{
		msg = NULL;
	}

	if (p_msg)
	{
		*p_msg = msg;
	}
}

/* -------------------------------------------------------------------------- */

static inline void spi_link_free_list_push(spi_link_msg_handle_t msg, spi_link_msg_handle_t *p_list)
{
	msg->p_prev = NULL;
	msg->p_next = *p_list;
	*p_list = msg;
}

/* -------------------------------------------------------------------------- */

static inline void spi_link_free_list_pop(spi_link_msg_handle_t *p_msg, spi_link_msg_handle_t *p_list)
{
	if (p_msg)
	{
		*p_msg = *p_list;
		if (*p_list)
		{
			*p_list = (*p_list)->p_next;
		}
	}
}

