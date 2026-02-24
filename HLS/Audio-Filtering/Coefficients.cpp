
#include "Coefficients.h"
#include <cmath>

void calculateCoefficients(int lowerCutoff, int upperCutoff, float samplingRate,
                           hls::stream<ap_axis<32, 2, 5, 6>> &coefficients) {
#pragma HLS INTERFACE mode = axis port = coefficients
#pragma HLS INTERFACE mode = s_axilite port = upperCutoff
#pragma HLS INTERFACE mode = s_axilite port = lowerCutoff
#pragma HLS INTERFACE mode = s_axilite port = samplingRate

  float coefs[TAPS];
  int centerTap = (TAPS - 1) / 2;
  ap_axis<32, 2, 5, 6> tmp;
  // calculate coefficients

  float omegaLower = (float)2 * M_PI * lowerCutoff / samplingRate;
  float omegaUpper = (float)2 * M_PI * upperCutoff / samplingRate;
  for (int i = 0; i < TAPS - 1; i++) {
    int currTap = i - centerTap;
    coefs[i] = (float) (sin(omegaUpper * currTap) - sin(omegaLower * currTap)) /
               (M_PI * currTap);
  }
    for (int i = 0; i < TAPS - 1; i++) {
      tmp.data = coefs[i];
      cout<<coefs[i]<<endl;

      coefficients.write(tmp);
    }
    tmp.data = coefs[TAPS - 1];
    tmp.last = 1;
    coefficients.write(tmp);
  
}
