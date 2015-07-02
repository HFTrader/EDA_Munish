
// header containing the declarations for all the global stuff that is to be shared among several source files!!

#ifndef __GLOBAL_H__
#define __GLOBAL_H__

// global macros
#define SHARED_OCM_MEMORY_BASE   0xFFFF0000
#define CPU1_SLEEP_ADDR			  0x10000000
#define sev() __asm__("sev")
#define NUM_CPUS 1
//#define SOBEL_HA
//#define ERODE_HA
#define GRAYSCALE_HA
#define FRAME_SIZE 0x1000000



// global variables
short int FRAME_INTR;
short int GRAY_INTR;
short int debug_frameNo;
short int cpu0_busy_processing_frame;
short int cpu1_busy_processing_frame;

extern void CPU1_ISR();


#endif
