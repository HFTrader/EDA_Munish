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
static void SetHAMode(VDMAIP_RegMap *mode, unsigned int baseaddr) {
	// pointing to 1st register in passed regmap
	RegType *iter_ptr = (RegType *) mode;
	// getting the number of the registers in the passed reg-map
	int reg_in_regmap = sizeof(VDMAIP_RegMap)/sizeof(RegType);
	// iterating over all registers in the passed regmap
	int i=0;
	for (i=0; i<reg_in_regmap; i++) {
		VDMAIP_Driver_WriteReg(baseaddr + iter_ptr->offset, iter_ptr->mask, iter_ptr->value);
		iter_ptr++;
	}
}


void VDMAIP_Driver_initialize(VDMAIP_DriverInstance *InstancePtr, XScuGic *InterruptController, VDMAIP_RegMap InitMode) {
	SetHAMode(&InitMode, InstancePtr->baseaddr);

    // registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) VDMAIP_Driver_ISR, (void *) InstancePtr);
	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
	XScuGic_Enable(InterruptController, InstancePtr->intr_id);
	
	InstancePtr->busy = 0;
}




void VDMAIP_Driver_start(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StartMode) {
	SetHAMode(&StartMode, InstancePtr->baseaddr);
	InstancePtr->busy = 1;
}



void VDMAIP_Driver_stop(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StopMode) {
	SetHAMode(&StopMode, InstancePtr->baseaddr);
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













