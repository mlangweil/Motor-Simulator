set moduleName fir_Pipeline_Shift_Accum_Loop
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
set C_modelName {fir_Pipeline_Shift_Accum_Loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 2408 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict shift_reg { MEM_WIDTH 64 MEM_SIZE 2408 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ x double 64 regular  }
	{ c double 64 regular {array 301 { 1 3 } 1 1 }  }
	{ acc_1_out double 64 regular {pointer 1}  }
	{ shift_reg double 64 regular {array 301 { 2 3 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "acc_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shift_reg", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ x sc_in sc_lv 64 signal 1 } 
	{ c_address0 sc_out sc_lv 9 signal 2 } 
	{ c_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_q0 sc_in sc_lv 64 signal 2 } 
	{ acc_1_out sc_out sc_lv 64 signal 3 } 
	{ acc_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ shift_reg_address0 sc_out sc_lv 9 signal 4 } 
	{ shift_reg_ce0 sc_out sc_logic 1 signal 4 } 
	{ shift_reg_we0 sc_out sc_logic 1 signal 4 } 
	{ shift_reg_d0 sc_out sc_lv 64 signal 4 } 
	{ shift_reg_q0 sc_in sc_lv 64 signal 4 } 
	{ grp_fu_1005_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1005_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1005_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1005_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1005_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1009_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1009_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1009_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1009_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "q0" }} , 
 	{ "name": "acc_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_1_out", "role": "default" }} , 
 	{ "name": "acc_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_1_out", "role": "ap_vld" }} , 
 	{ "name": "shift_reg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "shift_reg", "role": "address0" }} , 
 	{ "name": "shift_reg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift_reg", "role": "ce0" }} , 
 	{ "name": "shift_reg_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift_reg", "role": "we0" }} , 
 	{ "name": "shift_reg_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "shift_reg", "role": "d0" }} , 
 	{ "name": "shift_reg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "shift_reg", "role": "q0" }} , 
 	{ "name": "grp_fu_1005_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1005_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1005_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1005_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1005_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1005_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1005_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1009_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1009_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1009_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1009_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1009_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fir_Pipeline_Shift_Accum_Loop",
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
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_Pipeline_Shift_Accum_Loop {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 1 FirstWrite -1}
		acc_1_out {Type O LastRead -1 FirstWrite 8}
		shift_reg {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	x { ap_none {  { x in_data 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 9 }  { c_ce0 mem_ce 1 1 }  { c_q0 mem_dout 0 64 } } }
	acc_1_out { ap_vld {  { acc_1_out out_data 1 64 }  { acc_1_out_ap_vld out_vld 1 1 } } }
	shift_reg { ap_memory {  { shift_reg_address0 mem_address 1 9 }  { shift_reg_ce0 mem_ce 1 1 }  { shift_reg_we0 mem_we 1 1 }  { shift_reg_d0 mem_din 1 64 }  { shift_reg_q0 mem_dout 0 64 } } }
}
