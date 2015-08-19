// should be auto-generated


#ifndef __SOBELIP_VDMA_DRIVER_TEMPLATE_H__
#define __SOBELIP_VDMA_DRIVER_TEMPLATE_H__

#include "xscugic.h"

#define bool unsigned char


typedef struct {
    unsigned int baseaddr;
    bool busy;
    unsigned int intr_id;
} SOBELIP_VDMADriverInstance;


typedef struct {
    unsigned int offset;
    unsigned int value;
    unsigned int mask;
} SOBELIP_VDMARegType;




// register map for VDMA IP registers
typedef struct {
    // actual Xilinx AXI-VDMA IP has ~55 registers.....for now only a sample of registers are shown to provide an idea
    // only registers important for IP use are shown here...but in actual auto-generated file, all the registers will be present    
	SOBELIP_VDMARegType MM2S_DMACR;
    //      ...     //  NOTE: not shown here for simplicity
	SOBELIP_VDMARegType S2MM_DMACR;
	SOBELIP_VDMARegType S2MM_DMASR;
    //      ...     //  NOTE: not shown here for simplicity
	SOBELIP_VDMARegType MM2S_VSIZE;
	SOBELIP_VDMARegType MM2S_HSIZE;
	SOBELIP_VDMARegType MM2S_FRMDLY_STRIDE;
	SOBELIP_VDMARegType MM2S_START_ADDRESS1;
	SOBELIP_VDMARegType MM2S_START_ADDRESS2;
	SOBELIP_VDMARegType MM2S_START_ADDRESS3;
    //      ...     //  NOTE: not shown here for simplicity
	SOBELIP_VDMARegType S2MM_VSIZE;
	SOBELIP_VDMARegType S2MM_HSIZE;
	SOBELIP_VDMARegType S2MM_FRMDLY_STRIDE;
	SOBELIP_VDMARegType S2MM_START_ADDRESS1;
	SOBELIP_VDMARegType S2MM_START_ADDRESS2;
	SOBELIP_VDMARegType S2MM_START_ADDRESS3;
    //      ...     //  NOTE: not shown here for simplicity
} SOBELIP_VDMARegMap;


// API to configure VDMA_IP
void SOBELIP_VDMA_Driver_initialize(SOBELIP_VDMADriverInstance *InstancePtr, XScuGic *InterruptController);
void SOBELIP_VDMA_Driver_start(SOBELIP_VDMADriverInstance *InstancePtr);
void SOBELIP_VDMA_Driver_stop(SOBELIP_VDMADriverInstance *InstancePtr);
bool SOBELIP_VDMA_Driver_isBusy(SOBELIP_VDMADriverInstance *InstancePtr);
void SOBELIP_VDMA_Driver_ISR(void *baseaddr_p);




#endif 


    
    
    
    
    
    
    