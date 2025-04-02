// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatrix_matrix_mult_streaming.h"

extern XMatrix_matrix_mult_streaming_Config XMatrix_matrix_mult_streaming_ConfigTable[];

XMatrix_matrix_mult_streaming_Config *XMatrix_matrix_mult_streaming_LookupConfig(u16 DeviceId) {
	XMatrix_matrix_mult_streaming_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATRIX_MATRIX_MULT_STREAMING_NUM_INSTANCES; Index++) {
		if (XMatrix_matrix_mult_streaming_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatrix_matrix_mult_streaming_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatrix_matrix_mult_streaming_Initialize(XMatrix_matrix_mult_streaming *InstancePtr, u16 DeviceId) {
	XMatrix_matrix_mult_streaming_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatrix_matrix_mult_streaming_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatrix_matrix_mult_streaming_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

