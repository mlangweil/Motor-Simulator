#include <iostream>
#include <fstream>
#include <cmath>
#include "hilbert.h"

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

int main() {
    const int N = 300;
    const double f_sig = 50.0; // sine wave frequency in Hz
    const double fs = 50*f_sig; // sample rate in Hz
    const double amp = 1.5; // sine wave amplitude

    data_t in_sample;
    data_t envelope_out;

    std::ofstream fout("hilbert_output.csv");
    fout << "n,input,envelope\n";

    double env_sum = 0.0;
    int valid_count = 0;

    std::cout << "Running Hilbert envelope testbench...\n";
    std::cout << "n\tinput\tenvelope\n";

    for (int n = 0; n < N; n++) {
    double x = amp * std::sin(2.0 * M_PI * f_sig * n / fs);
    in_sample = (data_t)x;

    hilbert_envelope_sym(in_sample, envelope_out);

    double in_val = (double)in_sample;
    double env_val = (double)envelope_out;

    fout << n << "," << in_val << "," << env_val << "\n";

    if (n < 40) {
    std::cout << n << "\t" << in_val << "\t" << env_val << "\n";
    }

    // Ignore startup transient from shift register filling
    if (n > 40) {
    env_sum += env_val;
    valid_count++;
    }
    }

    fout.close();

    double avg_env = env_sum / valid_count;
    double error = std::fabs(avg_env - amp);
    double percent_error=(abs((amp-avg_env)/amp));
    std::cout << "\nAverage envelope after startup = " << avg_env << std::endl;
    std::cout << "Expected envelope = " << amp << std::endl;
    std::cout << "Absolute error = " << error << std::endl;
    std::cout << "Percent error = " << percent_error  << std::endl;


    if (percent_error<.2){
    std::cout << "TEST PASSED" << std::endl;
    return 0;
    } else {
    std::cout << "TEST FAILED" << std::endl;
    return 1;
}
}
