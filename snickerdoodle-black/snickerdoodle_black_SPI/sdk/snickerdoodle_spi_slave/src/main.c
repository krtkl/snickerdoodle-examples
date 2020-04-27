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
#include "xil_exception.h"
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
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID		XPAR_XSPIPS_1_INTR

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

#define SpiPs_RecvByte(BaseAddress) \
		(u8)XSpiPs_In32((BaseAddress) + XSPIPS_RXD_OFFSET)

#define SpiPs_SendByte(BaseAddress, Data) \
		XSpiPs_Out32((BaseAddress) + XSPIPS_TXD_OFFSET, (Data))

/************************** Function Prototypes ******************************/

static spi_link_status_t SpiSlaveTxRx(u8 *tx_data, u8 *rx_data, size_t length);

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
u8 ReadBuffer[SPI_LINK_MSG_SIZE];

volatile int rx_counter = 0;

u8 *s_tx_data;
u8 *s_rx_data;
size_t s_length;

u32 xfer_count = 0;

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

	Status = XSpiPs_CfgInitialize((&SpiInstance), SpiConfig,
					SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the Spi device to the interrupt subsystem such that
	 * interrupts can occur. This function is application specific
	 */
	Status = SpiPsSetupIntrSystem(IntcInstancePtr, SpiInstancePtr,
				     SpiIntrId);
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

	/*
	 * Set the Rx FIFO Threshold to the fixed spi_link message size
	 */
	XSpiPs_SetRXWatermark((&SpiInstance), SPI_LINK_MSG_SIZE);

	/*
	 * Enable the device.
	 */
	XSpiPs_Enable((&SpiInstance));

	spi_link_init();
	spi_link_register_server(&SpiSlaveTxRx, &crc16message);
	spi_link_start();

	for ( ;; )
	{
#if 0
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
#endif
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
	int index = 0;
	assert(length == SPI_LINK_MSG_SIZE);

	s_tx_data = tx_data;
	s_rx_data = rx_data;
	s_length = length;

	/*
	 * Clear all interrupts.
	 */
	XSpiPs_WriteReg((&SpiInstance)->Config.BaseAddress, XSPIPS_SR_OFFSET,
			XSPIPS_IXR_WR_TO_CLR_MASK);

	/*
	 * Write the message bytes to the TX FIFO.
	 */
	while ((index < length) && (index < XSPIPS_FIFO_DEPTH))
	{
		SpiPs_SendByte(SpiInstance.Config.BaseAddress, *tx_data++);
		index++;
	}

	/*
	 * Enable interrupts (connecting to the interrupt controller and
	 * enabling interrupts should have been done by the caller).
	 */
	XSpiPs_WriteReg((&SpiInstance)->Config.BaseAddress,
			XSPIPS_IER_OFFSET,
			( XSPIPS_IXR_RXNEMPTY_MASK
			| XSPIPS_IXR_TXUF_MASK
			| XSPIPS_IXR_MODF_MASK
			| XSPIPS_IXR_RXOVR_MASK ));

	return SPI_LINK_OK;
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

/*****************************************************************************/
static void SpiPsInterruptHandler(XSpiPs *InstancePtr)
{
	spi_link_status_t result;
	XSpiPs *SpiPtr = InstancePtr;
	u32 IntrStatus;

	Xil_AssertVoid(InstancePtr != NULL);
	Xil_AssertVoid(SpiPtr->IsReady == XIL_COMPONENT_IS_READY);

	/*
	 * Immediately clear the interrupts in case the ISR causes another
	 * interrupt to be generated. If we clear at the end of the ISR,
	 * we may miss newly generated interrupts.
	 */
	IntrStatus = XSpiPs_ReadReg(SpiPtr->Config.BaseAddress, XSPIPS_SR_OFFSET);
	XSpiPs_WriteReg(SpiPtr->Config.BaseAddress, XSPIPS_SR_OFFSET,
			(IntrStatus & XSPIPS_IXR_WR_TO_CLR_MASK));

	if ((u32)XSPIPS_IXR_RXNEMPTY_MASK == (u32)(IntrStatus & XSPIPS_IXR_RXNEMPTY_MASK))
	{
		result = SPI_LINK_OK;
		/*
		 * Read the received data from the FIFO
		 */
		volatile u8 data;
		for (int index = 0; index < s_length; index++)
		{
			data = SpiPs_RecvByte(SpiInstance.Config.BaseAddress);
			if (s_rx_data)
			{
				s_rx_data[index] = data;
			}
		}
	}
	else
	{
		result = SPI_LINK_FAILED;
	}

	if (s_rx_data)
	{
		xfer_count++;
		spi_link_transaction_result(result);
	}
}
