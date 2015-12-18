// this is going to be auto-generated via template engine

#include "VDMAIP_driver.h"

// updates the VDMA IP peripheral's memory mapped registers with content provided in mode 
static void SetHAMode(VDMAIP_RegMap *mode, unsigned int baseaddr) {
	// pointing to 1st register in passed regmap
	RegType *iter_ptr = (RegType *) mode;
	// getting the number of the registers in the passed reg-map
	int reg_in_regmap = sizeof(VDMAIP_RegMap)/sizeof(RegType);
	// iterating over all registers in the passed regmap
	int i=0;
	for (i=0; i<reg_in_regmap; i++) {
		VDMAIP_RegWrite(baseaddr + iter_ptr->offset, iter_ptr->mask, iter_ptr->value);
		iter_ptr++;
	}
}


static void VDMAIP_Driver_ISR(void *baseaddr_p) {
	VDMAIP_DriverInstance *InstancePtr = (VDMAIP_DriverInstance *) baseaddr_p;
	// resetting VDMA
	VDMAIP_RegWrite(InstancePtr->baseaddr + 0x30, 0x00000004, 0x00000004);

	InstancePtr->busy = 0;
}



void VDMAIP_Driver_intrInitialize(VDMAIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController) {

    // registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) VDMAIP_Driver_ISR, (void *) InstancePtr);

	XScuGic_Enable(InterruptController, InstancePtr->intr_id);

	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
	
	InstancePtr->busy = 0;
}



void VDMAIP_Driver_initialize(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap InitMode) {
	SetHAMode(&InitMode, InstancePtr->baseaddr);
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

















