
#include <iostream>
#include <stdint.h>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "hls_math.h"
#include "ap_fixed.h"

#define TAPS 25
using namespace std;
typedef int64_t data_c;


void calculateCoefficients(int lowerCutoff, int upperCutoff, int samplingRate,
                          data_c *bram);