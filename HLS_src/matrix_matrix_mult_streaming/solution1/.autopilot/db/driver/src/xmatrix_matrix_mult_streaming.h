// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATRIX_MATRIX_MULT_STREAMING_H
#define XMATRIX_MATRIX_MULT_STREAMING_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatrix_matrix_mult_streaming_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XMatrix_matrix_mult_streaming_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XMatrix_matrix_mult_streaming;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatrix_matrix_mult_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatrix_matrix_mult_streaming_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatrix_matrix_mult_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatrix_matrix_mult_streaming_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMatrix_matrix_mult_streaming_Initialize(XMatrix_matrix_mult_streaming *InstancePtr, u16 DeviceId);
XMatrix_matrix_mult_streaming_Config* XMatrix_matrix_mult_streaming_LookupConfig(u16 DeviceId);
int XMatrix_matrix_mult_streaming_CfgInitialize(XMatrix_matrix_mult_streaming *InstancePtr, XMatrix_matrix_mult_streaming_Config *ConfigPtr);
#else
int XMatrix_matrix_mult_streaming_Initialize(XMatrix_matrix_mult_streaming *InstancePtr, const char* InstanceName);
int XMatrix_matrix_mult_streaming_Release(XMatrix_matrix_mult_streaming *InstancePtr);
#endif

void XMatrix_matrix_mult_streaming_Start(XMatrix_matrix_mult_streaming *InstancePtr);
u32 XMatrix_matrix_mult_streaming_IsDone(XMatrix_matrix_mult_streaming *InstancePtr);
u32 XMatrix_matrix_mult_streaming_IsIdle(XMatrix_matrix_mult_streaming *InstancePtr);
u32 XMatrix_matrix_mult_streaming_IsReady(XMatrix_matrix_mult_streaming *InstancePtr);
void XMatrix_matrix_mult_streaming_Continue(XMatrix_matrix_mult_streaming *InstancePtr);
void XMatrix_matrix_mult_streaming_EnableAutoRestart(XMatrix_matrix_mult_streaming *InstancePtr);
void XMatrix_matrix_mult_streaming_DisableAutoRestart(XMatrix_matrix_mult_streaming *InstancePtr);


void XMatrix_matrix_mult_streaming_InterruptGlobalEnable(XMatrix_matrix_mult_streaming *InstancePtr);
void XMatrix_matrix_mult_streaming_InterruptGlobalDisable(XMatrix_matrix_mult_streaming *InstancePtr);
void XMatrix_matrix_mult_streaming_InterruptEnable(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask);
void XMatrix_matrix_mult_streaming_InterruptDisable(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask);
void XMatrix_matrix_mult_streaming_InterruptClear(XMatrix_matrix_mult_streaming *InstancePtr, u32 Mask);
u32 XMatrix_matrix_mult_streaming_InterruptGetEnabled(XMatrix_matrix_mult_streaming *InstancePtr);
u32 XMatrix_matrix_mult_streaming_InterruptGetStatus(XMatrix_matrix_mult_streaming *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
