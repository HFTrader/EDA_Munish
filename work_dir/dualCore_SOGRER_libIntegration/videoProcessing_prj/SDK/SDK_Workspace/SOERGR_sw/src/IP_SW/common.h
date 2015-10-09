// contains common types/structures that are to be used by various IP drivers

#ifndef __COMMON_H__
#define __COMMON_H__



#include "common_config.h"
#if PLATFORM == XILINX_FPGA
    #include "xil_io.h"
// #elsif for other platforms    
#endif

#define bool unsigned char

typedef struct {
#if PLATFORM_WORD_SIZE == 32
    unsigned int offset;
    unsigned int mask;
    unsigned int value;
// #elsif for other wordsizes    
#endif
} RegType;


void RegWrite(unsigned int addr, unsigned int mask, unsigned int value);
unsigned int RegRead(unsigned int addr);


#endif
