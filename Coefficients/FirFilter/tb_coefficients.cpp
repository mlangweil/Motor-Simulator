#include "Coefficients.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <iostream>
#include <cstdint>

#define NUM_SAMPLES 32

int main() {
    // AXIS streams
    hls::stream<ap_axis<32, 2, 5, 6>> in_stream;
    hls::stream<ap_axis<32, 2, 5, 6>> out_stream;

    // BRAM configuration
    uint32_t bram[4];
    bram[NUM_TAPS_OFFSET] = 25;         // number of FIR taps
    bram[LOWER_CUTOFF_OFFSET] = 1000;   // Hz
    bram[UPPER_CUTOFF_OFFSET] = 5000;   // Hz
    bram[SAMPLING_RATE_OFFSET] = 600; // Hz

    // Generate input samples
    for (int i = 0; i < NUM_SAMPLES; i++) {
        ap_axis<32, 2, 5, 6> sample;
        sample.data = (i % 2 == 0) ? 2500 : -2500; // simple alternating waveform
        sample.last = (i == NUM_SAMPLES - 1) ? 1 : 0;
        in_stream.write(sample);
    }

    // Call the FIR top function
    firTop(in_stream, out_stream, bram);

    // Read and print output
    std::cout << "Filtered output:\n";
    for (int i = 0; i < NUM_SAMPLES; i++) {
        ap_axis<32, 2, 5, 6> out_sample = out_stream.read();
        std::cout << out_sample.data.to_double() << "\n";
    }

    std::cout << "Testbench finished.\n";
    return 0;
}