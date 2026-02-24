// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of lowerCutoff
//        bit 31~0 - lowerCutoff[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of upperCutoff
//        bit 31~0 - upperCutoff[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of samplingRate
//        bit 31~0 - samplingRate[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_LOWERCUTOFF_DATA  0x10
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_LOWERCUTOFF_DATA  32
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_UPPERCUTOFF_DATA  0x18
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_UPPERCUTOFF_DATA  32
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_SAMPLINGRATE_DATA 0x20
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_SAMPLINGRATE_DATA 32

