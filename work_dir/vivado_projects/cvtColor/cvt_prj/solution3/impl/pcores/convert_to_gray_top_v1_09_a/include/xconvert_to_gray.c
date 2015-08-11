// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xconvert_to_gray.h"

/************************** Function Implementation *************************/
int XConvert_to_gray_Initialize(XConvert_to_gray *InstancePtr, XConvert_to_gray_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}

void XConvert_to_gray_Start(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConvert_to_gray_IsDone(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConvert_to_gray_IsIdle(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConvert_to_gray_IsReady(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConvert_to_gray_EnableAutoRestart(XConvert_to_gray *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XConvert_to_gray_DisableAutoRestart(XConvert_to_gray *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XConvert_to_gray_SetRows(XConvert_to_gray *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XConvert_to_gray_GetRows(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XConvert_to_gray_SetCols(XConvert_to_gray *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XConvert_to_gray_GetCols(XConvert_to_gray *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XConvert_to_gray_InterruptGlobalEnable(XConvert_to_gray *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_GIE, 1);
}

void XConvert_to_gray_InterruptGlobalDisable(XConvert_to_gray *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_GIE, 0);
}

void XConvert_to_gray_InterruptEnable(XConvert_to_gray *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_IER);
    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XConvert_to_gray_InterruptDisable(XConvert_to_gray *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_IER);
    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XConvert_to_gray_InterruptClear(XConvert_to_gray *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConvert_to_gray_WriteReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XConvert_to_gray_InterruptGetEnabled(XConvert_to_gray *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_IER);
}

u32 XConvert_to_gray_InterruptGetStatus(XConvert_to_gray *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConvert_to_gray_ReadReg(InstancePtr->Control_bus_BaseAddress, XCONVERT_TO_GRAY_CONTROL_BUS_ADDR_ISR);
}
