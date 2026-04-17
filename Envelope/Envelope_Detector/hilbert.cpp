#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_math.h"
#include "hls_stream.h"

typedef int32_t data_t;
typedef int64_t acc_t;
typedef ap_axis<32, 2, 5, 6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

// Use 301 taps so the Hilbert filter has an integer center delay
static const int NTAPS = 301;
static const int CENTER = NTAPS / 2; // 50
static const int SCALE = 32768;

// Delay line
static data_t x[NTAPS] = {0};

// Integer Hilbert FIR using ideal truncated coefficients:
// h[n] = 2/(pi*k) for odd k, 0 otherwise, anti-symmetric
static void hilbert(data_t in, data_t &envelope) {
#pragma HLS INLINE

  // Shift register
  for (int i = NTAPS - 1; i > 0; i--) {
#pragma HLS UNROLL
    x[i] = x[i - 1];
  }
  x[0] = in;

  // Real path: matched delay
  data_t I_path = x[CENTER];

  // Imag path: anti-symmetric Hilbert FIR around CENTER
  acc_t Q_acc = 0;

  // k = 1,3,5,...,49
  for (int k = 1; k <= (NTAPS / 2) - 1; k += 2) {
#pragma HLS UNROLL
    // ideal Hilbert coeff = 2/(pi*k)
    float hk_f = 2.0f / (3.14159265358979f * (float)k);
    int32_t hk = (int32_t)(hk_f * SCALE + 0.5f);

    int left = CENTER - k;
    int right = CENTER + k;

    // Anti-symmetric structure
    Q_acc += (acc_t)hk * ((acc_t)x[right] - (acc_t)x[left]);
  }

  data_t Q_path = (data_t)(Q_acc / SCALE);

  acc_t mag_sq = (acc_t)I_path * (acc_t)I_path + (acc_t)Q_path * (acc_t)Q_path;

  envelope = (data_t)hls::sqrt((float)mag_sq);
}

void hilbert_envelope_axis(hls::stream<axis_pkt_t> &in_stream,
                           hls::stream<axis_pkt_t> &out_stream) {
#pragma HLS INTERFACE axis port = in_stream
#pragma HLS INTERFACE axis port = out_stream
#pragma HLS INTERFACE ap_ctrl_none port = return

  axis_pkt_t tmp;

  while (1) {
#pragma HLS PIPELINE II = 1

    in_stream.read(tmp);

    data_t in_sample = (data_t)tmp.data;
    data_t env_sample = 0;

    hilbert(in_sample, env_sample);

    tmp.data = env_sample;
    out_stream.write(tmp);

    // Clear state at end of frame to prevent energy leakage
    if (tmp.last) {
      for (int i = 0; i < NTAPS; i++) {
        x[i] = 0;
      }
      break;
    }
  }
}