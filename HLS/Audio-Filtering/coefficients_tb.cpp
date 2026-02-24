#include "Coefficients.h"

int main() {
    cout<<"Testbench started"<<endl;
    int lowerCutoff = 5000, upperCutoff = 10000;
    float samplingRate = 20000;
    hls::stream<ap_axis<32, 2, 5, 6>> coefficients;
    ap_axis<32, 2, 5, 6> data;
    calculateCoefficients( lowerCutoff,  upperCutoff,  samplingRate, coefficients);
    for (int j = 0; j < TAPS; j++)
    {
        coefficients.read(data);
        cout<<"Data " << j <<data.data.to_int()<<endl;
    }
    return 0;
}