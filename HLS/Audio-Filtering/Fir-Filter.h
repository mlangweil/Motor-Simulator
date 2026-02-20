#include "ap_int.h"
#include "hls_math.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

#define TAPS 25
using namespace std;


void fir_top(hls::stream< ap_axis<32,2,5,6> > &in, float *coef, hls::stream< ap_axis<32,2,5,6> > &out);

