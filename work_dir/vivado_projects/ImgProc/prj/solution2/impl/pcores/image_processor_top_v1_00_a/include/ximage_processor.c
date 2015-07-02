// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.1
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "ximage_processor.h"

/************************** Function Implementation *************************/
int XImage_processor_Initialize(XImage_processor *InstancePtr, XImage_processor_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}

void XImage_processor_Start(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XImage_processor_IsDone(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XImage_processor_IsIdle(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XImage_processor_IsReady(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XImage_processor_EnableAutoRestart(XImage_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XImage_processor_DisableAutoRestart(XImage_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XImage_processor_SetRows(XImage_processor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XImage_processor_GetRows(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XImage_processor_SetCols(XImage_processor *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XImage_processor_GetCols(XImage_processor *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XImage_processor_InterruptGlobalEnable(XImage_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_GIE, 1);
}

void XImage_processor_InterruptGlobalDisable(XImage_processor *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_GIE, 0);
}

void XImage_processor_InterruptEnable(XImage_processor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_IER);
    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XImage_processor_InterruptDisable(XImage_processor *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_IER);
    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XImage_processor_InterruptClear(XImage_processor *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_processor_WriteReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XImage_processor_InterruptGetEnabled(XImage_processor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_IER);
}

u32 XImage_processor_InterruptGetStatus(XImage_processor *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_processor_ReadReg(InstancePtr->Control_bus_BaseAddress, XIMAGE_PROCESSOR_CONTROL_BUS_ADDR_ISR);
}
