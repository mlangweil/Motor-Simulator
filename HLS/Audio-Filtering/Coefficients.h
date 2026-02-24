
#include <iostream>
#include <stdint.h>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "math.h"

#define TAPS 25
using namespace std;

void calculateCoefficients(int lowCutoff, int highCutoff, float samplingRate,
                           hls::stream<ap_axis<32, 2, 5, 6>> &coefficients);