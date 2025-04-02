// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatrix_matrix_mult_streaming.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatrix_matrix_mult_streaming_CfgInitialize(XMatrix_matrix_mult_streaming *InstancePtr, XMatrix_matrix_mult_streaming_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatrix_matrix_mult_streaming_Start(XMatrix_matrix_mult_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatrix_matrix_mult_streaming_IsDone(XMatrix_matrix_mult_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatrix_matrix_mult_streaming_IsIdle(XMatrix_matrix_mult_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatrix_matrix_mult_streaming_IsReady(XMatrix_matrix_mult_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatrix_matrix_mult_streaming_Continue(XMatrix_matrix_mult_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL, Data | 0x10);
}

void XMatrix_matrix_mult_streaming_EnableAutoRestart(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XMatrix_matrix_mult_streaming_DisableAutoRestart(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XMatrix_matrix_mult_streaming_InterruptGlobalEnable(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_GIE, 1);
}

void XMatrix_matrix_mult_streaming_InterruptGlobalDisable(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_GIE, 0);
}

void XMatrix_matrix_mult_streaming_InterruptEnable(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER);
    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XMatrix_matrix_mult_streaming_InterruptDisable(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER);
    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XMatrix_matrix_mult_streaming_InterruptClear(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatrix_matrix_mult_streaming_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XMatrix_matrix_mult_streaming_InterruptGetEnabled(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER);
}

u32 XMatrix_matrix_mult_streaming_InterruptGetStatus(XMatrix_matrix_mult_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatrix_matrix_mult_streaming_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_ISR);
}

