// this driver corresponds to VDMA IP
// it is generated by modifying the auto-generated template by Grayscale IP supplier



#ifndef __GRAYSCALEIP_VDMA_DRIVER_H__
#define __GRAYSCALEIP_VDMA_DRIVER_H__

#include "xscugic.h"

#define bool unsigned char


typedef struct {
    unsigned int baseaddr;
    bool busy;
    unsigned int intr_id;
} GRAYSCALEIP_VDMADriverInstance;


typedef struct {
    unsigned int offset;
    unsigned int value;
    unsigned int mask;
} GRAYSCALEIP_VDMARegType;




// register map for VDMA IP registers
typedef struct {
    // actual Xilinx AXI-VDMA IP has ~55 registers.....for now only a sample of registers are shown to provide an idea
    // only registers important for IP use are shown here...but in actual auto-generated file, all the registers will be present    
	GRAYSCALEIP_VDMARegType MM2S_DMACR;
    //      ...     //  NOTE: not shown here for simplicity
	GRAYSCALEIP_VDMARegType S2MM_DMACR;
	GRAYSCALEIP_VDMARegType S2MM_DMASR;
    //      ...     //  NOTE: not shown here for simplicity
	GRAYSCALEIP_VDMARegType MM2S_VSIZE;
	GRAYSCALEIP_VDMARegType MM2S_HSIZE;
	GRAYSCALEIP_VDMARegType MM2S_FRMDLY_STRIDE;
	GRAYSCALEIP_VDMARegType MM2S_START_ADDRESS1;
	GRAYSCALEIP_VDMARegType MM2S_START_ADDRESS2;
	GRAYSCALEIP_VDMARegType MM2S_START_ADDRESS3;
    //      ...     //  NOTE: not shown here for simplicity
	GRAYSCALEIP_VDMARegType S2MM_VSIZE;
	GRAYSCALEIP_VDMARegType S2MM_HSIZE;
	GRAYSCALEIP_VDMARegType S2MM_FRMDLY_STRIDE;
	GRAYSCALEIP_VDMARegType S2MM_START_ADDRESS1;
	GRAYSCALEIP_VDMARegType S2MM_START_ADDRESS2;
	GRAYSCALEIP_VDMARegType S2MM_START_ADDRESS3;
    //      ...     //  NOTE: not shown here for simplicity
} GRAYSCALEIP_VDMARegMap;



// API to configure VDMA_IP
void GRAYSCALEIP_VDMA_Driver_initialize(GRAYSCALEIP_VDMADriverInstance *InstancePtr, XScuGic *InterruptController);
void GRAYSCALEIP_VDMA_Driver_start(GRAYSCALEIP_VDMADriverInstance *InstancePtr, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void GRAYSCALEIP_VDMA_Driver_stop(GRAYSCALEIP_VDMADriverInstance *InstancePtr);
bool GRAYSCALEIP_VDMA_Driver_isBusy(GRAYSCALEIP_VDMADriverInstance *InstancePtr);
void GRAYSCALEIP_VDMA_Driver_ISR(void *baseaddr_p);




#endif 



// NOTE: everything seems to be auto-generatable!!



    
    
    
    
    
    
    
    
