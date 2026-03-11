set ModuleHierarchy {[{
"Name" : "calculateCoefficients","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_16_1_fu_116","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_16_1","ID" : "2","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_sin_or_cos_float_s_fu_116","ID" : "3","Type" : "pipeline"},
		{"Name" : "grp_sin_or_cos_float_s_fu_129","ID" : "4","Type" : "pipeline"},]},]},]
}]}