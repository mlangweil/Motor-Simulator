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
// 0x28 : Data signal of bram
//        bit 31~0 - bram[31:0] (Read/Write)
// 0x2c : Data signal of bram
//        bit 31~0 - bram[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_LOWERCUTOFF_DATA  0x10
#define CONTROL_BITS_LOWERCUTOFF_DATA  32
#define CONTROL_ADDR_UPPERCUTOFF_DATA  0x18
#define CONTROL_BITS_UPPERCUTOFF_DATA  32
#define CONTROL_ADDR_SAMPLINGRATE_DATA 0x20
#define CONTROL_BITS_SAMPLINGRATE_DATA 32
#define CONTROL_ADDR_BRAM_DATA         0x28
#define CONTROL_BITS_BRAM_DATA         64
