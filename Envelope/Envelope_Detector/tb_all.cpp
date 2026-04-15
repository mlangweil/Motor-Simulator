#include <iomanip>
#include <cmath>
#include <cstdint>

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"


#include "ap_fixed.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <ap_float.h>
#include <iostream>

using namespace std;
typedef ap_axis<32, 2, 5, 6> axis_pkt_t;
#define MAX_TAPS 101
typedef enum {
  NUM_TAPS_OFFSET = 0,
  LOWER_CUTOFF_OFFSET = 1,
  UPPER_CUTOFF_OFFSET = 2,
  SAMPLING_RATE_OFFSET = 3,
  READ_SUCCESS_OFFSET = 4,
  RESET_OFFSET = 5,
  SIZE_OFFSET = 6
} registers;

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

  if (gain_re > 1e-10) {  // avoid divide-by-zero
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE
      taps[i] /= gain_re;
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
    // printf("accum %f ", acc);
  }
  *y = acc;
}
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

  int N = bramVal[NUM_TAPS_OFFSET];
  int lowerCutoff = bramVal[LOWER_CUTOFF_OFFSET];
  int upperCutoff = bramVal[UPPER_CUTOFF_OFFSET];
  int samplingRate = bramVal[SAMPLING_RATE_OFFSET];

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

    bool doReset = (bram[RESET_OFFSET] != 0);
    if (doReset) {
      bram[RESET_OFFSET] = 0;
    }

    in_stream.read(tmp);

    // Convert incoming AXIS payload to fixed-point sample
    double y;
    fir(&y, taps, tmp.data.to_int(), N, doReset);
    tmp.data = y;

    out_stream.write(tmp);

    if (tmp.last) {
      break;
    }
    
    
  }
}




// AXIS types
typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

// DUT declarations
void firTop(hls::stream<ap_axis<32,2,5,6>> &in_stream,
            hls::stream<ap_axis<32,2,5,6>> &out_stream,
            uint32_t bram[]);

void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream);

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

int main() {
    axis_t in_stream;
    axis_t fir_out_stream;
    axis_t hilbert_out_stream;

    // Match Python: generate_sine_samples(2500, 100000, 101)
    const int N = 101;
    const double A  = 32767.0;
    const double fs = 100000.0;
    const double f_sig = 2500.0;

    int32_t input_vals[N];

    for (int i = 0; i < N; i++) {
        input_vals[i] =
            (int32_t)std::lround(A * std::sin(2.0 * M_PI * f_sig * i / fs));
    }

    // BRAM config for FIR
    uint32_t bram[SIZE_OFFSET] = {0};
    bram[NUM_TAPS_OFFSET]      = 25;
    bram[LOWER_CUTOFF_OFFSET]  = 1000;
    bram[UPPER_CUTOFF_OFFSET]  = 5000;
    bram[SAMPLING_RATE_OFFSET] = (uint32_t)fs;

    // Write source samples into FIR input stream
    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt;
        pkt.data = input_vals[i];
        pkt.keep = -1;
        pkt.strb = -1;
        pkt.user = 0;
        pkt.id   = 0;
        pkt.dest = 0;
        pkt.last = (i == N - 1) ? 1 : 0;
        in_stream.write(pkt);
    }

    // Run FIR first
    firTop(in_stream, fir_out_stream, bram);

    // Save FIR output so we can both:
    // 1) print it later
    // 2) feed it into Hilbert
    int32_t fir_vals[N];

    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt = fir_out_stream.read();
        fir_vals[i] = (int32_t)pkt.data;

        axis_pkt_t next_pkt;
        next_pkt.data = fir_vals[i];
        next_pkt.keep = pkt.keep;
        next_pkt.strb = pkt.strb;
        next_pkt.user = pkt.user;
        next_pkt.id   = pkt.id;
        next_pkt.dest = pkt.dest;
        next_pkt.last = pkt.last;
        fir_out_stream.write(next_pkt);
    }

    // Run Hilbert envelope on FIR output
    hilbert_envelope_axis(fir_out_stream, hilbert_out_stream);

    // Print results
    std::cout << std::setw(6)  << "n"
              << std::setw(14) << "input"
              << std::setw(14) << "fir_out"
              << std::setw(14) << "envelope"
              << std::setw(8)  << "last"
              << "\n";

    std::cout << "--------------------------------------------------------------\n";

    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt = hilbert_out_stream.read();
        int32_t env_val = (int32_t)pkt.data;

        std::cout << std::setw(6)  << i
                  << std::setw(14) << input_vals[i]
                  << std::setw(14) << fir_vals[i]
                  << std::setw(14) << env_val
                  << std::setw(8)  << (int)pkt.last
                  << "\n";
    }

    return 0;
}