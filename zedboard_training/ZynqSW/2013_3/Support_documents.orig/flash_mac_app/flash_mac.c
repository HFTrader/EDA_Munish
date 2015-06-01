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
// Module Name:         flash_mac.c
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

#include "flash_mac.h"

#include "avnet_console.h"
#include "avnet_console_scanput.h"
#include "avnet_console_serial.h"
#include "platform.h"
#include "xparameters.h"	/* EDK generated parameters */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xil_printf.h"
#include "xilisf_qspips_flash_polled.h"

// This is the top level flash_mac instance.
flash_mac_t flash_mac;

int forcescanhex(char * hex_string, unsigned * pval)
{
    char * p;
    unsigned nybble;

    *pval = 0;
    if (!*hex_string)
        return 0;

    p = hex_string;

    for (; *p; p++) {
        if ((*p >= '0') && (*p <= '9'))
            nybble = *p - '0';
        else if ((*p >= 'a') && (*p <= 'f'))
            nybble = *p - 'a' + 0xa;
        else if ((*p >= 'A') && (*p <= 'F'))
            nybble = *p - 'A' + 0xa;
        else
            return 0;
        *pval <<= 4;
        *pval |= nybble;
    }

    return 1;
}

/*****************************************************************************/
/**
*
* Main function to call the QSPI Flash example.
*
* @param	None
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int main(void)
{
	int status;

	init_platform();

	// Initialized the global MAC address structure.
	flash_mac.bVerbose = 0;
	flash_mac.mac_address_byte1 = 0;
	flash_mac.mac_address_byte2 = 0;
	flash_mac.mac_address_byte3 = 0;
	flash_mac.mac_address_byte4 = 0;
	flash_mac.mac_address_byte5 = 0;
	flash_mac.mac_address_byte6 = 0;

	// Initialize Serial Console.
	start_avnet_console_serial_application();

	/*
	 * Initialize the xilisf library in order to gain access to the QSPI
	 * flash through the higher level API.
	 */
	status = FlashInit();
	if (status != XST_SUCCESS)
	{
		xil_printf("FLASH Init Failed\r\n");
	}

	while (1)
	{
		// Process user input from Serial Console.
		transfer_avnet_console_serial_data();
	}

	cleanup_platform();

	return status;
}

/*****************************************************************************
*
* This function parses a MAC address string into corresponding byte data.
*
* @param	flash_mac_t from which the MAC string will be parsed.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
*****************************************************************************/
int flash_mac_parse(flash_mac_t *pFlashMac)
{
	int status = XST_SUCCESS;
	char mac_octet[3];
	char* raw_mac_string = pFlashMac->mac_address_string;

	/* Get the first octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[0];
	mac_octet[1] = raw_mac_string[1];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte1);

	/* Check to see if an appropriate octet delimiter is where it is expected. */
	if ((raw_mac_string[2] != ':') &&
		(raw_mac_string[2] != '-'))
	{
		status = XST_FAILURE;
	}

	/* Get the second octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[3];
	mac_octet[1] = raw_mac_string[4];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte2);

	/* Check to see if an appropriate octet delimiter is where it is expected. */
	if ((raw_mac_string[5] != ':') &&
		(raw_mac_string[5] != '-'))
	{
		status = XST_FAILURE;
	}

	/* Get the third octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[6];
	mac_octet[1] = raw_mac_string[7];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte3);

	/* Check to see if an appropriate octet delimiter is where it is expected. */
	if ((raw_mac_string[8] != ':') &&
		(raw_mac_string[8] != '-'))
	{
		status = XST_FAILURE;
	}

	/* Get the fourth octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[9];
	mac_octet[1] = raw_mac_string[10];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte4);

	/* Check to see if an appropriate octet delimiter is where it is expected. */
	if ((raw_mac_string[11] != ':') &&
		(raw_mac_string[11] != '-'))
	{
		status = XST_FAILURE;
	}

	/* Get the fifth octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[12];
	mac_octet[1] = raw_mac_string[13];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte5);

	/* Check to see if an appropriate octet delimiter is where it is expected. */
	if ((raw_mac_string[14] != ':') &&
		(raw_mac_string[14] != '-'))
	{
		status = XST_FAILURE;
	}

	/* Get the sixth octet from the MAC address string. */
	mac_octet[0] = raw_mac_string[15];
	mac_octet[1] = raw_mac_string[16];
	mac_octet[2] = 0;
	forcescanhex(mac_octet, (unsigned*) &pFlashMac->mac_address_byte6);

	return status;
}

/*****************************************************************************
*
* This function reads a MAC address from a serial FLASH.
*
* @param	flash_mac_t in which the read MAC data will be stored.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
*****************************************************************************/
int flash_mac_read(flash_mac_t *pFlashMac)
{
	int index;
	int status;
	int8u* BufferPtr;

	/*
	 * Read the contents of the FLASH from CONFIG_DATA_ADDRESS space which
	 * contains the MAC address data, using Normal Read flash command.
	 */
	status = FlashRead(CONFIG_DATA_ADDRESS, MAX_DATA, XISF_READ);

	/*
	 * Setup a pointer to the start of the data that was read into the read
	 * buffer.
	 */
	BufferPtr = GetFlashReadBuffer();

	/* Get the MAC address data bytes from the read buffer. */
	index = 0;
	pFlashMac->mac_address_byte1 = BufferPtr[index++];
	pFlashMac->mac_address_byte2 = BufferPtr[index++];
	pFlashMac->mac_address_byte3 = BufferPtr[index++];
	pFlashMac->mac_address_byte4 = BufferPtr[index++];
	pFlashMac->mac_address_byte5 = BufferPtr[index++];
	pFlashMac->mac_address_byte6 = BufferPtr[index++];

	return status;
}

/*****************************************************************************
*
* This function reads a MAC address from a serial FLASH.
*
* @param	flash_mac_t from which the MAC data written to flash.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
*****************************************************************************/
int flash_mac_write(flash_mac_t *pFlashMac)
{
	int index;
	int status;
	int8u* BufferPtr;

	/*
	 * Setup a pointer to the start of the data buffer that will be written
	 * into the Flash during the write operation.
	 */
	BufferPtr = GetFlashWriteBuffer();

	/* Set the write buffer with the current MAC address data bytes. */
	index = 0;
	BufferPtr[index++] = pFlashMac->mac_address_byte1;
	BufferPtr[index++] = pFlashMac->mac_address_byte2;
	BufferPtr[index++] = pFlashMac->mac_address_byte3;
	BufferPtr[index++] = pFlashMac->mac_address_byte4;
	BufferPtr[index++] = pFlashMac->mac_address_byte5;
	BufferPtr[index++] = pFlashMac->mac_address_byte6;

	/* Erase the flash space which contains the MAC address data. Keep in
	 * mind that a whole entire page must be cleared so other data will
	 * get erased if it resides within the same Flash memory page. */
	FlashErase(CONFIG_DATA_ADDRESS, MAX_DATA);

	/*
	 * Write the current MAC address data into the contents of the FLASH
	 * starting at the CONFIG_DATA_ADDRESS space which contains the MAC
	 * address data, using the Normal Write flash command.
	 */
	status = FlashWrite(CONFIG_DATA_ADDRESS, PAGE_SIZE, XISF_WRITE);

	return status;
}
