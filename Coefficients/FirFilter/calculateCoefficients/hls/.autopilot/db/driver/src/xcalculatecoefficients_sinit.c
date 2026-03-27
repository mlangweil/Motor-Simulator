// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcalculatecoefficients.h"

extern XCalculatecoefficients_Config XCalculatecoefficients_ConfigTable[];

#ifdef SDT
XCalculatecoefficients_Config *XCalculatecoefficients_LookupConfig(UINTPTR BaseAddress) {
	XCalculatecoefficients_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCalculatecoefficients_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCalculatecoefficients_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCalculatecoefficients_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatecoefficients_Initialize(XCalculatecoefficients *InstancePtr, UINTPTR BaseAddress) {
	XCalculatecoefficients_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatecoefficients_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatecoefficients_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCalculatecoefficients_Config *XCalculatecoefficients_LookupConfig(u16 DeviceId) {
	XCalculatecoefficients_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALCULATECOEFFICIENTS_NUM_INSTANCES; Index++) {
		if (XCalculatecoefficients_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalculatecoefficients_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatecoefficients_Initialize(XCalculatecoefficients *InstancePtr, u16 DeviceId) {
	XCalculatecoefficients_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatecoefficients_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatecoefficients_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

