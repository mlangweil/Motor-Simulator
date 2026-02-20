# Motor-Simulator
EECE4632

To do:
- Create Fir filter
- Create a control register area to configure over axilite - this will store the data like cutoff freqs, fixed period, vpp etc

Proposed FIR filter process:
1. User inputs cutoff frequences
2. Communication over AXILite to a configuration block
   - This block takes the cutoff frequencies, calculates it, and stores the coefficients which will be used for our FIR. The coefficients are defined by the tap size and the impulse response. This block will act as a configuration block area. Think about it like the scalar_add https://pynq.readthedocs.io/en/latest/overlay_design_methodology/overlay_tutorial.html.
   - The reason for this block is because we don't want to keep calculating the coefficients, only once at the beginning.
   - FIR filter axilite will read this block and pull the coefficients everytime.
3. python -> FIR data will be streamed in
  
