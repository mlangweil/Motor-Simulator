set SynModuleInfo {
  {SRCNAME firTop_Pipeline_VITIS_LOOP_14_1 MODELNAME firTop_Pipeline_VITIS_LOOP_14_1 RTLNAME firTop_firTop_Pipeline_VITIS_LOOP_14_1
    SUBMODULES {
      {MODELNAME firTop_flow_control_loop_pipe_sequential_init RTLNAME firTop_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME firTop_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sin_or_cos<double>_Pipeline_1 MODELNAME sin_or_cos_double_Pipeline_1 RTLNAME firTop_sin_or_cos_double_Pipeline_1}
  {SRCNAME sin_or_cos<double>_Pipeline_2 MODELNAME sin_or_cos_double_Pipeline_2 RTLNAME firTop_sin_or_cos_double_Pipeline_2}
  {SRCNAME sin_or_cos<double>_Pipeline_3 MODELNAME sin_or_cos_double_Pipeline_3 RTLNAME firTop_sin_or_cos_double_Pipeline_3
    SUBMODULES {
      {MODELNAME firTop_sparsemux_9_2_32_1_1 RTLNAME firTop_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME sin_or_cos<double>_Pipeline_4 MODELNAME sin_or_cos_double_Pipeline_4 RTLNAME firTop_sin_or_cos_double_Pipeline_4}
  {SRCNAME sin_or_cos<double> MODELNAME sin_or_cos_double_s RTLNAME firTop_sin_or_cos_double_s
    SUBMODULES {
      {MODELNAME firTop_mul_35ns_25ns_60_1_1 RTLNAME firTop_mul_35ns_25ns_60_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_42ns_33ns_75_1_1 RTLNAME firTop_mul_42ns_33ns_75_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_49ns_44s_93_1_1 RTLNAME firTop_mul_49ns_44s_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_49ns_49ns_98_1_1 RTLNAME firTop_mul_49ns_49ns_98_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_56ns_52s_108_1_1 RTLNAME firTop_mul_56ns_52s_108_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_64s_63ns_126_1_1 RTLNAME firTop_mul_64s_63ns_126_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME firTop_mul_170s_53ns_170_2_1 RTLNAME firTop_mul_170s_53ns_170_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sparsemux_17_3_1_1_1 RTLNAME firTop_sparsemux_17_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME firTop_sparsemux_33_4_1_1_1 RTLNAME firTop_sparsemux_33_4_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME firTop_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R RTLNAME firTop_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R RTLNAME firTop_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME firTop_Pipeline_VITIS_LOOP_121_3 MODELNAME firTop_Pipeline_VITIS_LOOP_121_3 RTLNAME firTop_firTop_Pipeline_VITIS_LOOP_121_3}
  {SRCNAME fir_Pipeline_Shift_Accum_Loop MODELNAME fir_Pipeline_Shift_Accum_Loop RTLNAME firTop_fir_Pipeline_Shift_Accum_Loop
    SUBMODULES {
      {MODELNAME firTop_dadd_64ns_64ns_64_4_no_dsp_1 RTLNAME firTop_dadd_64ns_64ns_64_4_no_dsp_1 BINDTYPE op TYPE dadd IMPL fabric LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fir MODELNAME fir RTLNAME firTop_fir
    SUBMODULES {
      {MODELNAME firTop_fir_shift_reg_RAM_AUTO_1R1W RTLNAME firTop_fir_shift_reg_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME firTop MODELNAME firTop RTLNAME firTop IS_TOP 1
    SUBMODULES {
      {MODELNAME firTop_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME firTop_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME firTop_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME firTop_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME firTop_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME firTop_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME firTop_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME firTop_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME firTop_sitodp_32ns_64_4_no_dsp_1 RTLNAME firTop_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME firTop_taps_RAM_AUTO_1R1W RTLNAME firTop_taps_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_bramVal_RAM_AUTO_1R1W RTLNAME firTop_bramVal_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME firTop_gmem_m_axi RTLNAME firTop_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME firTop_control_s_axi RTLNAME firTop_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME firTop_regslice_both RTLNAME firTop_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
