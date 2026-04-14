#include "Coefficients.h"
#include <hls_math.h>
void firTop(hls::stream<ap_axis<32, 2, 5, 6>> &in_stream,
            hls::stream<ap_axis<32, 2, 5, 6>> &out_stream, uint32_t *bram) {
#pragma HLS INTERFACE mode=m_axi port=bram
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE axis port = in_stream
#pragma HLS INTERFACE axis port = out_stream
#pragma HLS INTERFACE ap_ctrl_none port = return

  double taps[MAX_TAPS];
  uint32_t bramVal[4];
  for (int i = 0; i < 4; i++)
    bramVal[i] = bram[i];
 bram[READ_SUCCESS] = 1;
 
 int N = bramVal[NUM_TAPS_OFFSET];
  int lowerCutoff =bramVal[LOWER_CUTOFF_OFFSET];
  int upperCutoff =bramVal[UPPER_CUTOFF_OFFSET];
  int samplingRate =  bramVal[SAMPLING_RATE_OFFSET];

  /*
  int N = 25; //bramVal[NUM_TAPS_OFFSET];
  int lowerCutoff =1000;// bramVal[LOWER_CUTOFF_OFFSET];
  int upperCutoff =5000;// bramVal[UPPER_CUTOFF_OFFSET];
  int samplingRate = 100000;// bramVal[SAMPLING_RATE_OFFSET];
*/
  ap_axis<32, 2, 5, 6> tmp;
  calculateCoefficients(N, lowerCutoff, upperCutoff, samplingRate, taps);

  while (1) {

#pragma HLS PIPELINE II = 1

    in_stream.read(tmp);

    // Convert incoming AXIS payload to fixed-point sample
    double y;
    fir(&y, taps, tmp.data.to_double(), N);
    tmp.data = y;

    out_stream.write(tmp);

    if (tmp.last) {
      break;
    }
  }
}

void fir(double *y, double c[MAX_TAPS], double x, int N) {
  static double shift_reg[MAX_TAPS];
  double acc = 0;
  int i;
  double data;
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
    //printf("accum %f ", acc);
  }
  *y = acc;
}

void calculateCoefficients(int N, int lowerCutoff, int upperCutoff,
                           int samplingRate, double *taps) {

  const int M = (N - 1) / 2;
  const double PI = 3.141592653589793f;

  double omegaLower = 2.0f * PI * lowerCutoff / samplingRate;
  double omegaUpper = 2.0f * PI * upperCutoff / samplingRate;

  // 🔹 First pass: compute windowed sinc
  double sum = 0.0f;

  for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE

    int n = i - M;
    double val;

    if (n == 0) {
      val = (omegaUpper - omegaLower) / PI;
    } else {
      val = (hls::sinf(omegaUpper * n) - hls::sinf(omegaLower * n)) / (PI * n);
    }

    double w = 0.54f - 0.46f * hls::cosf(2.0f * PI * i / (N - 1));

    taps[i] = val * w;
    sum += taps[i];
  }

  double mean = sum / N;

  for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
    taps[i] -= mean;
  }
}