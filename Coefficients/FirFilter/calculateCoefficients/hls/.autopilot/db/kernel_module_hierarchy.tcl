set ModuleHierarchy {[{
"Name" : "firTop","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_13_1_fu_366","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_13_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_82_1_fu_377","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_82_1","ID" : "4","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_sin_or_cos_float_s_fu_140","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "grp_firTop_Pipeline_VITIS_LOOP_102_2_fu_397","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_102_2","ID" : "7","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_31_2","ID" : "8","Type" : "no",
	"SubLoops" : [
	{"Name" : "Shift_Accum_Loop","ID" : "9","Type" : "no"},]},]
}]}