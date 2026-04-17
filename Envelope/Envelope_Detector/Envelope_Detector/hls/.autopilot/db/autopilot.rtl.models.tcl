set SynModuleInfo {
  {SRCNAME __hls_fptosi_float_i32 MODELNAME p_hls_fptosi_float_i32 RTLNAME hilbert_envelope_axis_p_hls_fptosi_float_i32}
  {SRCNAME hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1 MODELNAME hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1 RTLNAME hilbert_envelope_axis_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1
    SUBMODULES {
      {MODELNAME hilbert_envelope_axis_sitofp_64ns_32_4_no_dsp_1 RTLNAME hilbert_envelope_axis_sitofp_64ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME hilbert_envelope_axis_fsqrt_32ns_32ns_32_8_no_dsp_1 RTLNAME hilbert_envelope_axis_fsqrt_32ns_32ns_32_8_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME hilbert_envelope_axis_mul_32s_32s_64_1_1 RTLNAME hilbert_envelope_axis_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hilbert_envelope_axis_flow_control_loop_pipe_sequential_init RTLNAME hilbert_envelope_axis_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hilbert_envelope_axis_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME hilbert_envelope_axis MODELNAME hilbert_envelope_axis RTLNAME hilbert_envelope_axis IS_TOP 1
    SUBMODULES {
      {MODELNAME hilbert_envelope_axis_x_RAM_AUTO_1R1W RTLNAME hilbert_envelope_axis_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hilbert_envelope_axis_regslice_both RTLNAME hilbert_envelope_axis_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
