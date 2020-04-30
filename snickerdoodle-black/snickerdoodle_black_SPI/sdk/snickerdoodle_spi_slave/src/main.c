/*
 * main.c
 *
 *  Created on: Apr 24, 2020
 *      Author: acaruso
 */


#include "assert.h"
#include "xparameters.h"	/* SDK generated parameters */
#include "xplatform_info.h"
#include "xspips.h"		/* SPI device driver */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xuartps_hw.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "crc.h"
#include "spi_link.h"
#include "sd_control_codec.h"

/************************** Constant Definitions *****************************/

/*
 * The following constant map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID		XPAR_XSPIPS_1_INTR

#define SPI_SYNCHRONIZED (1)
#define SPI_NOT_SYNCHRONIZED (0)
#define SYNCING_RX_FIFO_THRESHOLD (16)

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

#define SpiPs_RecvByte(BaseAddress) \
		(u8)XSpiPs_In32((BaseAddress) + XSPIPS_RXD_OFFSET)

#define SpiPs_SendByte(BaseAddress, Data) \
		XSpiPs_Out32((BaseAddress) + XSPIPS_TXD_OFFSET, (Data))

/************************** Function Prototypes ******************************/

static spi_link_status_t SpiSlaveTxRx(u8 *tx_data, u8 *rx_data, size_t length);

static spi_link_status_t SpiPsReceiveCtrlMsg(spi_link_msg_handle_t msg);

static int SpiPsSetupIntrSystem(XScuGic *IntcInstancePtr,
			       XSpiPs *SpiInstancePtr, u16 SpiIntrId);

static void SpiPsDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId);

static void SpiPsInterruptHandler(XSpiPs *InstancePtr);

static int SpiPsSlavePolledExample(XScuGic *IntcInstancePtr,
		XSpiPs *SpiInstancePtr, u16 SpiDeviceId, u16 SpiIntrId);

/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that they
 * are initialized to zero each time the program runs. They could be local
 * but should at least be static so they are zeroed.
 */
static XScuGic IntcInstance;
static XSpiPs SpiInstance;

/*
 * The ReadBuffer is used to read to the data which it received from the SPI
 * Bus which master has sent.
 */
//u8 ReadBuffer[SPI_LINK_MSG_SIZE];

/* SPI link server related state */
u8 *s_tx_data;
u8 *s_rx_data;
size_t s_length;

u8 s_rx_fifo_threshold;
int s_synchronized;
int s_sync_index;

/* Debug counter */
u32 xfer_count = 0;

/* SPI link client related state */
sdControlMsg_t s_control_cmd;
sdControlMsg_t s_control_rsp;

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

	// Disable the instruction caches
	void Xil_ICacheDisable(void);

	// Disable the level 1 data cache.
	void Xil_L1DCacheDisable(void);

	// Disable level 1 the instruction cache.
	void Xil_L1ICacheDisable(void);

	// Disable the L2 cache.
	void Xil_L2CacheDisable(void);
	xil_printf("\r\nSnickerdoodle SPI Slave bare metal test.\r\n");

	/*
	 * Run the SpiPs Slave Polled example.
	 */
	Status = SpiPsSlavePolledExample(&IntcInstance, &SpiInstance,
			SPI_DEVICE_ID, SPI_INTR_ID);
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
static int SpiPsSlavePolledExample(XScuGic *IntcInstancePtr,
		XSpiPs *SpiInstancePtr, u16 SpiDeviceId, u16 SpiIntrId)
{
	int Status;
	XSpiPs_Config *SpiConfig;
	u32 Platform;

	Platform = XGetPlatform_Info();
	if ((Platform == XPLAT_ZYNQ_ULTRA_MP) || (Platform == XPLAT_versal))
	{
		SpiIntrId = XPAR_XSPIPS_0_INTR;
	}

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize((&SpiInstance), SpiConfig, SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the Spi device to the interrupt subsystem such that
	 * interrupts can occur. This function is application specific
	 */
	Status = SpiPsSetupIntrSystem(IntcInstancePtr, SpiInstancePtr, SpiIntrId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * The SPI device is a slave by default and the clock phase
	 * have to be set according to its master. In this example, CPOL is set
	 * to quiescent high and CPHA is set to 0.
	 */
	Status = XSpiPs_SetOptions((&SpiInstance), ((XSPIPS_CR_CPOL_MASK) & ~(XSPIPS_CR_CPHA_MASK)));
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	s_rx_fifo_threshold = 0;
	s_synchronized = SPI_NOT_SYNCHRONIZED;
	s_sync_index = 0;

	spi_link_init();

	/* Register as the server to SPI link */
	spi_link_register_server(&SpiSlaveTxRx);

	/* Also register as the client for the SPI_LINK_CHANNEL_CNTL channel. */
	spi_link_register_client(SPI_LINK_CHANNEL_CNTL, &SpiPsReceiveCtrlMsg);

	spi_link_start();

	for ( ;; )
	{
		u32 CntrlRegister;

		CntrlRegister = XUartPs_ReadReg(XPAR_XUARTPS_0_BASEADDR, XUARTPS_CR_OFFSET);

		/* Enable TX and RX for the device */
		XUartPs_WriteReg(XPAR_XUARTPS_0_BASEADDR, XUARTPS_CR_OFFSET,
				  ((CntrlRegister & ~XUARTPS_CR_EN_DIS_MASK) |
				   XUARTPS_CR_TX_EN | XUARTPS_CR_RX_EN));

		 /* Wait until there is data */
		while (!XUartPs_IsReceiveData(XPAR_XUARTPS_0_BASEADDR));

		u8 RecvChar = XUartPs_ReadReg(XPAR_XUARTPS_0_BASEADDR, XUARTPS_FIFO_OFFSET);

		if (('0' <= RecvChar) && ('6' >= RecvChar))
		{
			s_control_cmd.msgType = MSG_TYPE_COMMAND;
			s_control_cmd.function = FUNCTION_LED;
			s_control_cmd.payload[0] = (RecvChar - '0');

			spi_link_msg_handle_t msg = spi_link_acquire_msg(SPI_LINK_CHANNEL_CNTL);
			if (msg)
			{
				SdControlCodecEncodeMsg(&s_control_cmd, SPI_LINK_MSG_DATA(msg));

				spi_link_send_msg(msg, LEN_MESSAGE);
			}
		}

		/* Change the capitalization */
		if (('a' <= RecvChar) && ('z' >= RecvChar)) {
			/* Convert the Capital letter to a small. */
			RecvChar = RecvChar - 'a' + 'A';
		}
		else if (('A' <= RecvChar) && ('Z' >= RecvChar)) {
			/* Convert the small letter to a Capital. */
			RecvChar = RecvChar - 'A' + 'a';
		}

		/* Echo the character back */
		XUartPs_WriteReg(XPAR_XUARTPS_0_BASEADDR,  XUARTPS_FIFO_OFFSET, RecvChar);
	}

	SpiPsDisableIntrSystem(IntcInstancePtr, SpiIntrId);

	/*
	 * Disable the device.
	 */
	XSpiPs_Disable((&SpiInstance));

	return XST_SUCCESS;
}

/*****************************************************************************/
static spi_link_status_t SpiSlaveTxRx(u8 *tx_data, u8 *rx_data, size_t length)
{
	assert(rx_data != NULL);
	assert(tx_data != NULL);
	assert(length == SPI_LINK_MSG_SIZE);

	s_tx_data = tx_data;
	s_rx_data = rx_data;
	s_length = length;

	if (0 == s_rx_fifo_threshold)
	{
		/* Initial startup. */
		/* Set the Rx FIFO Threshold to a few bytes until we recognize start of frame. */
		s_rx_fifo_threshold = SYNCING_RX_FIFO_THRESHOLD;
		XSpiPs_SetRXWatermark((&SpiInstance), s_rx_fifo_threshold);

		/* Clear all interrupts. */
		XSpiPs_WriteReg((&SpiInstance)->Config.BaseAddress, XSPIPS_SR_OFFSET, XSPIPS_IXR_WR_TO_CLR_MASK);
		/* Disable all interrupts. */
		XSpiPs_WriteReg((&SpiInstance)->Config.BaseAddress, XSPIPS_IDR_OFFSET, 0x7F);

		/* Enable the device, but don't actually transmit anything until synchronized. */
		XSpiPs_Enable((&SpiInstance));

		/* Enable the specific interrupts we care about. */
		XSpiPs_WriteReg((&SpiInstance)->Config.BaseAddress, XSPIPS_IER_OFFSET,
				( XSPIPS_IXR_RXNEMPTY_MASK
				| XSPIPS_IXR_MODF_MASK
				| XSPIPS_IXR_RXOVR_MASK ));
	}
	else if (SPI_LINK_MSG_SIZE == s_rx_fifo_threshold)
	{
		/* Calculate and append CRC to message. */
		u16 crc = crc16message(&s_tx_data[0], SPI_LINK_MSG_SIZE_NO_CRC);
		s_tx_data[SPI_LINK_MSG_OFFSET_CRC_MSB] = (u8)(crc >> 8);
		s_tx_data[SPI_LINK_MSG_OFFSET_CRC_LSB] = (u8)(crc & 0xff);

		/* Write the message bytes to the TX FIFO. */
		for (int index = 0; index < length; index++)
		{
			SpiPs_SendByte(SpiInstance.Config.BaseAddress, *tx_data++);
		}
	}
	else
	{
		/* Don't write anything to TX FIFO until we are synchronized. */
	}

	return SPI_LINK_OK;
}

/*****************************************************************************/
static spi_link_status_t SpiPsReceiveCtrlMsg(spi_link_msg_handle_t msg)
{
	spi_link_status_t result = SPI_LINK_OK;

	return result;
}

/*****************************************************************************/
static void SpiPsInterruptHandler(XSpiPs *InstancePtr)
{
	spi_link_status_t result;
	XSpiPs *SpiPtr = InstancePtr;
	u32 IntrStatus;
	volatile u8 data;
	int report = 0;
	int resync = 0;

	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(SpiPtr->IsReady == XIL_COMPONENT_IS_READY);

	/*
	 * Immediately clear the interrupts in case the ISR causes another
	 * interrupt to be generated. If we clear at the end of the ISR,
	 * we may miss newly generated interrupts.
	 */
	IntrStatus = XSpiPs_ReadReg(SpiPtr->Config.BaseAddress, XSPIPS_SR_OFFSET);
	XSpiPs_WriteReg(SpiPtr->Config.BaseAddress, XSPIPS_SR_OFFSET, XSPIPS_IXR_WR_TO_CLR_MASK);
	if (IntrStatus & XSPIPS_IXR_RXNEMPTY_MASK)
	{
		result = SPI_LINK_OK;
	}
	else
	{
		resync = 1;
		result = SPI_LINK_FAILED;
		if (SPI_LINK_MSG_SIZE == s_rx_fifo_threshold)
		{
			report = 1;
		}
	}

	if (SPI_LINK_OK == result)
	{
		if (SPI_LINK_MSG_SIZE == s_rx_fifo_threshold)
		{
			report = 1;

			/* Read the received data from the FIFO */
			for (int index = 0; index < s_length; index++)
			{
				data = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
				s_rx_data[index] = data;
			}

			if ((s_rx_data[SPI_LINK_MSG_OFFSET_SOF1] != SPI_LINK_MSG_SOF1) ||
				(s_rx_data[SPI_LINK_MSG_OFFSET_SOF2] != SPI_LINK_MSG_SOF2))
			{
				/* Bad Start of Frame, we lost frame synchronization. */
				result = SPI_LINK_MSG_ERROR;
				resync = 1;
			}
			else
			{
				/* Verify message integrity with CRC. */
				u16 crc = crc16message(&s_rx_data[0], SPI_LINK_MSG_SIZE_NO_CRC);
				if ((s_rx_data[SPI_LINK_MSG_OFFSET_CRC_MSB] != (u8)(crc >> 8)) ||
					(s_rx_data[SPI_LINK_MSG_OFFSET_CRC_LSB] != (u8)(crc & 0xff)))
				{
					/* CRC failed. Assume we lost frame synchronization. */
					result = SPI_LINK_MSG_ERROR;
					resync = 1;
				}
				else
				{
					/* All is well. */
					xfer_count++;
				}
			}
		}
		else
		{
			/* We are at some point in the synchronization process. */
			for (int index = 0; index < s_rx_fifo_threshold; index++)
			{
				data = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
				if (s_sync_index > SPI_LINK_MSG_OFFSET_SOF2)
				{
					s_rx_data[s_sync_index++] = data;
				}
				else if ((s_sync_index == SPI_LINK_MSG_OFFSET_SOF1) && (data == SPI_LINK_MSG_SOF1))
				{
					s_rx_data[SPI_LINK_MSG_OFFSET_SOF1] = data;
					s_sync_index++;
				}
				else if ((s_sync_index == SPI_LINK_MSG_OFFSET_SOF2) && (data == SPI_LINK_MSG_SOF2))
				{
					s_rx_data[SPI_LINK_MSG_OFFSET_SOF2] = data;
					s_sync_index++;
				}
			}

			if (s_sync_index == SPI_LINK_MSG_SIZE)
			{
				/* Full message received. Verify synchronization with CRC. */
				u16 crc = crc16message(&s_rx_data[0], SPI_LINK_MSG_SIZE_NO_CRC);
				if ((s_rx_data[SPI_LINK_MSG_OFFSET_CRC_MSB] == (u8)(crc >> 8)) &&
					(s_rx_data[SPI_LINK_MSG_OFFSET_CRC_LSB] == (u8)(crc & 0xff)))
				{
					/* We appear to be synchronized! Happy day! */
					s_rx_fifo_threshold = SPI_LINK_MSG_SIZE;
					XSpiPs_SetRXWatermark((&SpiInstance), s_rx_fifo_threshold);
					report = 1;

					/* We still report failure, because we haven't sent anything yet. */
					result = SPI_LINK_FAILED;
				}
				else
				{
					/* Synchronization failed. */
					result = SPI_LINK_FAILED;
					resync = 1;
				}
			}
			else if (s_sync_index > SPI_LINK_MSG_OFFSET_SOF2)
			{
				/* Reset RX FIFO threshold for the rest of the prospective message. */
				s_rx_fifo_threshold = SPI_LINK_MSG_SIZE - s_sync_index;
				XSpiPs_SetRXWatermark((&SpiInstance), s_rx_fifo_threshold);
			}
		}
	}

	if (resync)
	{
		XSpiPs_Disable((&SpiInstance));

		/* Flush the FIFO, and re-synchronize. */
		for (int index = 0; index < XSPIPS_FIFO_DEPTH; index++)
		{
			data = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
		}

		s_sync_index = 0;
		s_rx_fifo_threshold = SYNCING_RX_FIFO_THRESHOLD;
		XSpiPs_SetRXWatermark((&SpiInstance), s_rx_fifo_threshold);
		XSpiPs_WriteReg(SpiPtr->Config.BaseAddress, XSPIPS_SR_OFFSET, XSPIPS_IXR_WR_TO_CLR_MASK);
		XSpiPs_Enable((&SpiInstance));
	}

	if (report)
	{
		spi_link_transaction_result(result);
	}
}

/*****************************************************************************/
/**
*
* This function setups the interrupt system for an Spi device.
*
* @param	IntcInstancePtr is a pointer to the instance of the Intc device.
* @param	SpiInstancePtr is a pointer to the instance of the Spi device.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if not successful
*
* @note		None.
*
******************************************************************************/
static int SpiPsSetupIntrSystem(XScuGic *IntcInstancePtr,
			       XSpiPs *SpiInstancePtr, u16 SpiIntrId)
{
	int Status;

	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				IntcInstancePtr);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, SpiIntrId,
				(Xil_ExceptionHandler)SpiPsInterruptHandler,
				(void *)SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the Spi device.
	 */
	XScuGic_Enable(IntcInstancePtr, SpiIntrId);

	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts that occur for the Spi device.
*
* @param	IntcInstancePtr is the pointer to an INTC instance.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void SpiPsDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId)
{
	/*
	 * Disable the interrupt for the SPI device.
	 */
	XScuGic_Disable(IntcInstancePtr, SpiIntrId);

	/*
	 * Disconnect and disable the interrupt for the Spi device.
	 */
	XScuGic_Disconnect(IntcInstancePtr, SpiIntrId);
}

