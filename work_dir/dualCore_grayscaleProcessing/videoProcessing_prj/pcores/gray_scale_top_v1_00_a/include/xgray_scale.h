// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XGRAY_SCALE_H
#define XGRAY_SCALE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#include "xgray_scale_CONTROL_BUS.h"

/**************************** Type Definitions ******************************/
typedef struct {
    u16 DeviceId; // currently not used
    u32 Control_bus_BaseAddress;
} XGray_scale_Config;

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XGray_scale;

/***************** Macros (Inline Functions) Definitions *********************/
#define XGray_scale_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

#define XGray_scale_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes *****************************/
int XGray_scale_Initialize(XGray_scale *InstancePtr, XGray_scale_Config *ConfigPtr);

void XGray_scale_Start(XGray_scale *InstancePtr);
u32 XGray_scale_IsDone(XGray_scale *InstancePtr);
u32 XGray_scale_IsIdle(XGray_scale *InstancePtr);
u32 XGray_scale_IsReady(XGray_scale *InstancePtr);
void XGray_scale_EnableAutoRestart(XGray_scale *InstancePtr);
void XGray_scale_DisableAutoRestart(XGray_scale *InstancePtr);

void XGray_scale_SetRows(XGray_scale *InstancePtr, u32 Data);
u32 XGray_scale_GetRows(XGray_scale *InstancePtr);
void XGray_scale_SetCols(XGray_scale *InstancePtr, u32 Data);
u32 XGray_scale_GetCols(XGray_scale *InstancePtr);

void XGray_scale_InterruptGlobalEnable(XGray_scale *InstancePtr);
void XGray_scale_InterruptGlobalDisable(XGray_scale *InstancePtr);
void XGray_scale_InterruptEnable(XGray_scale *InstancePtr, u32 Mask);
void XGray_scale_InterruptDisable(XGray_scale *InstancePtr, u32 Mask);
void XGray_scale_InterruptClear(XGray_scale *InstancePtr, u32 Mask);
u32 XGray_scale_InterruptGetEnabled(XGray_scale *InstancePtr);
u32 XGray_scale_InterruptGetStatus(XGray_scale *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
