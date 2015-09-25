// this is going to be auto-generated via template engine and later customized by IP supplier

#include "ErodeIP_Driver.h"
#include "xil_assert.h"

void ErodeIP_Driver_WriteReg(unsigned int addr, unsigned int mask, unsigned int value) {
    // only write to reg if mask != 0
    if ((mask | 0x0) != 0x0) {
        *((volatile unsigned int *)(addr)) = (*(volatile unsigned int *)(addr) & ~(mask)) | value;
    }
}


unsigned int ErodeIP_Driver_ReadReg(unsigned int addr) {
    return (unsigned int) *((volatile unsigned int *)(addr));
}


// updates the Erode IP peripheral's memory mapped registers with content provided in mode 
void ErodeIP_Driver_SetHAMode(ErodeIP_RegMap mode, unsigned int baseaddr) {
    // TODO: loop over the ip regmap rather than writing to each register individually

	ErodeIP_Driver_WriteReg(baseaddr + mode.AP_CTRL.offset, mode.AP_CTRL.mask, mode.AP_CTRL.value);
	ErodeIP_Driver_WriteReg(baseaddr + mode.GIE.offset, mode.GIE.mask, mode.GIE.value);
	ErodeIP_Driver_WriteReg(baseaddr + mode.IER.offset, mode.IER.mask, mode.IER.value);
	ErodeIP_Driver_WriteReg(baseaddr + mode.ISR.offset, mode.ISR.mask, mode.ISR.value);
	ErodeIP_Driver_WriteReg(baseaddr + mode.ROWS_DATA.offset, mode.ROWS_DATA.mask, mode.ROWS_DATA.value);
	ErodeIP_Driver_WriteReg(baseaddr + mode.COLS_DATA.offset, mode.COLS_DATA.mask, mode.COLS_DATA.value);
}


void ErodeIP_Driver_initialize(ErodeIP_DriverInstance *InstancePtr, XScuGic *InterruptController, ErodeIP_RegMap InitMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	ErodeIP_Driver_SetHAMode(InitMode, InstancePtr->baseaddr);
	
    // registering this IP's ISR with the Interrupt Controller passed on by the application developer
	int Status = XScuGic_Connect(InterruptController, InstancePtr->intr_id, (Xil_ExceptionHandler) ErodeIP_Driver_ISR, (void *) InstancePtr);
	if (Status != XST_SUCCESS) {
		Xil_AssertVoid(0);
	}
	XScuGic_Enable(InterruptController, InstancePtr->intr_id);	
	
	InstancePtr->busy = 0;
}



void ErodeIP_Driver_start(ErodeIP_DriverInstance *InstancePtr, ErodeIP_RegMap StartMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    ErodeIP_Driver_SetHAMode(StartMode, InstancePtr->baseaddr);
    InstancePtr->busy = 1;
}



void ErodeIP_Driver_stop(ErodeIP_DriverInstance *InstancePtr, ErodeIP_RegMap StopMode) {
	ErodeIP_Driver_SetHAMode(StopMode, InstancePtr->baseaddr);
}



bool ErodeIP_Driver_isBusy(ErodeIP_DriverInstance *InstancePtr) {
	return InstancePtr->busy;
}



void ErodeIP_Driver_ISR(void *baseaddr_p) {
	ErodeIP_DriverInstance *InstancePtr = (ErodeIP_DriverInstance *) baseaddr_p;
	InstancePtr->busy = 0;
}







