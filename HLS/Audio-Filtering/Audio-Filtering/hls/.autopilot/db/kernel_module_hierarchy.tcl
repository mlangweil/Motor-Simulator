set ModuleHierarchy {[{
"Name" : "calculateCoefficients","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_23_2","ID" : "2","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_19_1","ID" : "3","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_sin_or_cos_float_s_fu_518","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_sin_or_cos_float_Pipeline_1_fu_302","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "6","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_float_Pipeline_2_fu_310","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "8","Type" : "pipeline"},]},]},
	{"Name" : "grp_sin_or_cos_float_s_fu_531","ID" : "9","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_sin_or_cos_float_Pipeline_1_fu_302","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "11","Type" : "pipeline"},]},
			{"Name" : "grp_sin_or_cos_float_Pipeline_2_fu_310","ID" : "12","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "13","Type" : "pipeline"},]},]},]},]
}]}