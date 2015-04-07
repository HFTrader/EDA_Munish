/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xilisf_qspips_flash_polled_example.c
*
*
* This file contains a design example using the XILISF Library in
* interrupt mode with a serial FLASH device. This examples performs
* some transfers in Auto mode and Manual start mode, to illustrate the modes
* available.
* The hardware which this example runs on, must have a serial FLASH (Numonyx
* N25Q, Winbond W25Q, or Spansion S25FL) for it to run. This example has been
* tested with the Numonyx Serial Flash (N25Q128).
*
* @note
*
* None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who Date     Changes
* ----- --- -------- -----------------------------------------------
* 1.00  srt 06/20/12 First release
* 1.01  srt 04/26/13 Modified Erase function to perform Write Enable operation
*		     for each sector erase.
* 1.01  srt 08/28/13 Fixed the CR 731919, by setting the proper QSPI options.
*       ktk 10/25/13 Modified for use in Avnet Zynq SW SpeedWay 2013 using 
*                    Spansion S25FL128S on MicroZed SOM
*
*</pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xilisf_qspips_flash_polled.h"

/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that they
 * are initialized to zero each time the program runs. They could be local
 * but should at least be static so they are zeroed.
 */
static XScuGic IntcInstance;
static XQspiPs QspiInstance;
static XIsf Isf;

/*
 * The following variables are shared between non-interrupt processing and
 * interrupt processing such that they must be global.
 */
volatile int TransferInProgress;

/*
 * The following variable allows a test value to be added to the values that
 * are written to the FLASH such that unique values can be generated to
 * guarantee the writes to the FLASH were successful
 */
int Test = 5;

/*
 * The following variables are used to read and write to the eeprom and they
 * are global to avoid having large buffers on the stack
 */
u8 ReadBuffer[MAX_DATA + DATA_OFFSET + DUMMY_SIZE];
u8 WriteBuffer[PAGE_SIZE + DATA_OFFSET];
u8 IsfWriteBuffer[PAGE_SIZE + XISF_CMD_SEND_EXTRA_BYTES];

/*****************************************************************************/
/**
*
* This function returns a pointer to the ReadBuffer memory where data is valid
* following a read operation.  It should only need to be called once since
* this buffer location is fixed and should not change during the course of
* execution.
*
* @param	None.
*
* @return	int8u *
*
* @note
*
******************************************************************************/
int8u* GetFlashReadBuffer(void)
{
	return &ReadBuffer[DATA_OFFSET];
}

/*****************************************************************************/
/**
*
* This function returns a pointer to the WriteBuffer memory where data is
* stored prior to a write operation.  It should only need to be called once
* since this buffer location is fixed and should not change during the course
* of execution.
*
* @param	None.
*
* @return	int8u *
*
* @note
*
******************************************************************************/
int8u* GetFlashWriteBuffer(void)
{
	return &WriteBuffer[0];
}

/*****************************************************************************/
/**
*
* This function waits till the Spansion Serial Flash is ready to accept next
* command.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		This function reads the status register of the Serial Flash and
		waits till the WIP bit of the status register becomes 0.
*
******************************************************************************/
int IsfWaitForFlashNotBusy(void)
{
	int Status;
	u8 StatusReg;

	while(1) {

		/*
		 * Get the Status Register.
		 */
		Status = XIsf_GetStatus(&Isf, ReadBuffer);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Check if the flash is ready to accept the next command.
		 * If so break.
		 */
		StatusReg = ReadBuffer[BYTE2];
		if((StatusReg & XISF_SR_IS_READY_MASK) == 0) {
			break;
		}
	}

	return XST_SUCCESS;
}

/******************************************************************************
*
*
* This function erases the sectors in the  serial FLASH connected to the
* QSPI interface.
*
* @param	InstancePtr is a pointer to the XIsf component to use.
* @param	Address contains the address of the first sector which needs to
*		be erased.
* @param	ByteCount contains the total size to be erased.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
int FlashErase(u32 Address, u32 ByteCount)
{
	int Status;
	int Sector;

	/*
	 * If erase size is same as the total size of the flash, use bulk erase
	 * command
	 */
	if (ByteCount == (NUM_SECTORS * SECTOR_SIZE)) {
		WriteEnable();

		/*
		 * Perform the Bulk Erase operation.
		 */
		Status = XIsf_Erase(&Isf, XISF_BULK_ERASE, Address);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait till the Flash is not Busy.
		 */
		Status = IsfWaitForFlashNotBusy();
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}


	/*
	 * If the erase size is less than the total size of the flash, use
	 * sector erase command
	 */
	for (Sector = 0; Sector < ((ByteCount / SECTOR_SIZE) + 1); Sector++) {
		/*
		 * Write enable instruction has to be executed prior to
		 * any Write operation.
		 */
		WriteEnable();

		/*
		 * Perform the Sector Erase operation.
		 */
		Status = XIsf_Erase(&Isf, XISF_SECTOR_ERASE, Address);
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Wait till the Flash is not Busy.
		 */
		Status = IsfWaitForFlashNotBusy();
		if(Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		Address += SECTOR_SIZE;
	}
	return XST_SUCCESS;
}

/******************************************************************************
*
*
* This function writes to the  serial FLASH connected to the QSPI interface.
* The FLASH contains a 256 byte write buffer which can be filled and then a
* write is automatically performed by the device.  All the data put into the
* buffer must be in the same page of the device with page boundaries being on
* 256 byte boundaries.
*
* @param	InstancePtr is a pointer to the XIsf component to use.
* @param	Address contains the address to write data to in the FLASH.
* @param	ByteCount contains the number of bytes to write.
* @param	Command is the command used to write data to the flash.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
int FlashInit(void)
{
	int status;

	/*
	 * Initialize the Flash access in polled mode.
	 */
	status = QspiFlashPolledInit(&IntcInstance, &QspiInstance,
					  QSPI_DEVICE_ID, QSPI_INTR_ID);
	if (status != XST_SUCCESS) {
		xil_printf("QSPI FLASH Polling Example Test Failed\r\n");
		return XST_FAILURE;
	}

	return status;
}

/******************************************************************************
*
* This function reads from the serial FLASH connected to the
* QSPI interface.
*
* @param	InstancePtr is a pointer to the XIsf component to use.
* @param	Address contains the address to read data from in the FLASH.
* @param	ByteCount contains the number of bytes to read.
* @param	Command is the command used to read data from the flash.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
int FlashRead(u32 Address, u32 ByteCount, u8 Command)
{
	XIsf_ReadParam ReadParam;
	int Status;

	/*
	 * Set the
	 * - Address in the Serial Flash where the data is to be read from.
	 * - Number of bytes to be read from the Serial Flash.
	 * - Read Buffer to which the data is to be read.
	 */
	ReadParam.Address = Address;
	ReadParam.NumBytes = ByteCount;
	ReadParam.ReadPtr = ReadBuffer;

	/*
	 * Perform the Read operation.
	 */
	Status = XIsf_Read(&Isf, Command, (void*) &ReadParam);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}


/******************************************************************************
*
*
* This function writes to the  serial FLASH connected to the QSPI interface.
* The FLASH contains a 256 byte write buffer which can be filled and then a
* write is automatically performed by the device.  All the data put into the
* buffer must be in the same page of the device with page boundaries being on
* 256 byte boundaries.
*
* @param	InstancePtr is a pointer to the XIsf component to use.
* @param	Address contains the address to write data to in the FLASH.
* @param	ByteCount contains the number of bytes to write.
* @param	Command is the command used to write data to the flash.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
int FlashWrite(u32 Address, u32 ByteCount, u8 Command)
{
	XIsf_WriteParam WriteParam;

	int Status;

	WriteEnable();

	WriteParam.Address = Address;
	WriteParam.NumBytes = ByteCount;
	WriteParam.WritePtr = WriteBuffer;

	/*
	 * Perform the Write operation.
	 */
	Status = XIsf_Write(&Isf, Command, (void*) &WriteParam);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the Flash is not Busy.
	 */
	Status = IsfWaitForFlashNotBusy();
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/*****************************************************************************
*
* The purpose of this function is to illustrate how to use the XQspiPs
* device driver in polled mode. This function enables data writes and reads
* from a serial FLASH.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
* If the device slave select is not correct and the device is not responding
* on bus it will read a status of 0xFF for the status register as the bus is
* pulled up.
*
*****************************************************************************/
int QspiFlashPolledInit(XScuGic *IntcInstancePtr, XQspiPs *QspiInstancePtr,
			 u16 QspiDeviceId, u16 QspiIntrId)
{
	int Status;

	XQspiPs_Config *ConfigPtr;      /* Pointer to Configuration ROM data */
	u32 Options;

	/*
	* Lookup the device configuration in the temporary CROM table. Use this
	* configuration info down below when initializing this component.
	*/
	ConfigPtr = XQspiPs_LookupConfig(QspiDeviceId);
	if (ConfigPtr == NULL) {
			return XST_DEVICE_NOT_FOUND;
	}

    Status = XQspiPs_CfgInitialize(QspiInstancePtr, ConfigPtr,
                                   ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the QSPI options
	 */
	Options = XQSPIPS_FORCE_SSELECT_OPTION |
			XQSPIPS_MANUAL_START_OPTION |
			XQSPIPS_HOLD_B_DRIVE_OPTION;
    Status = XIsf_SetSpiConfiguration(&Isf, QspiInstancePtr, Options,
                                      XISF_SPI_PRESCALER);
    if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    /* Initialize the XILISF Library */
    Status = XIsf_Initialize(&Isf, QspiInstancePtr, FLASH_QSPI_SELECT,
                             IsfWriteBuffer);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function performs the write enable operation.
*
* @param	None.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
*
******************************************************************************/
int WriteEnable(void)
{
	int Status;

	/*
	 * Perform the Write Enable operation.
	 */
	Status = XIsf_WriteEnable(&Isf, XISF_WRITE_ENABLE);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the Flash is not Busy.
	 */
	Status = IsfWaitForFlashNotBusy();
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
