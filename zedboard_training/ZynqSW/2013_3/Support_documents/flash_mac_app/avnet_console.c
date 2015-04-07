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
//                     Copyright(c) 2011 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------------------
//
// Create Date:         Nov 18, 2011
// Design Name:         Avnet Console
// Module Name:         avnet_console.c
// Project Name:        Avnet Console
//
// Tool versions:       Vivado/SDK 2013.3
//
// Description:         Text-based console for
//                      Zed MAC Address Flash Example
//
// Dependencies:        
//
// Revision:            Nov 18, 2010: 1.01 Initial version
//                      May 23, 2013: 1.02 Updated for Zed Display Kit
//                      May 23, 2013: 1.03 Updated for Zynq SW SpeedWay 2013
//
//----------------------------------------------------------------------------


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

// Located in: microblaze_0/include/
#include "xbasic_types.h"
#include "xutil.h"
#include "xparameters.h"
#include "xstatus.h"

#include "sleep.h"

#if defined(LINUX_CODE)
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#endif

#include "flash_mac.h"
#include "avnet_console.h"
#include "avnet_console_scanput.h"
#include "avnet_console_serial.h"
#include "avnet_console_tokenize.h"
extern flash_mac_t flash_mac;

int avnet_console_get_line_poll(avnet_console_t *pConsole);

void avnet_console_banner_command(avnet_console_t *pConsole);
void avnet_console_calibrate_command(avnet_console_t *pConsole);
void avnet_console_delay_command(avnet_console_t *pConsole, int cargc, char ** cargv);
void avnet_console_help(avnet_console_t *pConsole);
void avnet_console_mac_command(avnet_console_t *pConsole, int cargc, char ** cargv);
void avnet_console_verbose_command(avnet_console_t *pConsole, int cargc, char ** cargv);

void avnet_console_init(avnet_console_t *pConsole)
{
    int index;

    pConsole->inchar = ' ';
    pConsole->inline_count = 0;
    pConsole->verbose = 0;
    pConsole->echo = 1;
    pConsole->run_once = 0;
    pConsole->quit = 0;

    // Clear out the command input buffer.
    for (index = 0; index < MAX_LINE_LENGTH; index++)
    {
        pConsole->inline_buffer[index] = 0;
    }

    // Initialize the application instance to the one specified by the caller.
    flash_mac.bVerbose = pConsole->verbose;

    // Flush the UART receive buffer.
    avnet_console_serial_flush();

    return;
}

void avnet_console_process(avnet_console_t *pConsole)
{
    int  cargc;
    char * cargv[MAX_ARGC];
    int len;

    if (pConsole->echo)
    {
        pConsole->io_hprintf(pConsole->io_handle, "%c", pConsole->inchar);
    }
   
#if 1
    // Check if complete line has been received ...
    if (avnet_console_get_line_poll(pConsole) == -1)
    {
        return;
    }

    if (pConsole->run_once == 0)
    {
        // Print the banner the first time the console process is run through.
        avnet_console_banner_command(pConsole);

        // Print the first prompt.
        pConsole->io_hprintf(pConsole->io_handle, "\n\r%s>", AVNET_CONSOLE_PROMPT);

        pConsole->inline_buffer[0] = 0;
        pConsole->inline_count = 0;
        pConsole->run_once = 1;
        return;
    }

    // Pre-process command line
    len = strlen(pConsole->inline_buffer);
    if (pConsole->inline_buffer[len-1] == '\n')
    {
        pConsole->inline_buffer[len-1] = 0;
    }
    tokenize(pConsole->inline_buffer, &cargc, cargv, MAX_ARGC);

    // Process command line
    if (cargc == 0)
    {
        pConsole->io_hprintf(pConsole->io_handle, "\n\r%s>", AVNET_CONSOLE_PROMPT);
        return;
    }
    else if (pConsole->verbose)
    {
        pConsole->io_hprintf(pConsole->io_handle, "\t");

        for (len = 0; len < cargc; len++)
        {
            pConsole->io_hprintf(pConsole->io_handle, "%s ", cargv[len]);
        }

        pConsole->io_hprintf(pConsole->io_handle, "\n\r");
    }

    if (cargv[0][0] == '#')
    {
        // comment, ignore line ...
    }

    //
    // General Commands
    //
    else if (!strcmp(cargv[0],"banner"))
    {
        avnet_console_banner_command(pConsole);
    }
    else if (!strcmp(cargv[0],"delay"))
    {
        avnet_console_delay_command(pConsole, cargc, cargv);
    }
    else if (!strcmp(cargv[0],"help"))
	{
		avnet_console_help(pConsole);
	}
    else if ( !strcmp(cargv[0],"mac") )
    {
        avnet_console_mac_command(pConsole, cargc, cargv);
    }
    else if (!strcmp(cargv[0],"quit"))
	{
		pConsole->quit = 1;
	}
	else if (!strcmp(cargv[0],"verbose"))
	{
		avnet_console_verbose_command(pConsole, cargc, cargv);
	}
    else
    {
        pConsole->io_hprintf(pConsole->io_handle, "\tUnknown command : %s\n\r", cargv[0]);
    }
    pConsole->io_hprintf(pConsole->io_handle, "\n\r%s>", AVNET_CONSOLE_PROMPT);

#else
    // Get input character from xxx_session
    inchar = pConsole->inchar;
   
    //pConsole->io_hprintf( pConsole->io_handle, "%c (0x%02X)\n\r",inchar,inchar);

    switch (inchar)
    {
        case '?':
        {
            avnet_console_help(p);
            break;
        }
        default:
        {
            break;
        }
    }

    pConsole->io_hprintf( pConsole->io_handle, "\n\r>");
#endif

    return;
}

void avnet_console_banner_command(avnet_console_t *pConsole)
{
    pConsole->io_hprintf( pConsole->io_handle, "\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "------------------------------------------------------------------------------\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                 ..    `+/                                                  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|             - `         -+o+                                               |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|           ``              NNm                                              |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|          /                `oNm                                             |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|         s                   `:+o/:                 --.:.     `++o/         |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|        `N                      ```:++-  -////-.  -+``           `oy+.      |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|        .N.           `/+ymmmmmdmy+//.   ```````                   `hm/     |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|         mmdo/-..-//hdmNNNNNNNNNNNNNNmddds/:                        `NN-    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|         `NNNNmmmmNNNNNNNNNNNNNNNNNNNNNNNNNNd                       `NNm    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|          .smNNNNNNNNNNNNNNhssssssshmNNNNNNNy                      .dNNN`   |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|            .sshNNNNNNhss/.`       `..-oydso                      /mNNNN.   |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|               `......`              :.+-`                     :odNNNNNN    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                :./. .``::ohhhhhhhhhy+:::::+hhhNNNNNNNN.    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|          `-` .-::.::::--::. `+-.` ::/hdNNNNNNNNNNNNNNNNNNNNNNNNNNNNNh+     |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|       - /`.       .---..--`  ::+hhNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNyy`      |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|     .:.                   :ohNNNNNNNNNNNNNNNNdhyyyydNNNNNNNNNNmyy-         |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|    :`                   .hNNNNNNNNNNNNNdy+---``    .----:/-----            |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|   o-                    dNNNNNNNNNhh+--.                                   |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|  /o                     +hNNNNdh+-`                                        |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|  N-                       :shNh--`                  .-//oooso/--`          |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|  Nh                  `````   -::+o+sy:--``   `.--o+--::.```.:::ooy+-       |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|  oNy.          .:yyyyhdddhyyy+..   .::://::--.-::.               :yNy.     |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|   hNNy+-....+yyNNNNNNNNNNNNNNNNmyy/..`                             :NN-    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|    /NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNdy:`                           oNNy   |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|     :+mNNNNNNNNNNNNNdds:::::/hdmNNNNNNNNys.                          NNNs  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|       .//yddddddy///           -//+ddNNNNNNo                         NNNN  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                      :/ddNNNo                       -NNNN  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                         `/dNN`                     `NNNNN  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                            NNm.                  `+NNNNNN  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                            oNNNs.`             `ohNNNNNNs  |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                             oNNNNdo-````````-ohNNNNNNNmy   |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                              +mNNNNNNNNNNNNNNNNNNNNNNm-    |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                                /mNNNNNNNNNNNNNNNNNNm+      |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                                  ++dmmNNNNNNNNmmd++        |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|                                                      .++++++++.            |\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "------------------------------------------------------------------------------\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "|-                      Zed MAC Address Flash Example                       -|\n\r");
    pConsole->io_hprintf( pConsole->io_handle, "------------------------------------------------------------------------------\n\r");

    return;
}

void avnet_console_help(avnet_console_t *pConsole)
{
    pConsole->io_hprintf(pConsole->io_handle, "\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "------------------------------------------------------------------------------\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "--                         Text-based Console for                           --\n\r" );
    pConsole->io_hprintf(pConsole->io_handle, "--                      Zed MAC Address Flash Example                       --\n\r" );
    pConsole->io_hprintf(pConsole->io_handle, "------------------------------------------------------------------------------\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "General Commands:\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\tdelay      Wait for specified delay\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\thelp       Print the Top-Level menu Help Screen \n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\tmac        Write or read a MAC address from Flash\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\tquit       Exit console (if applicable)\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\tverbose    Toggle verbosity on/off\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "\n\r");
    pConsole->io_hprintf(pConsole->io_handle, "------------------------------------------------------------------------------\n\r");

    return;
}

int avnet_console_get_line_poll(avnet_console_t *pConsole)
{
    int buffer_index;
    char character_copy = 0;
    u8 DataBuffer[MAX_LINE_LENGTH];
    unsigned int received_char_count = 0;

    // New characters come in one at a time ...
    DataBuffer[0] = (u8)pConsole->inchar;
    received_char_count = 1;

    for (buffer_index = 0; buffer_index < received_char_count; buffer_index++)
    {
        // Make sure that the line length has not been reached.
        if (pConsole->inline_count == (MAX_LINE_LENGTH-3))
        {
            // Force a line feed character, this is the end of the
            // line that is being polled for.
            pConsole->io_hprintf( pConsole->io_handle, "\r\n" );
            // Null terminate the string so that it is still a
            // valid string.
            pConsole->inline_buffer[pConsole->inline_count] = 0;
            // Reset the total character count in preparation for the
            // next line yet to be received.
            pConsole->inline_count = 0;
            // Return the total count of characters in the current line.
            return MAX_LINE_LENGTH;
        }

        // Get the next character that was received from the UART
        // device.
        character_copy = (char) DataBuffer[buffer_index];

        // Determine what action to take with the next received
        // character.
#if defined(LINUX_CODE)	  
        if (character_copy == '\r')
#else
        if (character_copy == '\n')
#endif	  
        {
            // Ignore it.
            ;
        }
#if defined(LINUX_CODE)	  
        else if (character_copy == '\n')
#else
        else if (character_copy == '\r')
#endif	  
        {
            // A line feed character has been encountered, this is the
            // end of the line that is being polled for.
            pConsole->io_hprintf( pConsole->io_handle, "\r\n" );
            // Null terminate the string so that it is still a
            // valid string.
            pConsole->inline_buffer[pConsole->inline_count] = 0;
            // Determine the number of characters that are in the line.
            received_char_count = pConsole->inline_count;
            // Reset the total character count in preparation for the
            // next line yet to be received.
            pConsole->inline_count = 0;
            // Return the total count of characters in the current line.
            return received_char_count;
        }
        // Check for backspace or delete key.
        else if ((character_copy == '\b') || (character_copy == 0x7F))
        {
            if (pConsole->inline_count > 0)
            {
                pConsole->io_hprintf( pConsole->io_handle, " \b" );
                pConsole->inline_count--;
                pConsole->inline_buffer[pConsole->inline_count] = 0;
            }
            else
            {
                // User backspaced into prompt, fix the prompt and reposition
                // the cursor.
                pConsole->io_hprintf( pConsole->io_handle, ">" );
            }
        }
        // Check for escape key or control-U.
        else if ((character_copy == 0x1b) || (character_copy == 0x15))
        {
            while (pConsole->inline_count > 0)
            {
                pConsole->io_hprintf( pConsole->io_handle, " \b" );
                pConsole->inline_count--;
                pConsole->inline_buffer[pConsole->inline_count] = 0;
            }
        }
        else
        {
            // Echo character back to the user.
            pConsole->inline_buffer[pConsole->inline_count] = character_copy;
            pConsole->inline_count++;
        }
    }

    return -1;
}

void avnet_console_delay_command(avnet_console_t *pConsole, int cargc, char ** cargv)
{
    Xuint32 delay;

    int bDispSyntax = 0;

    if (cargc > 1 && !strcmp(cargv[1],"help"))
    {
        bDispSyntax = 1;
    }
    else if (cargc < 2)
    {
        pConsole->io_hprintf(pConsole->io_handle, "\twaiting 1 sec\n\r");
        sleep(1);
    }
    else
    {
        scanhex(cargv[1], (unsigned*) &delay);
        if (cargc < 3)
        {
            pConsole->io_hprintf(pConsole->io_handle, "\twaiting %d sec\n\r", delay);
            sleep(delay);
        }
        else if (strcmp( cargv[2], "sec") == 0)
        {
            pConsole->io_hprintf( pConsole->io_handle, "\twaiting %d sec\n\r", delay );
            sleep(delay);
        }
        else if (strcmp( cargv[2], "msec") == 0)
        {
            pConsole->io_hprintf( pConsole->io_handle, "\twaiting %d msec\n\r", delay );
            usleep(1000*delay);
        }
        else if (strcmp( cargv[2], "usec") == 0)
        {
            pConsole->io_hprintf( pConsole->io_handle, "\twaiting %d usec\n\r", delay );
            usleep(delay);
        }
    }

    if (bDispSyntax)
    {
        pConsole->io_hprintf(pConsole->io_handle, "\tSyntax :\r\n");
        pConsole->io_hprintf(pConsole->io_handle, "\t\tdelay {#}         => Delay by specified number of seconds\r\n");
        pConsole->io_hprintf(pConsole->io_handle, "\t\tdelay {#} sec     => Delay by specified number of seconds\r\n");
        pConsole->io_hprintf(pConsole->io_handle, "\t\tdelay {#} msec    => Delay by specified number of milli-seconds\r\n");
        pConsole->io_hprintf(pConsole->io_handle, "\t\tdelay {#} usec    => Delay by specified number of micro-seconds\r\n");
    }
}

void avnet_console_mac_command(avnet_console_t *pConsole, int cargc, char ** cargv)
{
	int bDispSyntax = 0;

	if (cargc > 1 && !strcmp(cargv[1],"help"))
	{
		bDispSyntax = 1;
	}
	else if (cargc < 2)
	{
		pConsole->io_hprintf(pConsole->io_handle, "\tReading MAC Address from Flash... ");

		/* Read the MAC address value stored in Flash memory.*/
		if (flash_mac_read(&flash_mac) != XST_SUCCESS)
		{
			pConsole->io_hprintf(pConsole->io_handle, "FAILED");
		}
		else
		{
			pConsole->io_hprintf(pConsole->io_handle, "SUCCESS");
		}

		pConsole->io_hprintf(pConsole->io_handle, "\n\r");

		/* Print the MAC address data that was read from Flash memory. */
		pConsole->io_hprintf(pConsole->io_handle, "\tMAC Address: ");
		pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte1);
		pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte2);
		pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte3);
		pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte4);
		pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte5);
		pConsole->io_hprintf(pConsole->io_handle, "%02X", flash_mac.mac_address_byte6);
		pConsole->io_hprintf(pConsole->io_handle, "\n\r");
	}
	else
	{
		/* Capture the MAC address argument string. */
		flash_mac.mac_address_string = cargv[1];

		/* Parse the MAC address string into byte data. */
		if (flash_mac_parse(&flash_mac) != XST_SUCCESS)
		{
			pConsole->io_hprintf(pConsole->io_handle, "INVALID MAC Entered!");
			bDispSyntax = 1;
		}

		if ((cargc < 3) &&
			(bDispSyntax == 0))
		{
			pConsole->io_hprintf(pConsole->io_handle, "\tWriting new MAC Address to Flash... ");

			/* Write the MAC address value to Flash memory.*/
			if (flash_mac_write(&flash_mac) != XST_SUCCESS)
			{
				pConsole->io_hprintf(pConsole->io_handle, "FAILED");
			}
			else
			{
				pConsole->io_hprintf(pConsole->io_handle, "SUCCESS");
			}

			pConsole->io_hprintf(pConsole->io_handle, "\n\r");

			pConsole->io_hprintf(pConsole->io_handle, "\tReading MAC Address back from Flash... ");

			/* Read the MAC address value stored in Flash memory.*/
			if (flash_mac_read(&flash_mac) != XST_SUCCESS)
			{
				pConsole->io_hprintf(pConsole->io_handle, "FAILED");
			}
			else
			{
				pConsole->io_hprintf(pConsole->io_handle, "SUCCESS");
			}

			pConsole->io_hprintf(pConsole->io_handle, "\n\r");

			/* Print the MAC address data that was read from Flash memory. */
			pConsole->io_hprintf(pConsole->io_handle, "\tMAC Address: ");
			pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte1);
			pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte2);
			pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte3);
			pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte4);
			pConsole->io_hprintf(pConsole->io_handle, "%02X-", flash_mac.mac_address_byte5);
			pConsole->io_hprintf(pConsole->io_handle, "%02X", flash_mac.mac_address_byte6);
			pConsole->io_hprintf(pConsole->io_handle, "\n\r");
		}
	}

	if (bDispSyntax)
	{
		pConsole->io_hprintf(pConsole->io_handle, "Syntax :\r\n");
		pConsole->io_hprintf(pConsole->io_handle, "\tmac                     => Display MAC address value from Flash\r\n");
		pConsole->io_hprintf(pConsole->io_handle, "\tmac {XX-XX-XX-XX-XX-XX} => Write specified MAC address to Flash\r\n");
	}
}

void avnet_console_verbose_command(avnet_console_t *pConsole, int cargc, char ** cargv)
{
    int bDispSyntax = 0;

    if (cargc > 1 && !strcmp(cargv[1],"help"))
    {
        bDispSyntax = 1;
    }
    else if ( cargc > 1 )
    {
        if (!strcmp(cargv[1],"on") || !strcmp(cargv[1],"1"))
        {
            pConsole->verbose = 1;
            flash_mac.bVerbose = 1;
        }
        else
        {
            pConsole->verbose = 0;
            flash_mac.bVerbose = 0;
        }
    }

    pConsole->io_hprintf(pConsole->io_handle, "\tverbose = %s\n\r", pConsole->verbose ? "on" : "off");

    if (bDispSyntax)
    {
        pConsole->io_hprintf( pConsole->io_handle, "\tSyntax :\r\n" );
        pConsole->io_hprintf( pConsole->io_handle, "\t\tverbose on|1  => Enable verbose mode\r\n" );
        pConsole->io_hprintf( pConsole->io_handle, "\t\tverbose off   => Disable verbose mode\r\n" );
    }

    return;
}
