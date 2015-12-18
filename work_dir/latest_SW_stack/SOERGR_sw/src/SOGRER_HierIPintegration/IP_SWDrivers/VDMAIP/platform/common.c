// contains common types/structures that are to be used by various IP drivers

#include "common.h"



void VDMAIP_RegWrite(unsigned int addr, unsigned int mask, unsigned int value) {
	// only write to reg if mask != 0x0
	if ((mask | 0x0) != 0x0) {
#if PLATFORM == XILINX_FPGA
		Xil_Out32(addr, (Xil_In32(addr) & ~mask) | value);
// #elsif for other platforms		
#endif
	}
}


unsigned int VDMAIP_RegRead(unsigned int addr) {
#if PLATFORM == XILINX_FPGA
	return Xil_In32(addr);
// #elsif for other platforms	
#endif
}
