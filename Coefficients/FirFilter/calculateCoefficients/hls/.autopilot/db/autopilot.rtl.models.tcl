set SynModuleInfo {
  {SRCNAME firTop_Pipeline_VITIS_LOOP_13_1 MODELNAME firTop_Pipeline_VITIS_LOOP_13_1 RTLNAME firTop_firTop_Pipeline_VITIS_LOOP_13_1
    SUBMODULES {
      {MODELNAME firTop_flow_control_loop_pipe_sequential_init RTLNAME firTop_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME firTop_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME firTop_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME firTop_mul_23s_22ns_45_1_0 RTLNAME firTop_mul_23s_22ns_45_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_30s_29ns_58_1_0 RTLNAME firTop_mul_30s_29ns_58_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_80s_24ns_80_1_0 RTLNAME firTop_mul_80s_24ns_80_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sparsemux_17_3_1_1_0 RTLNAME firTop_sparsemux_17_3_1_1_0 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME firTop_sparsemux_33_4_1_1_0 RTLNAME firTop_sparsemux_33_4_1_1_0 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME firTop_mul_15ns_15ns_30_1_0 RTLNAME firTop_mul_15ns_15ns_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_15ns_15s_30_1_0 RTLNAME firTop_mul_15ns_15s_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_float_s_ref_4oPi_table_100_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_float_s_second_order_float_sin_cos_K2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME firTop_Pipeline_VITIS_LOOP_82_1 MODELNAME firTop_Pipeline_VITIS_LOOP_82_1 RTLNAME firTop_firTop_Pipeline_VITIS_LOOP_82_1
    SUBMODULES {
      {MODELNAME firTop_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME firTop_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME firTop_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME firTop_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_fptrunc_64ns_32_2_no_dsp_1 RTLNAME firTop_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME firTop_fpext_32ns_64_2_no_dsp_1 RTLNAME firTop_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME firTop_Pipeline_VITIS_LOOP_102_2 MODELNAME firTop_Pipeline_VITIS_LOOP_102_2 RTLNAME firTop_firTop_Pipeline_VITIS_LOOP_102_2}
  {SRCNAME firTop MODELNAME firTop RTLNAME firTop IS_TOP 1
    SUBMODULES {
      {MODELNAME firTop_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME firTop_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME firTop_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME firTop_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME firTop_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME firTop_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sitodp_32ns_64_4_no_dsp_1 RTLNAME firTop_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME firTop_shift_reg_RAM_AUTO_1R1W RTLNAME firTop_shift_reg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_taps_RAM_AUTO_1R1W RTLNAME firTop_taps_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_gmem_m_axi RTLNAME firTop_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME firTop_control_s_axi RTLNAME firTop_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME firTop_regslice_both RTLNAME firTop_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
