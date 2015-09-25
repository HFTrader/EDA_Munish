// this is going to be auto-generated via template engine

#include "VDMAIP_Driver.h"
#include "xil_assert.h"

void VDMAIP_Driver_WriteReg(unsigned int addr, unsigned int mask, unsigned int value) {
    // only write to reg if mask != 0
    if ((mask | 0x0) != 0x0) {
        *((volatile unsigned int *)(addr)) = (*(volatile unsigned int *)(addr) & ~(mask)) | value;
    }
}


unsigned int VDMAIP_Driver_ReadReg(unsigned int addr) {
    return (unsigned int) *((volatile unsigned int *)(addr));
}


// updates the VDMA IP peripheral's memory mapped registers with content provided in mode 
void VDMAIP_Driver_SetHAMode(VDMAIP_RegMap mode, unsigned int baseaddr) {
    // TODO: loop over the ip regmap rather than writing to each register individually

    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_DMACR.offset, mode.MM2S_DMACR.mask, mode.MM2S_DMACR.value);
    //      ...     //  NOTE: not shown here for simplicity
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_DMACR.offset, mode.S2MM_DMACR.mask, mode.S2MM_DMACR.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_DMASR.offset, mode.S2MM_DMASR.mask, mode.S2MM_DMASR.value);
    //      ...     //  NOTE: not shown here for simplicity    
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_VSIZE.offset, mode.MM2S_VSIZE.mask, mode.MM2S_VSIZE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_HSIZE.offset, mode.MM2S_HSIZE.mask, mode.MM2S_HSIZE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_FRMDLY_STRIDE.offset, mode.MM2S_FRMDLY_STRIDE.mask, mode.MM2S_FRMDLY_STRIDE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_START_ADDRESS1.offset, mode.MM2S_START_ADDRESS1.mask, mode.MM2S_START_ADDRESS1.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_START_ADDRESS2.offset, mode.MM2S_START_ADDRESS2.mask, mode.MM2S_START_ADDRESS2.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.MM2S_START_ADDRESS3.offset, mode.MM2S_START_ADDRESS3.mask, mode.MM2S_START_ADDRESS3.value);
    //      ...     //  NOTE: not shown here for simplicity
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_VSIZE.offset, mode.S2MM_VSIZE.mask, mode.S2MM_VSIZE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_HSIZE.offset, mode.S2MM_HSIZE.mask, mode.S2MM_HSIZE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_FRMDLY_STRIDE.offset, mode.S2MM_FRMDLY_STRIDE.mask, mode.S2MM_FRMDLY_STRIDE.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_START_ADDRESS1.offset, mode.S2MM_START_ADDRESS1.mask, mode.S2MM_START_ADDRESS1.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_START_ADDRESS2.offset, mode.S2MM_START_ADDRESS2.mask, mode.S2MM_START_ADDRESS2.value);
    VDMAIP_Driver_WriteReg(baseaddr + mode.S2MM_START_ADDRESS3.offset, mode.S2MM_START_ADDRESS3.mask, mode.S2MM_START_ADDRESS3.value);
    //      ...     //  NOTE: not shown here for simplicity                           
}




void VDMAIP_Driver_initialize(VDMAIP_DriverInstance *InstancePtr, XScuGic *InterruptController, VDMAIP_RegMap InitMode) {
	VDMAIP_Driver_SetHAMode(InitMode, InstancePtr->baseaddr);

    // registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) VDMAIP_Driver_ISR, (void *) InstancePtr);
	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
	XScuGic_Enable(InterruptController, InstancePtr->intr_id);
	
	InstancePtr->busy = 0;
}




void VDMAIP_Driver_start(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StartMode) {
	VDMAIP_Driver_SetHAMode(StartMode, InstancePtr->baseaddr);
	InstancePtr->busy = 1;
}



void VDMAIP_Driver_stop(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StopMode) {
	VDMAIP_Driver_SetHAMode(StopMode, InstancePtr->baseaddr);
}


bool VDMAIP_Driver_isBusy(VDMAIP_DriverInstance *InstancePtr) {    
	return InstancePtr->busy;
}




void VDMAIP_Driver_ISR(void *baseaddr_p) {
	VDMAIP_DriverInstance *InstancePtr = (VDMAIP_DriverInstance *) baseaddr_p;
	// resetting VDMA
	VDMAIP_Driver_WriteReg(InstancePtr->baseaddr + 0x30, 0x00000004, 0x00000004);

	InstancePtr->busy = 0;
}













