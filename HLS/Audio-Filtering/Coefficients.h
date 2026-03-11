
#include <iostream>
#include <stdint.h>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "math.h"

#define TAPS 25
using namespace std;


void calculateCoefficients(int lowerCutoff, int upperCutoff, float samplingRate,
                          int *bram);