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
// Module Name:         flash_mac.h
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

#ifndef __FLASH_MAC_H__
#define __FLASH_MAC_H__

#include "xparameters.h"
#include "types.h"

#include "sleep.h"

/*
 * Flash address to which data is to be written.
 */
#define CONFIG_DATA_ADDRESS	           0x00090000

/* Define how long the MAC address data is in bytes. */
#define MAC_BYTE_LENGTH                6

// This structure contains the context for the MAC address flash example.
struct struct_flash_mac_t
{
    int32u bVerbose;

    int8u	mac_address_byte1;
    int8u	mac_address_byte2;
    int8u	mac_address_byte3;
    int8u	mac_address_byte4;
    int8u	mac_address_byte5;
    int8u	mac_address_byte6;

    char * mac_address_string;
};
typedef struct struct_flash_mac_t flash_mac_t;

int flash_mac_read(flash_mac_t *pFlashMac);
int flash_mac_write(flash_mac_t *pFlashMac);
int flash_mac_parse(flash_mac_t *pFlashMac);

#endif // __FLASH_MAC_H__
