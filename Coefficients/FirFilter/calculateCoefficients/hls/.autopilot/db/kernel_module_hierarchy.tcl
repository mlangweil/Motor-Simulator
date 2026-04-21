set ModuleHierarchy {[{
"Name" : "firTop","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_14_1_fu_394","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_14_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_121_3_fu_441","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_121_3","ID" : "4","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_96_1","ID" : "5","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_sin_or_cos_double_s_fu_402","ID" : "6","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_sin_or_cos_double_Pipeline_1_fu_382","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "8","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_2_fu_389","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "10","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_3_fu_400","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "12","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_4_fu_412","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "14","Type" : "pipeline"},]},]},
	{"Name" : "grp_sin_or_cos_double_s_fu_421","ID" : "15","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_sin_or_cos_double_Pipeline_1_fu_382","ID" : "16","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "17","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_2_fu_389","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "19","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_3_fu_400","ID" : "20","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "21","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_double_Pipeline_4_fu_412","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "23","Type" : "pipeline"},]},]},]},
	{"Name" : "VITIS_LOOP_116_2","ID" : "24","Type" : "no"},
	{"Name" : "VITIS_LOOP_26_2","ID" : "25","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_fir_fu_448","ID" : "26","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_fir_Pipeline_Shift_Accum_Loop_fu_970","ID" : "27","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Shift_Accum_Loop","ID" : "28","Type" : "pipeline"},]},]},]},]
}]}