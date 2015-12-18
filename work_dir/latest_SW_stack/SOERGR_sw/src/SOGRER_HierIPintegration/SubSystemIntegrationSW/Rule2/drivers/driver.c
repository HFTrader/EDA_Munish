#include "driver.h"

#ifndef __CONFIG_H__
#include "config.h"
#endif

void Subsystem_R2_intrInitialize(Subsystem_R2_DriverInstance *InstancePtr, IntCntrl_t *InterruptController){

	// Interrupt initializing the ErodefilterIP
    ErodefilterIP_Driver_intrInitialize(&InstancePtr->_ErodefilterIP_DriverInstance, InterruptController);
    // Interrupt initializing the VDMAIP
    VDMAIP_Driver_intrInitialize(&InstancePtr->_VDMAIP_DriverInstance, InterruptController);
}



void Subsystem_R2_initialize(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_InitMode){

	//
	// Custom Code
	//
	// initializing the ErodefilterIP
	Subsystem_InitMode._ErodefilterIP_RegMap.ROWS_DATA.mask = 0xffffffff;
	Subsystem_InitMode._ErodefilterIP_RegMap.ROWS_DATA.value = 480;
	Subsystem_InitMode._ErodefilterIP_RegMap.COLS_DATA.mask = 0xffffffff;
	Subsystem_InitMode._ErodefilterIP_RegMap.COLS_DATA.value = 640;
    ErodefilterIP_RegWrite(InstancePtr->_ErodefilterIP_DriverInstance.baseaddr + 0x0, 0x00000081, 0x81);


    // initializing the ErodefilterIP
    ErodefilterIP_Driver_initialize(&InstancePtr->_ErodefilterIP_DriverInstance, Subsystem_InitMode._ErodefilterIP_RegMap);
    // initializing the VDMAIP
    VDMAIP_Driver_initialize(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_InitMode._VDMAIP_RegMap);
}



void Subsystem_R2_start(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_R2_StartMode,
			unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height,
			unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

	// starting the ErodefilterIP
	ErodefilterIP_Driver_start(&InstancePtr->_ErodefilterIP_DriverInstance, Subsystem_R2_StartMode._ErodefilterIP_RegMap);
	// starting the VDMAIP
	VDMAIP_Driver_start(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_R2_StartMode._VDMAIP_RegMap);


	//
	// Custom code
	//
	// MEM2DEV
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x5c, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x60, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x64, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x58, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x54, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x50, 0xffffffff, verticalActiveTime);
	// DEV2MEM
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xac, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb0, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb4, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa8, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa4, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa0, 0xffffffff, verticalActiveTime);
}



void Subsystem_R2_stop(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_R2_StopMode) {
	// stopping ErodefilterIP
	ErodefilterIP_Driver_stop(&InstancePtr->_ErodefilterIP_DriverInstance, Subsystem_R2_StopMode._ErodefilterIP_RegMap);
	// stopping VDMAIP
	VDMAIP_Driver_stop(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_R2_StopMode._VDMAIP_RegMap);
}



bool Subsystem_R2_isBusy(Subsystem_R2_DriverInstance *InstancePtr) {
	return VDMAIP_Driver_isBusy(&InstancePtr->_VDMAIP_DriverInstance);
}











