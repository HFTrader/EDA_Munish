// this is going to be auto-generated via template engine and later customized by IP supplier

#include "SobelIP_Driver.h"
#include "xil_assert.h"

void SobelIP_Driver_WriteReg(unsigned int addr, unsigned int mask, unsigned int value) {
    // only write to reg if mask != 0
    if ((mask | 0x0) != 0x0) {
        *((volatile unsigned int *)(addr)) = (*(volatile unsigned int *)(addr) & ~(mask)) | value;
    }
}


unsigned int SobelIP_Driver_ReadReg(unsigned int addr) {
    return (unsigned int) *((volatile unsigned int *)(addr));
}


// updates the Sobel IP peripheral's memory mapped registers with content provided in mode 
void SobelIP_Driver_SetHAMode(SobelIP_RegMap mode, unsigned int baseaddr) {
    // TODO: loop over the ip regmap rather than writing to each register individually

	SobelIP_Driver_WriteReg(baseaddr + mode.AP_CTRL.offset, mode.AP_CTRL.mask, mode.AP_CTRL.value);
	SobelIP_Driver_WriteReg(baseaddr + mode.GIE.offset, mode.GIE.mask, mode.GIE.value);
	SobelIP_Driver_WriteReg(baseaddr + mode.IER.offset, mode.IER.mask, mode.IER.value);
	SobelIP_Driver_WriteReg(baseaddr + mode.ISR.offset, mode.ISR.mask, mode.ISR.value);
	SobelIP_Driver_WriteReg(baseaddr + mode.ROWS_DATA.offset, mode.ROWS_DATA.mask, mode.ROWS_DATA.value);
	SobelIP_Driver_WriteReg(baseaddr + mode.COLS_DATA.offset, mode.COLS_DATA.mask, mode.COLS_DATA.value);
}


void SobelIP_Driver_initialize(SobelIP_DriverInstance *InstancePtr, XScuGic *InterruptController, SobelIP_RegMap InitMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	SobelIP_Driver_SetHAMode(InitMode, InstancePtr->baseaddr);
	
    // registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) SobelIP_Driver_ISR, (void *) InstancePtr);
	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
	XScuGic_Enable(InterruptController, InstancePtr->intr_id);	
	
	InstancePtr->busy = 0;
}



void SobelIP_Driver_start(SobelIP_DriverInstance *InstancePtr, SobelIP_RegMap StartMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    SobelIP_Driver_SetHAMode(StartMode, InstancePtr->baseaddr);
    InstancePtr->busy = 1;
}



void SobelIP_Driver_stop(SobelIP_DriverInstance *InstancePtr, SobelIP_RegMap StopMode) {
	SobelIP_Driver_SetHAMode(StopMode, InstancePtr->baseaddr);
}



bool SobelIP_Driver_isBusy(SobelIP_DriverInstance *InstancePtr) {
	return InstancePtr->busy;
}



void SobelIP_Driver_ISR(void *baseaddr_p) {
	SobelIP_DriverInstance *InstancePtr = (SobelIP_DriverInstance *) baseaddr_p;
	InstancePtr->busy = 0;
}







