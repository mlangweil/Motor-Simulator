set moduleName firTop_Pipeline_VITIS_LOOP_92_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {firTop_Pipeline_VITIS_LOOP_92_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict taps { MEM_WIDTH 64 MEM_SIZE 808 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ p_reload120 int 32 regular  }
	{ div10_i double 64 regular  }
	{ conv23_i double 64 regular  }
	{ taps double 64 regular {array 101 { 0 3 } 0 1 }  }
	{ M int 32 regular  }
	{ omegaUpper double 64 regular  }
	{ omegaLower double 64 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_reload120", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "div10_i", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv23_i", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "taps", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "omegaUpper", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "omegaLower", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_reload120 sc_in sc_lv 32 signal 0 } 
	{ div10_i sc_in sc_lv 64 signal 1 } 
	{ conv23_i sc_in sc_lv 64 signal 2 } 
	{ taps_address0 sc_out sc_lv 7 signal 3 } 
	{ taps_ce0 sc_out sc_logic 1 signal 3 } 
	{ taps_we0 sc_out sc_logic 1 signal 3 } 
	{ taps_d0 sc_out sc_lv 64 signal 3 } 
	{ M sc_in sc_lv 32 signal 4 } 
	{ omegaUpper sc_in sc_lv 64 signal 5 } 
	{ omegaLower sc_in sc_lv 64 signal 6 } 
	{ grp_fu_770_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_770_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_770_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_770_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_770_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_780_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_780_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_780_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_780_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_787_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_787_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_787_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_787_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_791_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_791_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_791_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_791_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_801_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_801_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_801_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_sin_or_cos_double_s_fu_1453_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_sin_or_cos_double_s_fu_1453_p_din2 sc_out sc_lv 1 signal -1 } 
	{ grp_sin_or_cos_double_s_fu_1453_p_dout0 sc_in sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_reload120", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload120", "role": "default" }} , 
 	{ "name": "div10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "div10_i", "role": "default" }} , 
 	{ "name": "conv23_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv23_i", "role": "default" }} , 
 	{ "name": "taps_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "taps", "role": "address0" }} , 
 	{ "name": "taps_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taps", "role": "ce0" }} , 
 	{ "name": "taps_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taps", "role": "we0" }} , 
 	{ "name": "taps_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "taps", "role": "d0" }} , 
 	{ "name": "M", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "default" }} , 
 	{ "name": "omegaUpper", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "omegaUpper", "role": "default" }} , 
 	{ "name": "omegaLower", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "omegaLower", "role": "default" }} , 
 	{ "name": "grp_fu_770_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_770_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_770_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_770_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_770_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_770_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_770_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_770_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_770_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_770_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_780_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_780_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_780_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_780_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_780_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_787_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_787_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_787_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_787_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_787_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_787_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_787_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_787_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_791_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_791_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_791_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_791_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_791_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_791_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_791_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_791_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_801_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_801_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_801_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_801_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_801_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_801_p_ce", "role": "default" }} , 
 	{ "name": "grp_sin_or_cos_double_s_fu_1453_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_sin_or_cos_double_s_fu_1453_p_din1", "role": "default" }} , 
 	{ "name": "grp_sin_or_cos_double_s_fu_1453_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_sin_or_cos_double_s_fu_1453_p_din2", "role": "default" }} , 
 	{ "name": "grp_sin_or_cos_double_s_fu_1453_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_sin_or_cos_double_s_fu_1453_p_dout0", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "22", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "firTop_Pipeline_VITIS_LOOP_92_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload120", "Type" : "None", "Direction" : "I"},
			{"Name" : "div10_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv23_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "taps", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"},
			{"Name" : "omegaUpper", "Type" : "None", "Direction" : "I"},
			{"Name" : "omegaLower", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "22", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "32", "Inst_end_state" : "41"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter56", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter56", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.ref_4oPi_table_256_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K0_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K2_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K3_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K4_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_35ns_25ns_60_1_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_42ns_33ns_75_1_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_49ns_44s_93_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_56ns_52s_108_1_1_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_64s_63ns_126_1_1_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.mul_170s_53ns_170_2_1_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.sparsemux_17_3_1_1_1_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.sparsemux_33_4_1_1_1_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.sparsemux_33_4_1_1_1_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.sparsemux_9_3_62_1_1_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_146.sparsemux_9_3_32_1_1_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.ref_4oPi_table_256_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K0_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K1_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K2_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K3_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K4_U", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_35ns_25ns_60_1_1_U7", "Parent" : "22"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_42ns_33ns_75_1_1_U8", "Parent" : "22"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_49ns_44s_93_1_1_U9", "Parent" : "22"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U10", "Parent" : "22"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U11", "Parent" : "22"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U12", "Parent" : "22"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_56ns_52s_108_1_1_U13", "Parent" : "22"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_64s_63ns_126_1_1_U14", "Parent" : "22"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.mul_170s_53ns_170_2_1_U15", "Parent" : "22"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.sparsemux_17_3_1_1_1_U16", "Parent" : "22"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.sparsemux_33_4_1_1_1_U17", "Parent" : "22"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.sparsemux_33_4_1_1_1_U18", "Parent" : "22"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.sparsemux_9_3_62_1_1_U19", "Parent" : "22"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_165.sparsemux_9_3_32_1_1_U20", "Parent" : "22"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U42", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U51", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	firTop_Pipeline_VITIS_LOOP_92_1 {
		p_reload120 {Type I LastRead 0 FirstWrite -1}
		div10_i {Type I LastRead 0 FirstWrite -1}
		conv23_i {Type I LastRead 0 FirstWrite -1}
		taps {Type O LastRead -1 FirstWrite 56}
		M {Type I LastRead 0 FirstWrite -1}
		omegaUpper {Type I LastRead 0 FirstWrite -1}
		omegaLower {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_reload120 { ap_none {  { p_reload120 in_data 0 32 } } }
	div10_i { ap_none {  { div10_i in_data 0 64 } } }
	conv23_i { ap_none {  { conv23_i in_data 0 64 } } }
	taps { ap_memory {  { taps_address0 mem_address 1 7 }  { taps_ce0 mem_ce 1 1 }  { taps_we0 mem_we 1 1 }  { taps_d0 mem_din 1 64 } } }
	M { ap_none {  { M in_data 0 32 } } }
	omegaUpper { ap_none {  { omegaUpper in_data 0 64 } } }
	omegaLower { ap_none {  { omegaLower in_data 0 64 } } }
}
