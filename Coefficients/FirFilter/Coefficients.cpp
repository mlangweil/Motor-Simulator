#include "Coefficients.h"
#include <hls_math.h>
#include <stdint.h>


void calculateCoefficients(int lowerCutoff, int upperCutoff, int samplingRate,
                           data_c *bram) {

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE m_axi port=bram depth=TAPS offset=slave
#pragma HLS INTERFACE s_axilite port=upperCutoff
#pragma HLS INTERFACE s_axilite port=lowerCutoff
#pragma HLS INTERFACE s_axilite port=samplingRate

    const int M = (TAPS - 1) / 2;
    const float PI = 3.141592653589793f;
    const float SCALE = 1000000000; //1 *10^9 

    float omegaLower = 2.0f * PI * lowerCutoff / samplingRate;
    float omegaUpper = 2.0f * PI * upperCutoff / samplingRate;

    for (int i = 0; i < TAPS; i++) {
#pragma HLS PIPELINE

        int n = i - M;
        float val;

        if (n == 0) {
            val = (omegaUpper - omegaLower) / PI;
        } else {
            val = (hls::sinf(omegaUpper * n) - hls::sinf(omegaLower * n)) / (PI * n);
        }

        // scale and convert to int64
       bram[i] = (data_c)(val * SCALE);
       //bram[i] = i;
    }
}