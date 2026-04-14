
#ifndef HILBERT_ENVELOPE_AXIS_H
#define HILBERT_ENVELOPE_AXIS_H

#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"


typedef int64_t data_t;
typedef ap_fixed<32, 6> acc_t;
typedef ap_axis<32,2,5,6> axis_pkt_t;
typedef hls::stream<axis_pkt_t> axis_t;

// Top-level function prototype
void hilbert_envelope_axis(hls::stream<ap_axis<32,2,5,6>> &in_stream,
                           hls::stream<ap_axis<32,2,5,6>> &out_stream);

#endif

