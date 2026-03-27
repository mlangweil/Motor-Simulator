#include "ap_fixed.h"
#include "hls_math.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

typedef int64_t data_t;
typedef int64_t acc_t;
typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;
#define SCALE 10000000000

// Hilbert approximation function one input sample -> one envelope sample

static void hilbert(data_t in, data_t &envelope) {
#pragma HLS INLINE

    const int NTAPS = 25;
    const int CENTER = NTAPS / 2;

    // Hilbert approximation coefficients for odd offsets
    const data_t h1  = data_t(0.6366); // 2/pi
    const data_t h3  = data_t(0.2122); // 2/(3pi)
    const data_t h5  = data_t(0.1273); // 2/(5pi)
    const data_t h7  = data_t(0.0909); // 2/(7pi)
    const data_t h9  = data_t(0.0707); // 2/(9pi)
    const data_t h11 = data_t(0.0579); // 2/(11pi)

    static data_t x[NTAPS] = {0};
#pragma HLS ARRAY_PARTITION variable=x complete dim=1

    // Shift register
    for (int i = NTAPS - 1; i > 0; i--) {
#pragma HLS UNROLL
        x[i] = x[i - 1];
    }
    x[0] = in;

    // Delayed in-phase path
    data_t I_path = x[CENTER];

    // Quadrature path from antisymmetric Hilbert approximation
    acc_t Q_path = 0;
    Q_path += h11 * (x[24] - x[0]);
    Q_path += h9  * (x[22] - x[2]);
    Q_path += h7  * (x[20] - x[4]);
    Q_path += h5  * (x[18] - x[6]);
    Q_path += h3  * (x[16] - x[8]);
    Q_path += h1  * (x[14] - x[10]);

    acc_t mag_sq = (acc_t)I_path * I_path + Q_path * Q_path;
    //envelope = (int64_t) sqrt(mag_sq) * SCALE;
    envelope = 1;
}


// AXI4-Stream wrapper top function
// Reads stream until TLAST is seen
void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream) {
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE ap_ctrl_none port=return

	ap_axis<32,2,5,6> tmp;

    while (1) {
#pragma HLS PIPELINE II=1

        in_stream.read(tmp);

        // Convert incoming AXIS payload to fixed-point sample
        data_t in_sample = tmp.data.to_int();
        data_t env_sample;
        hilbert(in_sample, env_sample);

      
        tmp.data = env_sample;
     

        out_stream.write(tmp);

        if (tmp.last) {
            break;
        }
    }
}