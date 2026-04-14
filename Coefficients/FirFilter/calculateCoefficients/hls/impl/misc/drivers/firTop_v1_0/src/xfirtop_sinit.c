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
#include "xfirtop.h"

extern XFirtop_Config XFirtop_ConfigTable[];

#ifdef SDT
XFirtop_Config *XFirtop_LookupConfig(UINTPTR BaseAddress) {
	XFirtop_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFirtop_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFirtop_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFirtop_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFirtop_Initialize(XFirtop *InstancePtr, UINTPTR BaseAddress) {
	XFirtop_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFirtop_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFirtop_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFirtop_Config *XFirtop_LookupConfig(u16 DeviceId) {
	XFirtop_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFIRTOP_NUM_INSTANCES; Index++) {
		if (XFirtop_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFirtop_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFirtop_Initialize(XFirtop *InstancePtr, u16 DeviceId) {
	XFirtop_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFirtop_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFirtop_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

