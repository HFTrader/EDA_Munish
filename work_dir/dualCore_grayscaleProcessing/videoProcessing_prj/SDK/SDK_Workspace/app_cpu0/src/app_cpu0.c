#if 1
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
// Create Date:         Oct 16, 2013
// Design Name:         Zed Standalone AMP Application
// Module Name:         app_cpu0.c
// Project Name:        Developing Zynq Software with Xilinx SDK SpeedWay
// Target Devices:      Zynq-7000
// Hardware Boards:     MicroZed + ZedBoard
//
// Tool versions:       Vivado/SDK 2013.3
//
// Description:         Simple Standalone AMP Application Demonstration based
//                      upon methods presented in Xilinx publication
//                      "XAPP1079 - Simple AMP: Bare-Metal System Running on
//                      Both Cortex-A9 Processors"
//
// Dependencies:
//
// Revision:            Oct 16, 2013: 1.00 Initial version
//
//----------------------------------------------------------------------------
/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * app_cpu0.c: Simple AMP application
 */

#include <stdio.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_exception.h"
#include "xpseudo_asm.h"

#define sev() __asm__("sev")
#define CPU1_MEM_BASE        0x06000000
#define CPU1_START_ADR       0xFFFFFFF0
#define JMPADDR              0xFFFFFF00

/* Define a data memory space which is visible to both CPUs, the OCM is ideal
 * since it is the lowest latency memory which is visible to both ARM cores.
 */
#define SHARED_OCM_MEMORY_BASE   0xFFFF0000

/* Define a data memory space which is visible to both CPUs, the DDR is okay
 * since a large amount of data could be written.
 */
#define SHARED_DDR_MEMORY_BASE   0x03000000

/* Declare a value stored in OCM space which is visible to both CPUs. */
#define SEMAPHORE_VALUE      (*(volatile unsigned long *)(SHARED_OCM_MEMORY_BASE))

/* Declare a memory space where both CPUs can store their data sets. */
#define DESTINATION_ARRAY    (SHARED_DDR_MEMORY_BASE)

/* Define a data set for CPU0 to operate on. */
/*static char cpu0_data[0x120] =
{
    0x2B, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2B,
    0x7C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x2F, 0x2D, 0x2D, 0x5C, 0x2F, 0x2D, 0x2D, 0x5C, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x2F, 0x2D, 0x2D, 0x5C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x7C, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x7C, 0x2D, 0x2D, 0x2F, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x7C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x5C, 0x2D, 0x2D, 0x2F, 0x7C, 0x20, 0x20, 0x20, 0x5C, 0x2D, 0x2D, 0x2F, 0x20, 0x20, 0x20, 0x20, 0x5C, 0x2D, 0x2D, 0x2F, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x7C, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x7C,
    0x2B, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2D, 0x2B
};*/

int datacopy (char *data)
{
    int index;
    volatile char* data_destination = (char *) DESTINATION_ARRAY;

    /* Copy the data set to the shared memory destination. */
    for (index = 0; index < 0x120; index++)
    {
    	data_destination[index] = data[index];
    }

    return index;
}

int semaphore_cpu0_init()
{
    /* Only CPU0 should be responsible for initializing the semaphore. */
    SEMAPHORE_VALUE = 0;

	return 0;
}

int semaphore_cpu0_signal()
{
	SEMAPHORE_VALUE = 1;

	return 0;
}

int semaphore_cpu0_wait()
{
	while (SEMAPHORE_VALUE == 1) {};

	return 0;
}

void CPU1_init() {
	//duplicating the initial parking code in ddr
	Xil_Out32((u32) 0x06000000, (u32) 0xe3e0000f);
	Xil_Out32((u32) 0x06000004, (u32) 0xe3a01000);
	Xil_Out32((u32) 0x06000008, (u32) 0xe5801000);
	Xil_Out32((u32) 0x0600000c, (u32) 0xe320f002);
	Xil_Out32((u32) 0x06000010, (u32) 0xe5902000);
	Xil_Out32((u32) 0x06000014, (u32) 0xe1520001);
	Xil_Out32((u32) 0x06000018, (u32) 0x0afffffb);
	Xil_Out32((u32) 0x0600001c, (u32) 0xe1a0f002);

	asm volatile("bx %0" : : "r" (CPU1_MEM_BASE));				// park CPU1 back to initial state!!
}

void CPU1_disp();



int main()
{
	Xil_Out32(0xffff0000, (u32) 0x50505050);

	void (*funcPtr_CPU1init)() = CPU1_init;
	void (*funcPtr_CPU1disp)() = CPU1_disp;

	int i,idx = 0;

	//Xil_Out32(0xffffff00, (u32) funcPtr_CPU1disp);

    /* Disable caching on shared OCM data by setting the appropriate TLB
     * attributes for the shared data space in OCM.
	 *
     * S=b1
     * TEX=b100
     * AP=b11
     * Domain=b1111
     * C=b0
     * B=b0
	 */
    Xil_SetTlbAttributes(SHARED_OCM_MEMORY_BASE, 0x14de2);


    /* Set the CPU1 start address to match the beginning of the memory segment
     * defined in the linker script.
     */
    //printf("CPU0: Setting start address for cpu1 to 0x%08X\n\r", funcPtr_CPU1disp);
    /*Xil_Out32(CPU1_START_ADR, (u32) funcPtr_CPU1disp);
    dmb(); // Wait until memory write has finished.
    print("CPU0: Using SEV to wake up CPU1\n\r");
    sev();*/


	Xil_Out32(CPU1_START_ADR, (u32) funcPtr_CPU1init);
	dmb();
	sev();



    while(1)
    {
    	for (i=0;i<50000000;i++);
        /* Wait until the shared resource is not in use by another CPU. */
        //semaphore_cpu0_wait();

    	printf("CPU0: Hello World 111111........val1 = 0x%x......index=%d\n\r", (unsigned int) Xil_In32(0xffff0000), idx++);

    	Xil_Out32(0xffff0000, 0x50505050);
    	/* Use the shared SoC resource. */
		printf("CPU0: Hello World 222222........val1 = 0x%x\n\r", (unsigned int) Xil_In32(0xffff0000));

		//asm volatile("bx %0" : : "r" ((u32) funcPtr_CPU1disp));

		/* Copy the data set for this CPU to the shared memory destination. */
		//datacopy(cpu0_data);

        /* Signal that the shared resource is no longer in use so that
         * another CPU can use the shared resource.
         */
    	//semaphore_cpu0_signal();
		for (i=0;i<50000000;i++);

	    Xil_Out32(CPU1_START_ADR, (u32) funcPtr_CPU1disp);
	    dmb(); // Wait until memory write has finished.
	    sev();
    }

    return 0;
}


void CPU1_disp() {
	//printf("CPU1_disp: Hello World!\n\r");
	Xil_Out32(0xffff0000, (u32) 0xa0a0a0a0);
	//printf("CPU1: haha\n\r");

	Xil_Out32(CPU1_START_ADR, (u32) 0x0);
	asm volatile("bx %0" : : "r" (CPU1_MEM_BASE));				// park CPU1 back to initial state!!
}


#endif


#if 0

#include <stdio.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_exception.h"
#include "xpseudo_asm.h"

#define sev() __asm__("sev")
#define CPU1_POLL_ADDR		  0xFFFFFF00
#define CPU1_MEM_BASE        0x00200000
#define CPU1_START_ADR       0xFFFFFFF0

void CPU0_disp();
void CPU1_disp();

int main() {
	//int i;
	void (*funcPtr_CPU1disp)();
	funcPtr_CPU1disp = CPU1_disp;

	while (1) {
		//CPU0_disp();
		//for (i=0; i<1000000; i++);

	    printf("CPU0: Setting start address for cpu1 to 0x%08X\n\r", CPU1_MEM_BASE);
	    Xil_Out32(CPU1_START_ADR, CPU1_MEM_BASE);
	    dmb(); // Wait until memory write has finished.

	    print("CPU0: Using SEV to wake up CPU1\n\r");
	    sev();
		//for (i=0; i<1000000; i++);
		while(1);
	}
}

void CPU0_disp() {
	printf("CPU0: Hello World!\n\r");
}

void CPU1_disp() {
	printf("hahaha\n\r");
	printf("CPU1: Hello World!\n\r");
	Xil_Out32(0xfffffff0, (u32) 0x0);
	__asm__ (  "LDR r0, =0xFFFFFF00\n"
			    "LDR PC, [r0]\n"
			 );
}



#endif






