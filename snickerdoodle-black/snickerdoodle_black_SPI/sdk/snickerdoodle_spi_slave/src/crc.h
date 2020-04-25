/**
 ******************************************************************************
 * @file	crc.h
 * @author	A. Caruso
 * @email	caruso@krtkl.com
 * @date	2020 April 20
 * @brief	Interface definition for CRC calculation.
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

#ifndef _CRC_H
#define _CRC_H

#include <stdint.h>
#include <stddef.h>

/**
 * @brief Calculate the CRC for a message
 *
 * Calculates the CRC-16/CCITT for a message, with zero initial value,
 * no reflection of data and zero xor of output value.
 *
 * @param[in] pMsg Pointer to the message
 * @param[in] length Number of bytes in the message
 * @returns The CRC of the message
 */
uint16_t crc16message(const uint8_t *pMsg, size_t length);

/**
 * @brief Calculate a CRC one byte at time
 *
 * Updates the CRC based on the byte passed.
 *
 * @param[in] crc The current CRC value
 * @param[in] byte The next byte
 * @returns The updated CRC value
 */
uint16_t crc16(uint16_t crc, uint8_t byte);

#endif /* _CRC_H */
