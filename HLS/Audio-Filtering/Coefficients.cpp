#include "Coefficients.h"
#include <cmath>

void calculateCoefficients(int lowerCutoff, int upperCutoff, float samplingRate,
                           float *bram) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE m_axi port=bram offset=slave
#pragma HLS INTERFACE s_axilite port=upperCutoff
#pragma HLS INTERFACE s_axilite port=lowerCutoff
#pragma HLS INTERFACE s_axilite port=samplingRate

    const int M = (TAPS - 1) / 2;
    float omegaLower = 2.0f * M_PI * lowerCutoff / samplingRate;
    float omegaUpper = 2.0f * M_PI * upperCutoff / samplingRate;

    for (int i = 0; i < TAPS; i++) {
#pragma HLS PIPELINE
        int n = i - M;
        if (n == 0) {
            // center tap
            bram[i] = (omegaUpper - omegaLower) / M_PI;
        } else {
            bram[i] = (sin(omegaUpper * n) - sin(omegaLower * n)) / (M_PI * n);
        }
    }
}
