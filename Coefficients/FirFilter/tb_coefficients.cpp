#include "Coefficients.h"
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <iostream>
#include <cstdint>
#include <cmath>

#define NUM_SAMPLES 101

#define PI 3.14159265358979323846

int main() {
    hls::stream<ap_axis<32, 2, 5, 6>> in_stream;
    hls::stream<ap_axis<32, 2, 5, 6>> out_stream;
    double fs = 20000.0;

    uint32_t bram[SIZE_OFFSET];
    bram[NUM_TAPS_OFFSET]      = 25;
    bram[LOWER_CUTOFF_OFFSET]  = 1000;
    bram[UPPER_CUTOFF_OFFSET]  = 5000;
    bram[SAMPLING_RATE_OFFSET] = (uint32_t) fs;


    // --- Pick ONE test case at a time ---

    // TEST A: 3000 Hz — center of passband, should PASS THROUGH
    double f_test = 2500.0;

    // TEST B: 100 Hz — below passband, should be REJECTED (~0 output)
    //double f_test = 100.0;

    // TEST C: 8000 Hz — above passband, should be REJECTED (~0 output)
     //double f_test = 8000.0;

    for (int i = 0; i < NUM_SAMPLES; i++) {
        ap_axis<32, 2, 5, 6> sample;

        double s = 2500.0 * std::sin(2.0 * PI * f_test / fs * i);
        sample.data = (int32_t)s;
        sample.last = (i == NUM_SAMPLES - 1) ? 1 : 0;
        in_stream.write(sample);
            std::cout <<"Fir_in: "<< (int32_t)s << "\n";

    }

    firTop(in_stream, out_stream, bram);

    std::cout << "Filtered output (f_test=" << f_test << " Hz):\n";
    for (int i = 0; i < NUM_SAMPLES; i++) {
        ap_axis<32, 2, 5, 6> out_sample = out_stream.read();

        // Skip startup transient (first N-1 samples)
        if (i >= 24) {
            std::cout << "sample[" << i << "] = "
                      << out_sample.data.to_double() << "\n";
        }
    }

    return 0;
}