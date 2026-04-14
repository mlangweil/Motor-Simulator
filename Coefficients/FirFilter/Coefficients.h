
#include "ap_axi_sdata.h"
#include "ap_fixed.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <ap_float.h>
#include <iostream>
#include <stdint.h>

using namespace std;
typedef ap_axis<32, 2, 5, 6> axis_pkt_t;
#define MAX_TAPS 100
typedef enum {
  NUM_TAPS_OFFSET = 0,
  LOWER_CUTOFF_OFFSET = 1,
  UPPER_CUTOFF_OFFSET = 2,
  SAMPLING_RATE_OFFSET = 3,
  READ_SUCCESS = 4
} registers;
void fir(double *y, double c[MAX_TAPS], double x, int N);

void calculateCoefficients(int N, int lowerCutoff, int upperCutoff,
                           int samplingRate, double *taps);
void firTop(hls::stream<ap_axis<32, 2, 5, 6>> &in_stream,
            hls::stream<ap_axis<32, 2, 5, 6>> &out_stream, uint32_t *bram);