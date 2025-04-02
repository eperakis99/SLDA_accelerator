// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xslda_final.h"

extern XSlda_final_Config XSlda_final_ConfigTable[];

XSlda_final_Config *XSlda_final_LookupConfig(u16 DeviceId) {
	XSlda_final_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSLDA_FINAL_NUM_INSTANCES; Index++) {
		if (XSlda_final_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSlda_final_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSlda_final_Initialize(XSlda_final *InstancePtr, u16 DeviceId) {
	XSlda_final_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSlda_final_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSlda_final_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

