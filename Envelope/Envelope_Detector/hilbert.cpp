#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"
#include "hls_math.h"

typedef int32_t data_t;
typedef int64_t acc_t;
typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

static void hilbert(data_t in, data_t &envelope) {
#pragma HLS INLINE

    const int NTAPS = 25;
    const int CENTER = NTAPS / 2;

    // Scale factor to preserve precision in integer arithmetic
    const int32_t h1  = 6366;  // 2/pi    * 10000
    const int32_t h3  = 2122;  // 2/(3pi) * 10000
    const int32_t h5  = 1273;  // 2/(5pi) * 10000
    const int32_t h7  =  909;  // 2/(7pi) * 10000
    const int32_t h9  =  707;  // 2/(9pi) * 10000
    const int32_t h11 =  579;  // 2/(11pi)* 10000

    static int32_t x[NTAPS] = {0};
#pragma HLS ARRAY_PARTITION variable=x complete dim=1

    for (int i = NTAPS - 1; i > 0; i--) {
#pragma HLS UNROLL
        x[i] = x[i - 1];
    }
    x[0] = in;

    int32_t I_path = x[CENTER];

    acc_t Q_path = 0;
    Q_path += h11 * (int64_t)(x[24] - x[0]);
    Q_path += h9  * (int64_t)(x[22] - x[2]);
    Q_path += h7  * (int64_t)(x[20] - x[4]);
    Q_path += h5  * (int64_t)(x[18] - x[6]);
    Q_path += h3  * (int64_t)(x[16] - x[8]);
    Q_path += h1  * (int64_t)(x[14] - x[10]);

    // Descale Q_path
    Q_path /= 10000;

    acc_t mag_sq = (acc_t)I_path * I_path + (Q_path * Q_path);
    envelope = (int32_t)hls::sqrt((float)mag_sq);
}

void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream) {
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE ap_ctrl_none port=return

    ap_axis<32,2,5,6> tmp;

    while (1) {
#pragma HLS PIPELINE II=1

        in_stream.read(tmp);

        data_t in_sample = (int32_t)tmp.data;
        data_t env_sample;
        hilbert(in_sample, env_sample);

        tmp.data = env_sample;

        out_stream.write(tmp);
        if (tmp.last) {
            break;
        }
    }
}