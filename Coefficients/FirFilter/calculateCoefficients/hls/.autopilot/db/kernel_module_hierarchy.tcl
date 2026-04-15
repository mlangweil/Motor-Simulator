set ModuleHierarchy {[{
"Name" : "firTop","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_14_1_fu_708","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_14_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_92_1","ID" : "4","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "sin_or_cos_double_s","ID" : "5","Type" : "pipeline"},
		{"Name" : "grp_sin_or_cos_double_s_fu_146","ID" : "6","Type" : "pipeline"},
		{"Name" : "grp_sin_or_cos_double_s_fu_165","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_113_2","ID" : "9","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "sin_or_cos_double_s","ID" : "10","Type" : "pipeline"},]},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_119_3_fu_763","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_119_3","ID" : "12","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_26_2","ID" : "13","Type" : "no",
	"SubLoops" : [
	{"Name" : "Shift_Accum_Loop","ID" : "14","Type" : "no"},]},]
}]}