/**
 ******************************************************************************
 * @file	sd_control_codec.c
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 Apr 30
 * @brief	Implementation of Zynq to STM32 control message encoding.
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

#include <assert.h>
#include <string.h>
#include "sd_control_codec.h"

/******************************************************************************
 * 			Defines and Macros
 *****************************************************************************/

#define OFFSET_HEADER (0)
#define LEN_HEADER (4)
#define OFFSET_PAYLOAD (OFFSET_HEADER + LEN_HEADER)
#define LEN_PAYLOAD (16)

#if (LEN_MESSAGE != (OFFSET_PAYLOAD + LEN_PAYLOAD))
# error Inconsistent message length defines
#endif

/******************************************************************************
 * 			Type definitions
 *****************************************************************************/

/******************************************************************************
 * 			Private Data
 *****************************************************************************/

/******************************************************************************
 * 			Function prototypes
 *****************************************************************************/

static void SdControlCodecDecodeHeader(uint32_t header, sdControlMsg_t *msg);
static uint32_t SdControlCodecEncodeHeader(const sdControlMsg_t *msg);

/******************************************************************************
 * 			Public Functions
 *****************************************************************************/

void SdControlCodecInit(void)
{

}

/* -------------------------------------------------------------------------- */

void SdControlCodecEncodeMsg(const sdControlMsg_t *msg, uint8_t buffer[LEN_MESSAGE])
{
	/* Encode header a uint32_t, and write least significant byte first to buffer. */
	uint32_t header = SdControlCodecEncodeHeader(msg);
	buffer[OFFSET_HEADER + 3] = (uint8_t)header;
	header >>= 8;
	buffer[OFFSET_HEADER + 2] = (uint8_t)header;
	header >>= 8;
	buffer[OFFSET_HEADER + 1] = (uint8_t)header;
	header >>= 8;
	buffer[OFFSET_HEADER + 0] = (uint8_t)header;

	/* Copy the payload without modification. */
	memcpy(&buffer[OFFSET_PAYLOAD], msg->payload, LEN_PAYLOAD);
}

/* -------------------------------------------------------------------------- */

bool SdControlCodecDecodeMsg(const uint8_t *buffer, sdControlMsg_t *msg)
{
	bool success = true;

	/* Header is a uint32_t, read least significant byte first from buffer. */
	uint32_t header = buffer[OFFSET_HEADER + 0];
	header <<= 8;
	header |= buffer[OFFSET_HEADER + 1];
	header <<= 8;
	header |= buffer[OFFSET_HEADER + 2];
	header <<= 8;
	header |= buffer[OFFSET_HEADER + 3];
	SdControlCodecDecodeHeader(header, msg);

	/* Copy the payload without modification. */
	memcpy(msg->payload, &buffer[OFFSET_PAYLOAD], LEN_PAYLOAD);

	return success;
}

/******************************************************************************
 * 			Private Functions
 *****************************************************************************/

static uint32_t SdControlCodecEncodeHeader(const sdControlMsg_t *msg)
{
	uint32_t header;
	header = (msg->msgType & 0x07);
	header <<= 8;
	header |= (msg->function & 0xFF);
	header <<= 16;
	header |= (msg->address & 0xFFFF);
	header <<= 5;
	header |= (msg->payloadSize & 0x1F);
	return header;
}

/* -------------------------------------------------------------------------- */

static void SdControlCodecDecodeHeader(uint32_t header, sdControlMsg_t *msg)
{
	msg->payloadSize = (uint8_t)(header & 0x1F);
	header >>= 5;
	msg->address = (uint16_t)header;
	header >>= 16;
	msg->function = (sdControlFunction_t)(header & 0xFF);
	header >>= 8;
	msg->msgType = (sdControlMsgType_t)(header & 0x07);
}
