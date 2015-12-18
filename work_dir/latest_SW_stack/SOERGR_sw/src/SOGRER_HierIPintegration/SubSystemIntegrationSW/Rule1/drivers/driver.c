#include "driver.h"

#ifndef __CONFIG_H__
#include "config.h"
#endif

void Subsystem_R1_intrInitialize(Subsystem_R1_DriverInstance *InstancePtr, IntCntrl_t *InterruptController){

	// Interrupt initializing the SobelfilterIP
    SobelfilterIP_Driver_intrInitialize(&InstancePtr->_SobelfilterIP_DriverInstance, InterruptController);
    // Interrupt initializing the VDMAIP
    VDMAIP_Driver_intrInitialize(&InstancePtr->_VDMAIP_DriverInstance, InterruptController);
}



void Subsystem_R1_initialize(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_InitMode){

	//
	// Custom Code
	//
	// initializing the SobelfilterIP
	Subsystem_InitMode._SobelfilterIP_RegMap.ROWS_DATA.mask = 0xffffffff;
	Subsystem_InitMode._SobelfilterIP_RegMap.ROWS_DATA.value = 480;
	Subsystem_InitMode._SobelfilterIP_RegMap.COLS_DATA.mask = 0xffffffff;
	Subsystem_InitMode._SobelfilterIP_RegMap.COLS_DATA.value = 640;
    SobelfilterIP_RegWrite(InstancePtr->_SobelfilterIP_DriverInstance.baseaddr + 0x0, 0x00000081, 0x81);


    // initializing the SobelfilterIP
    SobelfilterIP_Driver_initialize(&InstancePtr->_SobelfilterIP_DriverInstance, Subsystem_InitMode._SobelfilterIP_RegMap);
    // initializing the VDMAIP
    VDMAIP_Driver_initialize(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_InitMode._VDMAIP_RegMap);
}



void Subsystem_R1_start(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_R1_StartMode,
			unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height,
			unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

	// starting the SobelfilterIP
	SobelfilterIP_Driver_start(&InstancePtr->_SobelfilterIP_DriverInstance, Subsystem_R1_StartMode._SobelfilterIP_RegMap);
	// starting the VDMAIP
	VDMAIP_Driver_start(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_R1_StartMode._VDMAIP_RegMap);


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



void Subsystem_R1_stop(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_R1_StopMode) {
	// stopping SobelfilterIP
	SobelfilterIP_Driver_stop(&InstancePtr->_SobelfilterIP_DriverInstance, Subsystem_R1_StopMode._SobelfilterIP_RegMap);
	// stopping VDMAIP
	VDMAIP_Driver_stop(&InstancePtr->_VDMAIP_DriverInstance, Subsystem_R1_StopMode._VDMAIP_RegMap);
}



bool Subsystem_R1_isBusy(Subsystem_R1_DriverInstance *InstancePtr) {
	return VDMAIP_Driver_isBusy(&InstancePtr->_VDMAIP_DriverInstance);
}











