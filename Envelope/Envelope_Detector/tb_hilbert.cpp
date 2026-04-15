#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdint>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"

typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

// DUT
void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream);

int main() {
    axis_t in_stream, out_stream;

    // Try a longer signal so the 101-tap filter has time to settle
const int N = 101;

// Integer sine input
int32_t input_vals[N];
const double A = 32767.0;       // match Python amplitude
const double f = 2500.0 / 100000.0;   // cycles/sample = 0.025

for (int i = 0; i < N; i++) {
    input_vals[i] = (int32_t)std::lround(A * std::sin(2.0 * M_PI * f * i));
}

    // Write input stream
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

    // Run DUT
    hilbert_envelope_axis(in_stream, out_stream);

    // Read and print outputs
    std::cout << std::setw(6) << "n"
              << std::setw(12) << "input"
              << std::setw(12) << "envelope"
              << std::setw(8)  << "last"
              << "\n";

    std::cout << "--------------------------------------\n";

    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt = out_stream.read();
        int32_t out_val = (int32_t)pkt.data;

        std::cout << std::setw(6) << i
                  << std::setw(12) << input_vals[i]
                  << std::setw(12) << out_val
                  << std::setw(8)  << (int)pkt.last
                  << "\n";
    }

    return 0;
}