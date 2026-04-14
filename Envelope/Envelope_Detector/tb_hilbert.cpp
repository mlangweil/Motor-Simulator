#include <iostream>
#include <iomanip>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"

typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream);

int main() {
    axis_t in_stream, out_stream;

    const int N = 5;
    int32_t input_vals[N] = {-72, 0, -73, 2, -65};

    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt;
        pkt.data = input_vals[i];
        pkt.user = 0;
        pkt.id = 0;
        pkt.dest = 0;
        pkt.last = (i == N - 1) ? 1 : 0;
        in_stream.write(pkt);
    }

    hilbert_envelope_axis(in_stream, out_stream);

    for (int i = 0; i < N; i++) {
        axis_pkt_t pkt = out_stream.read();
        int32_t out_val = (int32_t)pkt.data;

        std::cout << "Output[" << i << "] = " << out_val
                  << " last=" << pkt.last << "\n";
    }

    return 0;
}