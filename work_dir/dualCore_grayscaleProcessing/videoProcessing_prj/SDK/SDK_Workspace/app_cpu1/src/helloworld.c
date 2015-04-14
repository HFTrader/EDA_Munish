/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
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
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_exception.h"



/* Define a data memory space which is visible to both CPUs, the OCM is ideal
 * since it is the lowest latency memory which is visible to both ARM cores.
 */
#define SHARED_OCM_MEMORY_BASE   0xFFFF0000
/* Declare a value stored in OCM space which is visible to both CPUs. */
#define SEMAPHORE_VALUE      (*(volatile unsigned long *)(SHARED_OCM_MEMORY_BASE))



int semaphore_cpu1_signal()
{
	SEMAPHORE_VALUE = 0;

	return 0;
}

int semaphore_cpu1_wait()
{
	while (SEMAPHORE_VALUE == 0) {};

	return 0;
}



int main()
{
    //init_platform();

	int i=0;
	int frame_no = 0;



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

#if 0
	/* Wait until the shared resource is not in use by another CPU. */
	semaphore_cpu1_wait();

    print("CPU1: Application initialized\n\r");

    /* Signal that the shared resource is no longer in use so that
     * another CPU can use the shared resource. */
    semaphore_cpu1_signal();
#endif


    while (1) {
        /* Wait until the shared resource is not in use by another CPU. */
        semaphore_cpu1_wait();
        frame_no += 2;

        printf("CPU1: Hello World CPU 1........frame#:%d\n\r", frame_no);
        for (i=0; i<1000; i++);			// 1000 clock cycle delay to ensure that msg writing on uart is finished

        /* Signal that the shared resource is no longer in use so that
         * another CPU can use the shared resource. */
    	semaphore_cpu1_signal();
    }


    return 0;
}







