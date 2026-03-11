set SynModuleInfo {
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME calculateCoefficients_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME calculateCoefficients_mul_23s_22ns_45_1_0 RTLNAME calculateCoefficients_mul_23s_22ns_45_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_mul_30s_29ns_58_1_0 RTLNAME calculateCoefficients_mul_30s_29ns_58_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_mul_80s_24ns_80_1_0 RTLNAME calculateCoefficients_mul_80s_24ns_80_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sparsemux_17_3_1_1_0 RTLNAME calculateCoefficients_sparsemux_17_3_1_1_0 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calculateCoefficients_sparsemux_33_4_1_1_0 RTLNAME calculateCoefficients_sparsemux_33_4_1_1_0 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calculateCoefficients_mul_15ns_15ns_30_1_0 RTLNAME calculateCoefficients_mul_15ns_15ns_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_mul_15ns_15s_30_1_0 RTLNAME calculateCoefficients_mul_15ns_15s_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R RTLNAME calculateCoefficients_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R RTLNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R RTLNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R RTLNAME calculateCoefficients_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateCoefficients_Pipeline_VITIS_LOOP_16_1 MODELNAME calculateCoefficients_Pipeline_VITIS_LOOP_16_1 RTLNAME calculateCoefficients_calculateCoefficients_Pipeline_VITIS_LOOP_16_1
    SUBMODULES {
      {MODELNAME calculateCoefficients_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME calculateCoefficients_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sitofp_32s_32_4_no_dsp_1 RTLNAME calculateCoefficients_sitofp_32s_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sitodp_32s_64_4_no_dsp_1 RTLNAME calculateCoefficients_sitodp_32s_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_flow_control_loop_pipe_sequential_init RTLNAME calculateCoefficients_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calculateCoefficients_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME calculateCoefficients MODELNAME calculateCoefficients RTLNAME calculateCoefficients IS_TOP 1
    SUBMODULES {
      {MODELNAME calculateCoefficients_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME calculateCoefficients_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_fptrunc_64ns_32_2_no_dsp_1 RTLNAME calculateCoefficients_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_fpext_32ns_64_2_no_dsp_1 RTLNAME calculateCoefficients_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME calculateCoefficients_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME calculateCoefficients_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_sitodp_32ns_64_4_no_dsp_1 RTLNAME calculateCoefficients_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateCoefficients_gmem_m_axi RTLNAME calculateCoefficients_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME calculateCoefficients_control_s_axi RTLNAME calculateCoefficients_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
