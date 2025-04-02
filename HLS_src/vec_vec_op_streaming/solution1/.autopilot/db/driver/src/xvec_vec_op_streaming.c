// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvec_vec_op_streaming.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVec_vec_op_streaming_CfgInitialize(XVec_vec_op_streaming *InstancePtr, XVec_vec_op_streaming_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bus_a_BaseAddress = ConfigPtr->Bus_a_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVec_vec_op_streaming_Start(XVec_vec_op_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL) & 0x80;
    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVec_vec_op_streaming_IsDone(XVec_vec_op_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVec_vec_op_streaming_IsIdle(XVec_vec_op_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVec_vec_op_streaming_IsReady(XVec_vec_op_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVec_vec_op_streaming_EnableAutoRestart(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL, 0x80);
}

void XVec_vec_op_streaming_DisableAutoRestart(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_AP_CTRL, 0);
}

void XVec_vec_op_streaming_Set_op(XVec_vec_op_streaming *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_OP_DATA, Data);
}

u32 XVec_vec_op_streaming_Get_op(XVec_vec_op_streaming *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_OP_DATA);
    return Data;
}

void XVec_vec_op_streaming_InterruptGlobalEnable(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_GIE, 1);
}

void XVec_vec_op_streaming_InterruptGlobalDisable(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_GIE, 0);
}

void XVec_vec_op_streaming_InterruptEnable(XVec_vec_op_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_IER);
    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_IER, Register | Mask);
}

void XVec_vec_op_streaming_InterruptDisable(XVec_vec_op_streaming *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_IER);
    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_IER, Register & (~Mask));
}

void XVec_vec_op_streaming_InterruptClear(XVec_vec_op_streaming *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVec_vec_op_streaming_WriteReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_ISR, Mask);
}

u32 XVec_vec_op_streaming_InterruptGetEnabled(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_IER);
}

u32 XVec_vec_op_streaming_InterruptGetStatus(XVec_vec_op_streaming *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVec_vec_op_streaming_ReadReg(InstancePtr->Bus_a_BaseAddress, XVEC_VEC_OP_STREAMING_BUS_A_ADDR_ISR);
}

