#include "xparameters.h"	/* SDK generated parameters */
#include "xqspips.h"		/* QSPI device driver */
#include "xil_printf.h"

// this comes from the xparameters.h file
#define QSPI_DEVICE_ID		XPAR_XQSPIPS_0_DEVICE_ID


// JDEC PROM commands
#define WRITE_STATUS_CMD	0x01
#define WRITE_CMD			0x02
#define READ_CMD			0x03
#define WRITE_DISABLE_CMD	0x04
#define READ_STATUS_CMD		0x05
#define WRITE_ENABLE_CMD	0x06
#define FAST_READ_CMD		0x0B
#define DUAL_READ_CMD		0x3B
#define QUAD_READ_CMD		0x6B
#define BULK_ERASE_CMD		0xC7
#define	SEC_ERASE_CMD		0xD8
#define READ_ID_CMD			0x9F

// byte offsets for payloads
#define COMMAND_OFFSET		0 /* FLASH instruction */
#define ADDRESS_1_OFFSET	1 /* MSB byte of address to read or write */
#define ADDRESS_2_OFFSET	2 /* Middle byte of address to read or write */
#define ADDRESS_3_OFFSET	3 /* LSB byte of address to read or write */
#define DATA_OFFSET			4 /* Start of Data for Read/Write */

// dummy byte for extended reads
#define DUMMY_BYTE 0xFF
#define DUMMY_SIZE 0x01		  /* used for fast, dual, and quad reads */

// overhead on read commands
#define OVERHEAD_SIZE		4 /* extra bytes on a read due to command/address bytes */

// response sizes in bytes
#define RD_ID_SIZE			4 /* Read ID command + 3 bytes ID response */
#define BULK_ERASE_SIZE		1 /* Bulk Erase command size */
#define SEC_ERASE_SIZE		4 /* Sector Erase command + Sector address */

// this is the size of the sector on the PROM
// that is on the snickerdoodle.  if this were
// change, this value may need to be updated
#define SECTOR_SIZE		0x10000
#define PROM_SIZE_IN_BYTES (16*1024*1024)

// if this value shows up in the second to last
// word of the PROM, we know that the unique
// device_id has been written
#define MAGIC_NUMBER	0xDEADC0DE

// address is zero-based, so get 8 bytes from the end
#define MAGIC_NUMBER_ADDRESS (PROM_SIZE_IN_BYTES - 16) - 1

//
// undefine this to remove debug
//
#define DEBUG_PRINTF


// helper function for copying in words into byte
// arrays
void _copy_word_to_bytes(u8 *array, u32 word, int offset)
{
	array[offset + 0] = (word & 0xFF000000) >> 24;
	array[offset + 1] = (word & 0x00FF0000) >> 16;
	array[offset + 2] = (word & 0x0000FF00) >>  8;
	array[offset + 3] = (word & 0x000000FF) >>  0;
}

int _word_bytes_compare(u8 *array, u32 word, int offset)
{
	if ( array[offset + 0] == ((word & 0xFF000000) >> 24) &&
		 array[offset + 1] == ((word & 0x00FF0000) >> 16) &&
		 array[offset + 2] == ((word & 0x0000FF00) >>  8) &&
		 array[offset + 3] == ((word & 0x000000FF) >>  0) )
	{
		return 0x1;
	}

	return 0x0;
}

u32 _bytes_to_word(u8 *array, int offset)
{
	u32 word = (((u32)array[offset + 0]) << 24) +
		       (((u32)array[offset + 1]) << 16) +
		       (((u32)array[offset + 2]) <<  8) +
		       (((u32)array[offset + 3]) <<  0);

	return word;
}

//
// get flash device ID
//
int FlashReadID(XQspiPs *QspiPtr)
{
	int Status;
	u8 WriteBuffer[4];
	u8 ReadBuffer[4];

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Reading Flash ID ... ");
#endif


	// build up ID command with 3 dummy bytes
	WriteBuffer[COMMAND_OFFSET]   = READ_ID_CMD;
	WriteBuffer[ADDRESS_1_OFFSET] = DUMMY_BYTE;
	WriteBuffer[ADDRESS_2_OFFSET] = DUMMY_BYTE;
	WriteBuffer[ADDRESS_3_OFFSET] = DUMMY_BYTE;

	// send the commands
	Status = XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, ReadBuffer, RD_ID_SIZE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#ifdef DEBUG_PRINTF
	xil_printf("Done. FlashID = 0x%x 0x%x 0x%x\n\r", ReadBuffer[1], ReadBuffer[2], ReadBuffer[3]);
#endif


	return XST_SUCCESS;
}

//
// Erases sections of flash memory
//
void FlashErase(XQspiPs *QspiPtr, u32 sector_size, u32 Address, u32 ByteCount)
{
	u8 WriteBuffer[4];
	u8 WriteEnableCmd = { WRITE_ENABLE_CMD };
	u8 ReadStatusCmd[] = { READ_STATUS_CMD, DUMMY_BYTE };
	u8 FlashStatus[2];
	int Sector;

	// erase a sector at a time.
	for (Sector = 0; Sector < ((ByteCount / sector_size) + 1); Sector++) {

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Erasing sector at address 0x%08X ... ", Address);
#endif

		// write enable needs to be sent to the prom so that
		// the erase command actually dos something.
		XQspiPs_PolledTransfer(QspiPtr, &WriteEnableCmd, NULL,
					sizeof(WriteEnableCmd));

		// send the erase command with the correct address
		WriteBuffer[COMMAND_OFFSET]   = SEC_ERASE_CMD;
		WriteBuffer[ADDRESS_1_OFFSET] = (u8)(Address >> 16);
		WriteBuffer[ADDRESS_2_OFFSET] = (u8)(Address >> 8);
		WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

		// send the command
		XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, NULL,
					SEC_ERASE_SIZE);

		// poll the prom to see if the erase is complete.
		while (1) {

			// status of the erase is in the status register
			XQspiPs_PolledTransfer(QspiPtr, ReadStatusCmd,
						FlashStatus,
						sizeof(ReadStatusCmd));

			// if erase s complete, exit the loop
			// todo: implement timeout
			if ((FlashStatus[1] & 0x01) == 0) {
				break;
			}
		}

#ifdef DEBUG_PRINTF
	xil_printf("Done.\r\n");
#endif

		// increment the address by the sector size, since
		// we are doing sector-based erases.
		Address += sector_size;
	}
}

// read n bytes from an address
void FlashRead(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command, u8 *ReadBuffer)
{
	u8 WriteBuffer[4];

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Requesting %i bytes form addres 0x%08X ... ", ByteCount, Address);
#endif

	// build up the command
	WriteBuffer[COMMAND_OFFSET]   = Command;
	WriteBuffer[ADDRESS_1_OFFSET] = (u8)((Address & 0xFF0000) >> 16);
	WriteBuffer[ADDRESS_2_OFFSET] = (u8)((Address & 0xFF00) >> 8);
	WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

	if ((Command == FAST_READ_CMD) || (Command == DUAL_READ_CMD) ||
	    (Command == QUAD_READ_CMD)) {
		ByteCount += DUMMY_SIZE;
	}

	// read the defined number of bytes into the passed in buffer
	XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, ReadBuffer,
				ByteCount + OVERHEAD_SIZE);

#ifdef DEBUG_PRINTF
	xil_printf("Done.  %i bytes read.\r\n", ByteCount);
#endif

#ifdef DEBUG_PRINTF
	int i;
	xil_printf("[DEBUG  ] 0x%08X : ", Address);
	for(i=0;i<ByteCount+OVERHEAD_SIZE;i++)
	{
		xil_printf("%02X ", ReadBuffer[i]);
	}
	xil_printf("\r\n");
#endif
}

// write n bytes to an address
void FlashWrite(XQspiPs *QspiPtr, u32 Address, u32 ByteCount, u8 Command, u8 *WriteBuffer)
{
	u8 WriteEnableCmd = { WRITE_ENABLE_CMD };
	u8 ReadStatusCmd[] = { READ_STATUS_CMD, DUMMY_BYTE };
	u8 FlashStatus[2];

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Writing %i bytes to address 0x%08X ... ", ByteCount, Address);
#endif

	// send the write command so the data is commited to non-volatile
	XQspiPs_PolledTransfer(QspiPtr, &WriteEnableCmd, NULL,
				sizeof(WriteEnableCmd));


	// setup the write command with address
	WriteBuffer[COMMAND_OFFSET]   = Command;
	WriteBuffer[ADDRESS_1_OFFSET] = (u8)((Address & 0xFF0000) >> 16);
	WriteBuffer[ADDRESS_2_OFFSET] = (u8)((Address & 0xFF00) >> 8);
	WriteBuffer[ADDRESS_3_OFFSET] = (u8)(Address & 0xFF);

	// write the command to the part
	XQspiPs_PolledTransfer(QspiPtr, WriteBuffer, NULL,
				ByteCount + OVERHEAD_SIZE);

	// poll for the write to complete
	while (1) {

		// read the status register so we can check if the write is complete
		XQspiPs_PolledTransfer(QspiPtr, ReadStatusCmd, FlashStatus,
					sizeof(ReadStatusCmd));

		// if the write is complete, exit.
		// todo: add timeout
		if ((FlashStatus[1] & 0x01) == 0) {
			break;
		}
	}

#ifdef DEBUG_PRINTF
	xil_printf("Done.  %i bytes written.\r\n", ByteCount);
#endif

#ifdef DEBUG_PRINTF
	int i;
	xil_printf("[DEBUG  ] 0x%08X : ", Address);
	for(i=0;i<ByteCount+OVERHEAD_SIZE;i++)
	{
		xil_printf("%02X ", WriteBuffer[i]);
	}
	xil_printf("\r\n");
#endif
}

void write_snickerdoodle_device_id(XQspiPs *QspiPtr, u32 device_id)
{
	// we need to erase the entire sector before
	// we can write anything.  We're going to write
	// (2) 32 bit values to the end of the SPI PROM
	// which will allow us to know if a unique device
	// id has been set, and what that value is.

	// this is 4 bytes too big to handle the command add address
	u8 WriteBuffer[12] = { 0xFF, 0xFF, 0xFF, 0xFF,
					       0xFF, 0xFF, 0xFF, 0xFF,
						   0xFF, 0xFF, 0xFF, 0xFF };

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Writing Magic Number and Device ID to PROM.\r\n");
#endif

	// first, erase the last sector of the SPI PROM
	FlashErase(QspiPtr, SECTOR_SIZE, MAGIC_NUMBER_ADDRESS, 8);

	// pack the magic number and device_id into the write buffer
	// and a 4 byte offset to handle the command and address
	_copy_word_to_bytes(WriteBuffer, MAGIC_NUMBER, 4);
	_copy_word_to_bytes(WriteBuffer, device_id, 8);

	// write the data to the prom
	FlashWrite(QspiPtr, MAGIC_NUMBER_ADDRESS, 8, WRITE_CMD, WriteBuffer);

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Magic Number and Device ID write to PROM.\r\n");
#endif


}

int read_snickerdoodle_device_id(XQspiPs *QspiPtr, u32 *device_id)
{

	u8 ReadBuffer[12] = { 0xFF, 0xFF, 0xFF, 0xFF,
						  0xFF, 0xFF, 0xFF, 0xFF,
						  0xFF, 0xFF, 0xFF, 0xFF };

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Reading Magic Number and Device ID from PROM.\r\n");
#endif

	// read 8 bytes of magic number and device id
	FlashRead(QspiPtr, MAGIC_NUMBER_ADDRESS, 8, READ_CMD, ReadBuffer);

	// check at begining of data offset if magic number is correct
	if ( !_word_bytes_compare(ReadBuffer, MAGIC_NUMBER, 4) )
	{
#ifdef DEBUG_PRINTF
	xil_printf("[ERROR  ] Magic Number incorrect in PROM.  0x%08X != 0x%08X\r\n", MAGIC_NUMBER, _bytes_to_word(ReadBuffer, 4));
#endif
	}
	else
	{
		*device_id = _bytes_to_word(ReadBuffer, 8);
	}

#ifdef DEBUG_PRINTF
	xil_printf("[DEBUG  ] Reading Magic Number and Device ID from PROM.\r\n");
#endif

}

int init_spi(XQspiPs *QspiPtr, u16 QspiDeviceId)
{
	// need to create the structure that is used by
	// the low level spi driver to communicte with
	// the qspi hardware.

	int Status;
	XQspiPs_Config *QspiConfig;

#ifdef DEBUG_PRINTF
		xil_printf("[DEBUG  ] Initializing QSPI subsystem ... ");
#endif

	// get the loopup from the xparameters.h file
	QspiConfig = XQspiPs_LookupConfig(QspiDeviceId);
	if (NULL == QspiConfig) {
		return XST_FAILURE;
	}

	// init the device
	Status = XQspiPs_CfgInitialize(QspiPtr, QspiConfig,
					QspiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// make sure the hardware is actually there.
	Status = XQspiPs_SelfTest(QspiPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

#ifdef DEBUG_PRINTF
		xil_printf("Done.\r\n");
#endif
}

int main()
{
	XQspiPs QspiPtr;

	// this is the device id we'll be writing to the QSPI
	const u32 _device_id = 0xDEADBEEF;

	// this is where the read-back value will be stored.
	// we set it to a known incorrect value for init
	u32 device_id = 0xFFFFFFFF;

	// init the spi subsystem
	init_spi(&QspiPtr, QSPI_DEVICE_ID);

	// read the flash id for validation
	FlashReadID(&QspiPtr);

	// write magic number and unique id
	write_snickerdoodle_device_id(&QspiPtr, _device_id);

	// read it back to verify
	read_snickerdoodle_device_id(&QspiPtr, &device_id);

	if ( device_id != _device_id )
	{
		xil_printf("[ERROR  ] Device ID did not match on readback.  0x%08X != 0x%08X.\r\n", device_id, _device_id);
	}
	else
	{
		xil_printf("[INFO   ] Device ID written and verified successfull.\r\n");
	}

	return 0;
}
