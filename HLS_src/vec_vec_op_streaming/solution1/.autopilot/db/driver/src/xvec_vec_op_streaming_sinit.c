// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvec_vec_op_streaming.h"

extern XVec_vec_op_streaming_Config XVec_vec_op_streaming_ConfigTable[];

XVec_vec_op_streaming_Config *XVec_vec_op_streaming_LookupConfig(u16 DeviceId) {
	XVec_vec_op_streaming_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVEC_VEC_OP_STREAMING_NUM_INSTANCES; Index++) {
		if (XVec_vec_op_streaming_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVec_vec_op_streaming_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVec_vec_op_streaming_Initialize(XVec_vec_op_streaming *InstancePtr, u16 DeviceId) {
	XVec_vec_op_streaming_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVec_vec_op_streaming_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVec_vec_op_streaming_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

