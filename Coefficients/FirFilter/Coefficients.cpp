#include "Coefficients.h"
#include <hls_math.h>

void firTop(hls::stream<ap_axis<32, 2, 5, 6>> &in_stream,
            hls::stream<ap_axis<32, 2, 5, 6>> &out_stream, uint32_t *bram) {
#pragma HLS INTERFACE mode = m_axi port = bram
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE axis port = in_stream
#pragma HLS INTERFACE axis port = out_stream
#pragma HLS INTERFACE ap_ctrl_none port = return

  double taps[MAX_TAPS];
  uint32_t bramVal[4];
  for (int i = 0; i < 4; i++)
    bramVal[i] = bram[i];
  bram[READ_SUCCESS_OFFSET] = 1;

  int N          = (int)bramVal[NUM_TAPS_OFFSET];
  int lowerCutoff = (int)bramVal[LOWER_CUTOFF_OFFSET];
  int upperCutoff = (int)bramVal[UPPER_CUTOFF_OFFSET];
  int samplingRate = (int)bramVal[SAMPLING_RATE_OFFSET];

  ap_axis<32, 2, 5, 6> tmp;
  calculateCoefficients(N, lowerCutoff, upperCutoff, samplingRate, taps);

  while (1) {
#pragma HLS PIPELINE II = 1

    bool doReset = (bram[RESET_OFFSET] != 0);
    if (doReset) {
      bram[RESET_OFFSET] = 0;
    }

    in_stream.read(tmp);

    // Read incoming sample as signed int32
    int32_t in_sample = (int32_t)tmp.data.to_int();

    // Run FIR
    double y;
    fir(&y, taps, (double)in_sample, N, doReset);

    // Write output as signed int32
    tmp.data = (int32_t)y;

    out_stream.write(tmp);

    if (tmp.last) {
      break;
    }
  }
}

void fir(double *y, double c[MAX_TAPS], double x, int N, bool reset) {
  static double shift_reg[MAX_TAPS];
  double acc = 0;
  int i;
  double data;

  if (reset) {
    for (int i = 0; i < MAX_TAPS; i++) {
#pragma HLS UNROLL
      shift_reg[i] = 0.0;
    }
    *y = 0.0;
    return;
  }

Shift_Accum_Loop:
  for (i = N - 1; i >= 0; i--) {
    if (i == 0) {
      shift_reg[0] = x;
      data = x;
    } else {
      shift_reg[i] = shift_reg[i - 1];
      data = shift_reg[i];
    }
    acc += data * c[i];
  }
  *y = acc;
}

void calculateCoefficients(int N, int lowerCutoff, int upperCutoff,
                            int samplingRate, double *taps) {

  const int M = (N - 1) / 2;
  const double PI = 3.14159265358979323846;

  double omegaLower = 2.0 * PI * lowerCutoff / samplingRate;
  double omegaUpper = 2.0 * PI * upperCutoff / samplingRate;

  for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
    int n = i - M;
    double val;

    if (n == 0) {
      val = (omegaUpper - omegaLower) / PI;
    } else {
      val = (hls::sin(omegaUpper * n) - hls::sin(omegaLower * n)) / (PI * n);
    }

    // Hamming window
    double w = 0.54 - 0.46 * hls::cos(2.0 * PI * i / (N - 1));
    taps[i] = val * w;
  }

  // Normalize so passband gain = 1.0
  // Evaluate H(e^jw) at center frequency
  double centerOmega = (omegaLower + omegaUpper) / 2.0;
  double gain_re = 0.0;

  for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
    gain_re += taps[i] * hls::cos(centerOmega * (i - M));
  }

  if (gain_re > 1e-10) {
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
      taps[i] /= gain_re;
    }
  }
}