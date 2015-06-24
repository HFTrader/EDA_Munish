
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

#define GRAYSCALE_HA
#define SOBEL_HA
//#define ERODE_HA

extern short int FRAME_INTR;
extern short int GRAY_INTR;
extern short int debug_frameNo;
extern short int cpu0_busy_capturing_frame;
#define cpu1_busy_capturing_frame (*(volatile short int *)(SHARED_OCM_MEMORY_BASE))


#endif

