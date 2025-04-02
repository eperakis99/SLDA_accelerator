// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xslda_final.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSlda_final_CfgInitialize(XSlda_final *InstancePtr, XSlda_final_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSlda_final_Start(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL) & 0x80;
    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSlda_final_IsDone(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSlda_final_IsIdle(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSlda_final_IsReady(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSlda_final_EnableAutoRestart(XSlda_final *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL, 0x80);
}

void XSlda_final_DisableAutoRestart(XSlda_final *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_AP_CTRL, 0);
}

void XSlda_final_Set_reset(XSlda_final *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_RESET_DATA, Data);
}

u32 XSlda_final_Get_reset(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_RESET_DATA);
    return Data;
}

void XSlda_final_Set_init(XSlda_final *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_INIT_DATA, Data);
}

u32 XSlda_final_Get_init(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_INIT_DATA);
    return Data;
}

void XSlda_final_Set_ready_r_i(XSlda_final *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_READY_R_I_DATA, Data);
}

u32 XSlda_final_Get_ready_r_i(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_READY_R_I_DATA);
    return Data;
}

u32 XSlda_final_Get_ready_r_o(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_READY_R_O_DATA);
    return Data;
}

u32 XSlda_final_Get_ready_r_o_vld(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_READY_R_O_CTRL);
    return Data & 0x1;
}

void XSlda_final_Set_complete(XSlda_final *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_COMPLETE_DATA, Data);
}

u32 XSlda_final_Get_complete(XSlda_final *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_COMPLETE_DATA);
    return Data;
}

void XSlda_final_InterruptGlobalEnable(XSlda_final *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_GIE, 1);
}

void XSlda_final_InterruptGlobalDisable(XSlda_final *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_GIE, 0);
}

void XSlda_final_InterruptEnable(XSlda_final *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_IER);
    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_IER, Register | Mask);
}

void XSlda_final_InterruptDisable(XSlda_final *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_IER);
    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_IER, Register & (~Mask));
}

void XSlda_final_InterruptClear(XSlda_final *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlda_final_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_ISR, Mask);
}

u32 XSlda_final_InterruptGetEnabled(XSlda_final *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_IER);
}

u32 XSlda_final_InterruptGetStatus(XSlda_final *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSlda_final_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLDA_FINAL_CTRL_ADDR_ISR);
}

