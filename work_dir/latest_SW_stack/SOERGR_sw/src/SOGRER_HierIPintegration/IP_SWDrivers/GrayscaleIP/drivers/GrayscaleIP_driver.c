// this is going to be auto-generated via template engine and later customized by IP supplier

#include "GrayscaleIP_driver.h"

// updates the Grayscale IP peripheral's memory mapped registers with content provided in mode 
static void SetHAMode(GrayscaleIP_RegMap *mode, unsigned int baseaddr) {
	// pointing to 1st register in passed regmap
	RegType *iter_ptr = (RegType *) mode;
	// getting the number of the registers in the passed reg-map
	int reg_in_regmap = sizeof(GrayscaleIP_RegMap)/sizeof(RegType);
	// iterating over all registers in the passed regmap
	int i=0;
	for (i=0; i<reg_in_regmap; i++) {
		GrayscaleIP_RegWrite(baseaddr + iter_ptr->offset, iter_ptr->mask, iter_ptr->value);
		iter_ptr++;
	}
}



//TODO: should this ISR function be here or inside Rule0?????????
static void GrayscaleIP_Driver_ISR(void *baseaddr_p) {
	GrayscaleIP_DriverInstance *InstancePtr = (GrayscaleIP_DriverInstance *) baseaddr_p;
	InstancePtr->busy = 0;
}



void GrayscaleIP_Driver_intrInitialize(GrayscaleIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController) {

	// Interrupt: registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) GrayscaleIP_Driver_ISR, (void *) InstancePtr);

	XScuGic_Enable(InterruptController, InstancePtr->intr_id);

	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
}


void GrayscaleIP_Driver_initialize(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap InitMode) {
	// Registers Initialization
	SetHAMode(&InitMode, InstancePtr->baseaddr);
	InstancePtr->busy = 0;
}



void GrayscaleIP_Driver_start(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap StartMode) {
    SetHAMode(&StartMode, InstancePtr->baseaddr);
    InstancePtr->busy = 1;
}



void GrayscaleIP_Driver_stop(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap StopMode) {
	SetHAMode(&StopMode, InstancePtr->baseaddr);
}



bool GrayscaleIP_Driver_isBusy(GrayscaleIP_DriverInstance *InstancePtr) {
	return InstancePtr->busy;
}










