/*
 * main.c
 *
 *  Created on: Apr 24, 2020
 *      Author: acaruso
 */


#include "xparameters.h"	/* SDK generated parameters */
#include "xspips.h"		/* SPI device driver */
#include "xil_printf.h"
#include "crc.h"
#include "spi_link.h"

/************************** Constant Definitions *****************************/

/*
 * The following constant map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID

/*
 * The following constant specify the max amount of data the slave is
 * expecting to receive from the master.
 */
//#define MAX_DATA		(4 + 64 + 2)

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

#define SpiPs_RecvByte(BaseAddress) \
		(u8)XSpiPs_In32((BaseAddress) + XSPIPS_RXD_OFFSET)

#define SpiPs_SendByte(BaseAddress, Data) \
		XSpiPs_Out32((BaseAddress) + XSPIPS_TXD_OFFSET, (Data))

/************************** Function Prototypes ******************************/

static spi_link_status_t SpiSlave(u8 *tx_data, u8 *rx_data, size_t length);

void SpiSlaveRead(int ByteCount);

void SpiSlaveWrite(u8 *Sendbuffer, int ByteCount);

int SpiPsSlavePolledExample(u16 SpiDeviceId);

/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that they
 * are initialized to zero each time the program runs. They could be local
 * but should at least be static so they are zeroed.
 */
static XSpiPs SpiInstance;

/*
 * The ReadBuffer is used to read to the data which it received from the SPI
 * Bus which master has sent.
 */
u8 ReadBuffer[SPI_LINK_MSG_SIZE];

volatile int rx_counter = 0;

u8 *s_tx_data;
u8 *s_rx_data;
size_t s_length;

/*****************************************************************************/
/**
*
* Main function to call the SPI Slave Example.
*
* @param	None
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if not successful
*
* @note		None
*
******************************************************************************/
int main(void)
{
	int Status;

	xil_printf("Running SpiPS Slave Polled Example \r\n");

	/*
	 * Run the SpiPs Slave Polled example.
	 */
	Status = SpiPsSlavePolledExample(SPI_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("SpiPs Slave Polled Example Failed \r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran SpiPs Slave Polled Example \r\n");
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the XSpiPs
* device driver in Slave mode. This function reads data from a SPI Master
* and will echo it back to the Master.
*
* @param	SpiDeviceId is the Instance Id of SPI in the system.
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if not successful
*
* @note		None
*
*
*****************************************************************************/
int SpiPsSlavePolledExample(u16 SpiDeviceId)
{
	int Status;
	XSpiPs_Config *SpiConfig;

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize((&SpiInstance), SpiConfig,
					SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * The SPI device is a slave by default and the clock phase
	 * have to be set according to its master. In this example, CPOL is set
	 * to quiescent high and CPHA is set to 0.
	 */
	Status = XSpiPs_SetOptions(
			(&SpiInstance),
			((XSPIPS_CR_CPOL_MASK) & ~(XSPIPS_CR_CPHA_MASK))
			);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#if 0
	//memset(ReadBuffer, 0x00, sizeof(ReadBuffer));
	for (int index = 0; index < (MAX_DATA - 2); index++)
	{
		ReadBuffer[index] = (u8)(MAX_DATA - index);
	}
	uint16_t crc = crc16message(&ReadBuffer[0], MAX_DATA - 2);
	ReadBuffer[MAX_DATA - 1] = (uint8_t)crc;
	ReadBuffer[MAX_DATA - 2] = (uint8_t)(crc >> 8);
#endif

	/*
	 * Set the Rx FIFO Threshold to the Max Data
	 */
	XSpiPs_SetRXWatermark((&SpiInstance), SPI_LINK_MSG_SIZE);

	/*
	 * Enable the device.
	 */
	XSpiPs_Enable((&SpiInstance));

	spi_link_init();
	spi_link_register_server(&SpiSlave, &crc16message);
	spi_link_start();

	for ( ;; )
	{
		int Count;
		u32 StatusReg;

		StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
						XSPIPS_SR_OFFSET);

		/*
		 * Polling the Rx Buffer for Data
		 */
		do{
			StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
						XSPIPS_SR_OFFSET);
		}while(!(StatusReg & XSPIPS_IXR_RXNEMPTY_MASK));

		/*
		 * Reading the Rx Buffer
		 */
		int length = s_length;
		if (length == 0) length = SPI_LINK_MSG_SIZE;
		for (Count = 0; Count < length; Count++){
			if (s_rx_data)
			{
				s_rx_data[Count] = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
			}
			else
			{
				ReadBuffer[Count] = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
			}
		}
		if (s_rx_data)
		{
			spi_link_transaction_result(SPI_LINK_OK);
		}
	}

#if 0
	//SpiSlaveWrite(&ReadBuffer[0], MAX_DATA);

	for ( ;; )
	{
		/*
		 * Read the contents of the Receive buffer
		 * Master is expected to send MAX_DATA number of bytes
		 */
		SpiSlaveRead(MAX_DATA);

		/* Calculate the CRC */
		uint16_t crc = crc16message(&ReadBuffer[0], MAX_DATA - 2);
		ReadBuffer[MAX_DATA - 1] = (uint8_t)crc;
		ReadBuffer[MAX_DATA - 2] = (uint8_t)(crc >> 8);
		rx_counter++;

		/*
		 * Send the data received back to Master
		 * Master is expected to send MAX_DATA number of dummy bytes for
		 * the slave to be able to echo previously received data.
		 */
		//SpiSlaveWrite(&ReadBuffer[0], MAX_DATA);
	}
#endif

	/*
	 * Disable the device.
	 */
	XSpiPs_Disable((&SpiInstance));

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function reads from the Rx buffer
*
* @param	ByteCount is the number of bytes to be read from Rx buffer.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void SpiSlaveRead(int ByteCount)
{
	int Count;
	u32 StatusReg;

	StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
					XSPIPS_SR_OFFSET);

	/*
	 * Polling the Rx Buffer for Data
	 */
	do{
		StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
					XSPIPS_SR_OFFSET);
	}while(!(StatusReg & XSPIPS_IXR_RXNEMPTY_MASK));

	/*
	 * Reading the Rx Buffer
	 */
	for(Count = 0; Count < ByteCount; Count++){
		ReadBuffer[Count] = SpiPs_RecvByte(
				SpiInstance.Config.BaseAddress);
	}

}

/*****************************************************************************/
/**
*
* This function writes Data into the Tx buffer
*
* @param	Sendbuffer is the buffer whose data is to be sent onto the
* 		Tx FIFO.
* @param	ByteCount is the number of bytes to be read from Rx buffer.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void SpiSlaveWrite(u8 *Sendbuffer, int ByteCount)
{
	u32 StatusReg;
	int TransCount = 0;

	StatusReg = XSpiPs_ReadReg(SpiInstance.Config.BaseAddress,
				XSPIPS_SR_OFFSET);

	/*
	 * Fill the TXFIFO with as many bytes as it will take (or as
	 * many as we have to send).
	 */
	while ((ByteCount > 0) &&
		(TransCount < XSPIPS_FIFO_DEPTH)) {
		SpiPs_SendByte(SpiInstance.Config.BaseAddress,
				*Sendbuffer);
		Sendbuffer++;
		++TransCount;
		ByteCount--;
	}

#if 0
	/*
	 * Wait for the transfer to finish by polling Tx fifo status.
	 */
	do {
		StatusReg = XSpiPs_ReadReg(
				SpiInstance.Config.BaseAddress,
					XSPIPS_SR_OFFSET);
	} while ((StatusReg & XSPIPS_IXR_TXOW_MASK) == 0);
#endif

}

static spi_link_status_t SpiSlave(u8 *tx_data, u8 *rx_data, size_t length)
{
	s_tx_data = tx_data;
	s_rx_data = rx_data;
	s_length = length;
	SpiSlaveWrite(tx_data, length);
	return SPI_LINK_OK;
}
