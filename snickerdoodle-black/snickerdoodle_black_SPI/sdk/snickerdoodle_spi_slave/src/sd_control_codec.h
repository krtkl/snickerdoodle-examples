/**
 ******************************************************************************
 * @file	sd_control_codec.h
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 Apr 30
 * @brief	Interface definition for Zynq to STM32 control message encoding.
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

#ifndef SD_CONTROL_CODEC_H_
#define SD_CONTROL_CODEC_H_

/******************************************************************************
 * 			Includes
 *****************************************************************************/

#include <stdbool.h>
#include <stdint.h>

/******************************************************************************
 * 			Defines and Macros
 *****************************************************************************/

#define LEN_MESSAGE (20)

/******************************************************************************
 * 			Type definitions
 *****************************************************************************/

typedef enum
{
	MSG_TYPE_NOP = 0x0,
	MSG_TYPE_COMMAND = 0x1,
	MSG_TYPE_NAK = 0x2,
	MSG_TYPE_RESPONSE = 0x3,
	MSG_TYPE_ERROR = 0x4,
	MSG_TYPE_NREADY = 0x5,
	MSG_TYPE_READY = 0x6,
	MSG_TYPE_RESERVED = 0x7
} sdControlMsgType_t;

typedef enum
{
	FUNCTION_ECHO = 0x00,
	FUNCTION_LED = 0x01,
	FUNCTION_POWER_SAVE = 0x02,
	FUNCTION_ANTENNA_CFG = 0x03,
	FUNCTION_SET_RST_TIMER = 0x04,
} sdControlFunction_t;

typedef struct sdControlMsg
{
	sdControlMsgType_t msgType;
	sdControlFunction_t function;
	uint16_t address;
	uint8_t payloadSize;
	uint8_t payload[16];
} sdControlMsg_t;

/******************************************************************************
 * 			Function prototypes
 *****************************************************************************/

extern void SdControlCodecInit(void);
extern void SdControlCodecEncodeMsg(const sdControlMsg_t *msg, uint8_t *buffer);
extern bool SdControlCodecDecodeMsg(const uint8_t *buffer, sdControlMsg_t *msg);

#endif /* SD_CONTROL_CODEC_H_ */
