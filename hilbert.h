
#ifndef HILBERT_ENVELOPE_H
#define HILBERT_ENVELOPE_H

#include "ap_fixed.h"

typedef ap_fixed<16, 2> data_t;
typedef ap_fixed<32, 6> acc_t;

void hilbert_envelope_sym(data_t in, data_t &envelope);

#endif
