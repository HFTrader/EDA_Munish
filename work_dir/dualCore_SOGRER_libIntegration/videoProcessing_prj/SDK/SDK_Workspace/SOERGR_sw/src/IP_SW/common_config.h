// contains configurations for the whole system

#ifndef __COMMON_CONFIG_H__
#define __COMMON_CONFIG_H__


#define PLATFORM XILINX_FPGA
#define PLATFORM_WORD_SIZE 32

#if PLATFORM == XILINX_FPGA
    #include "xscugic.h"
    typedef XScuGic IntCntrl_t ;
// #elsif for other platforms    
#endif    

#endif
