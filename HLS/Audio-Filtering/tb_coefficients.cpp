#include <iostream>
#include <cmath>
#include "Coefficients.h"
#include "Coefficients.h"
// Forward declaration of your HLS function
void calculateCoefficients(int lowerCutoff, int upperCutoff, float samplingRate,
                           float *bram);

int main() {
    float bram[TAPS];

    // Example filter parameters
    int lowerCutoff = 1000;  // Hz
    int upperCutoff = 5000;  // Hz
    float samplingRate = 48000.0f; // Hz

    // Call the HLS function
    calculateCoefficients(lowerCutoff, upperCutoff, samplingRate, bram);

    // Print the coefficients
    std::cout << "FIR Coefficients:\n";
    for (int i = 0; i < TAPS; i++) {
        std::cout << "bram[" << i << "] = " << bram[i] << "\n";
    }

    // Optional: verify sum (should be approx upperCutoff-lowerCutoff normalized)
    float sum = 0.0f;
    for (int i = 0; i < TAPS; i++) sum += bram[i];
    std::cout << "Sum of coefficients: " << sum << std::endl;

    return 0;
}
