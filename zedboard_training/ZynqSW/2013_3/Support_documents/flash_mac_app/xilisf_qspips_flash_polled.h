//----------------------------------------------------------------------------
//      _____
//     *     *
//    *____   *____
//   * *===*   *==*
//  *___*===*___**  AVNET
//       *======*
//        *====*
//----------------------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
//
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2013 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------------------
//
// Create Date:         Oct 25, 2013
// Design Name:         MAC Address Flash Example
// Module Name:         xilsf_qspips_flash_polled.h
// Project Name:        Zynq Software SpeedWay
// Target Devices:      Zynq-7000
// Hardware Boards:     MicroZed/ZedBoard
//
// Tool versions:       Vivado/SDK 2013.3
//
// Description:         Zed MAC Address Flash Example
//
// Dependencies:
//
// Revision:            Oct 25, 2013: 1.00 Initial version
//
//----------------------------------------------------------------------------


/***************************** Include Files *********************************/

#include "types.h"
#include "xparameters.h"	/* EDK generated parameters */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xil_printf.h"
#include <xilisf.h>             /* Serial Flash Library header file */

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define QSPI_DEVICE_ID		XPAR_XQSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define QSPI_INTR_ID		XPAR_XQSPIPS_0_INTR

/*
 * The following constants define the offsets within a FlashBuffer data
 * type for each kind of data.  Note that the read data offset is not the
 * same as the write data because the QSPI driver is designed to allow full
 * duplex transfers such that the number of bytes received is the number
 * sent and received.
 */
#define DATA_OFFSET		4 /* Start of Data for Read/Write */
#define DUMMY_OFFSET		4 /* Dummy byte offset for fast, dual and quad
				     reads */
#define DUMMY_SIZE		1 /* Number of dummy bytes for fast, dual and
				     quad reads */

/*
 * The following constants specify the page size, sector size, and number of
 * pages and sectors for the FLASH.  The page size specifies a max number of
 * bytes that can be written to the FLASH with a single transfer.
 */
#define SECTOR_SIZE		0x10000
#define NUM_SECTORS		0x100
#define NUM_PAGES		0x10000
#define PAGE_SIZE		256

/*
 * Number of flash pages to be written.
 */
#define PAGE_COUNT		1

/*
 * The following constants specify the max amount of data and the size of the
 * the buffer required to hold the data and overhead to transfer the data to
 * and from the FLASH.
 */
#define MAX_DATA		PAGE_COUNT * PAGE_SIZE

/*
 * The following constant defines the slave select signal that is used to
 * to select the FLASH device on the QSPI bus, this signal is typically
 * connected to the chip select of the device
 */
#define FLASH_QSPI_SELECT	0x00


/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

int FlashErase(u32 Address, u32 ByteCount);
int FlashInit(void);
int FlashRead(u32 Address, u32 ByteCount, u8 Command);
int FlashWrite(u32 Address, u32 ByteCount, u8 Command);
int8u* GetFlashReadBuffer(void);
int8u* GetFlashWriteBuffer(void);
int QspiFlashPolledInit(XScuGic *IntcInstancePtr, XQspiPs *QspiInstancePtr,
			 u16 QspiDeviceId, u16 QspiIntrId);
int WriteEnable(void);
