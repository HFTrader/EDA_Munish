// contains common types/structures that are to be used by various IP drivers

#ifndef __IP_COMMON_H__
#define __IP_COMMON_H__

#include "platform_config.h"


#if PLATFORM == XILINX_FPGA
    #include "xil_io.h"
    #include "xscugic.h"
    typedef XScuGic IntCntrl_t ;
// #elsif for other platforms    
#endif


typedef struct {
#if PLATFORM_WORD_SIZE == 32
    unsigned int offset;
    unsigned int mask;
    unsigned int value;
// #elsif for other wordsizes    
#endif
} RegType;


void VDMAIP_RegWrite(unsigned int addr, unsigned int mask, unsigned int value);
unsigned int VDMAIP_RegRead(unsigned int addr);


#endif
