/**
 ******************************************************************************
 * @file	spi_link_config.h
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 April 20
 * @brief	User-supplied type and config info required by spi_link.h.
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

#ifndef SPI_LINK_CONFIG_H_
#define SPI_LINK_CONFIG_H_

/* Number of message objects. MUST be > SPI_LINK_NUM_CHANNELS!!! */
#define SPI_LINK_TX_MSG_COUNT (8)
#define SPI_LINK_RX_MSG_COUNT (8)

/* Definition of channel numbers, also used as indices so these should
 * NOT be sparse.
 */
typedef enum
{
	/* User-defined channels, should be the same on both sides of the wire. */
	SPI_LINK_CHANNEL_CNTL = 0,
	SPI_LINK_CHANNEL_BT = 1,

	/* User MUST NOT change these: */
	SPI_LINK_NUM_CHANNELS,
	SPI_LINK_DUMMY_CHANNEL = 255
} spi_link_channel_t;

#if 1
/* For embedded (i.e. non-Linux kernel) code: */
#include <stdint.h>

typedef uint8_t     u8;
typedef uint16_t    u16;
typedef uint32_t    u32;

#else

/* For Linux kernel code: */
#include "linux/types.h"

#endif

#endif /* SPI_LINK_CONFIG_H_ */
