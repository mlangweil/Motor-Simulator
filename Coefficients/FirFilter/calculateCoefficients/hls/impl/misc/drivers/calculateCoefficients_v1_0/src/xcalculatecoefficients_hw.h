// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of lowerCutoff
//        bit 31~0 - lowerCutoff[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of upperCutoff
//        bit 31~0 - upperCutoff[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of samplingRate
//        bit 31~0 - samplingRate[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bram
//        bit 31~0 - bram[31:0] (Read/Write)
// 0x2c : Data signal of bram
//        bit 31~0 - bram[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL           0x00
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_GIE               0x04
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER               0x08
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_ISR               0x0c
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_LOWERCUTOFF_DATA  0x10
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_LOWERCUTOFF_DATA  32
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_UPPERCUTOFF_DATA  0x18
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_UPPERCUTOFF_DATA  32
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_SAMPLINGRATE_DATA 0x20
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_SAMPLINGRATE_DATA 32
#define XCALCULATECOEFFICIENTS_CONTROL_ADDR_BRAM_DATA         0x28
#define XCALCULATECOEFFICIENTS_CONTROL_BITS_BRAM_DATA         64

