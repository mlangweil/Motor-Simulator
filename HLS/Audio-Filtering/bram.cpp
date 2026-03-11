#include "bram.h"

void BRAM(float in, float out) {
static float bram[TAPS];
#pragma HLS BIND_STORAGE variable=bram type=ram_t2p impl=bram

}