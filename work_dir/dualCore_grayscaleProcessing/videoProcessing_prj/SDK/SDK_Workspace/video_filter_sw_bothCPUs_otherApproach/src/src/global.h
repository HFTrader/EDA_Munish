
// header containing the declarations for all the global variables to be used in this application project

#ifndef __GLOBAL_H__
#define __GLOBAL_H__


extern void delay_ms(u32 ms_count);
extern char inbyte(void);

/******************************************************************************/
/************************** Macros Definitions ********************************/
/******************************************************************************/
#define HDMI_CALL_INTERVAL_MS	10			/* Interval between two         */
											/* iterations of the main loop  */
#define DBG_MSG                 xil_printf

/* Define a data memory space which is visible to both CPUs, the OCM is ideal
 * since it is the lowest latency memory which is visible to both ARM cores.
 */
#define SHARED_OCM_MEMORY_BASE   0xFFFF0000
#define CPU1_SLEEP_ADDR			  0xFFFFFF00

#define sev() __asm__("sev")

extern short int FRAME_INTR;


#endif
