#include "ap_fixed.h"
#include "hls_math.h"

typedef ap_fixed<16, 2> data_t;
typedef ap_fixed<32, 6> acc_t;

void hilbert_envelope_sym(data_t in, data_t &envelope) {
#pragma HLS PIPELINE II=1

    const int NTAPS = 25;
    const int CENTER = NTAPS / 2;

    // Hilbert coefficients for odd offsets from center
    const data_t h1  = data_t(0.6366); // 2/pi
    const data_t h3  = data_t(0.2122); // 2/(3pi)
    const data_t h5  = data_t(0.1273); // 2/(5pi)
    const data_t h7  = data_t(0.0909); // 2/(7pi)
    const data_t h9  = data_t(0.0707); // 2/(9pi)
    const data_t h11 = data_t(0.0579); // 2/(11pi)

    static data_t x[NTAPS] = {0};
#pragma HLS ARRAY_PARTITION variable=x complete dim=1

    for (int i = NTAPS - 1; i > 0; i--) {
#pragma HLS UNROLL
        x[i] = x[i - 1];
    }
    x[0] = in;

    data_t I_path = x[CENTER];

    acc_t Q_path = 0;
    Q_path += h11 * (x[24] - x[0]);
    Q_path += h9  * (x[22] - x[2]);
    Q_path += h7  * (x[20] - x[4]);
    Q_path += h5  * (x[18] - x[6]);
    Q_path += h3  * (x[16] - x[8]);
    Q_path += h1  * (x[14] - x[10]);

    // Optional gain correction if needed
    // Q_path *= data_t(0.94);

    acc_t mag_sq = (acc_t)I_path * I_path + Q_path * Q_path;
    envelope = (data_t)hls::sqrt(mag_sq);
}
