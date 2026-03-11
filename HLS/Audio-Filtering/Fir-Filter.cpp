#include "Fir-Filter.h"


void fir_top(hls::stream< ap_axis<32,2,5,6> > &in, float coef[TAPS], hls::stream< ap_axis<32,2,5,6> > &out) 
{
    #pragma HLS INTERFACE mode=bram port=coef
    #pragma HLS INTERFACE mode=axis port=out
    #pragma HLS INTERFACE axis port=in

        ap_axis<32,2,5,6> tmp;

while (1) {
    in.read(tmp);
    tmp.data = tmp.data.to_int(); // this is the fir calculations
    out.write(tmp);
    if (tmp.last) {
      break;
    }
  }
}

