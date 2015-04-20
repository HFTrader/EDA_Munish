/***************************************************************************//**
 *   @file   main.c

*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdio.h>
#include "cf_hdmi.h"
#include "xscugic.h"
#include "xil_mmu.h"
#include "sw_functions.h"


/* Define a data memory space which is visible to both CPUs, the OCM is ideal
 * since it is the lowest latency memory which is visible to both ARM cores.
 */
#define SHARED_OCM_MEMORY_BASE   0xFFFF0000
/* Declare a value stored in OCM space which is visible to both CPUs. */
#define SEMAPHORE_VALUE      (*(volatile unsigned long *)(SHARED_OCM_MEMORY_BASE))

// share the currentResolution variable so that it is visible to CPU1 as well
#define shared_currentResolution (*(volatile unsigned char *)(SHARED_OCM_MEMORY_BASE + 100))



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



/***************************************************************************//**
 * @brief Main function.
 *
 * @return Returns 0.
*******************************************************************************/
int main()
{

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

	while (1)
	{
		semaphore_cpu1_wait();

		// storing the current frame onto cpu0 memory space
		DDRVideoWr(640, 480, detailedTiming[shared_currentResolution][H_ACTIVE_TIME], detailedTiming[shared_currentResolution][V_ACTIVE_TIME]);
		// grayscaling the captured image and writing to a separate memory region in ddr
		ConvToGrayHLS(VIDEO_BASEADDR, PROC_VIDEO_BASEADDR, detailedTiming[shared_currentResolution][H_ACTIVE_TIME]);

		semaphore_cpu1_signal();
	}

	return(0);
}
