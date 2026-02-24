set moduleName calculateCoefficients
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {calculateCoefficients}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ lowerCutoff int 32 regular {axi_slave 0}  }
	{ upperCutoff int 32 regular {axi_slave 0}  }
	{ samplingRate float 32 regular {axi_slave 0}  }
	{ coefficients_V_data_V int 32 regular {axi_s 1 volatile  { coefficients Data } }  }
	{ coefficients_V_keep_V int 4 regular {axi_s 1 volatile  { coefficients Keep } }  }
	{ coefficients_V_strb_V int 4 regular {axi_s 1 volatile  { coefficients Strb } }  }
	{ coefficients_V_user_V int 2 regular {axi_s 1 volatile  { coefficients User } }  }
	{ coefficients_V_last_V int 1 regular {axi_s 1 volatile  { coefficients Last } }  }
	{ coefficients_V_id_V int 5 regular {axi_s 1 volatile  { coefficients ID } }  }
	{ coefficients_V_dest_V int 6 regular {axi_s 1 volatile  { coefficients Dest } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "lowerCutoff", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "upperCutoff", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "samplingRate", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "coefficients_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "coefficients_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ coefficients_TDATA sc_out sc_lv 32 signal 3 } 
	{ coefficients_TVALID sc_out sc_logic 1 outvld 9 } 
	{ coefficients_TREADY sc_in sc_logic 1 outacc 9 } 
	{ coefficients_TKEEP sc_out sc_lv 4 signal 4 } 
	{ coefficients_TSTRB sc_out sc_lv 4 signal 5 } 
	{ coefficients_TUSER sc_out sc_lv 2 signal 6 } 
	{ coefficients_TLAST sc_out sc_lv 1 signal 7 } 
	{ coefficients_TID sc_out sc_lv 5 signal 8 } 
	{ coefficients_TDEST sc_out sc_lv 6 signal 9 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"lowerCutoff","role":"data","value":"16"},{"name":"upperCutoff","role":"data","value":"24"},{"name":"samplingRate","role":"data","value":"32"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "coefficients_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficients_V_data_V", "role": "default" }} , 
 	{ "name": "coefficients_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "coefficients_V_dest_V", "role": "default" }} , 
 	{ "name": "coefficients_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "coefficients_V_dest_V", "role": "default" }} , 
 	{ "name": "coefficients_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coefficients_V_keep_V", "role": "default" }} , 
 	{ "name": "coefficients_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "coefficients_V_strb_V", "role": "default" }} , 
 	{ "name": "coefficients_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "coefficients_V_user_V", "role": "default" }} , 
 	{ "name": "coefficients_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficients_V_last_V", "role": "default" }} , 
 	{ "name": "coefficients_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "coefficients_V_id_V", "role": "default" }} , 
 	{ "name": "coefficients_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficients_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "calculateCoefficients",
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
			{"Name" : "lowerCutoff", "Type" : "None", "Direction" : "I"},
			{"Name" : "upperCutoff", "Type" : "None", "Direction" : "I"},
			{"Name" : "samplingRate", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefficients_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_data_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_keep_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_strb_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_user_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_last_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_id_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "coefficients_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Port" : "coefficients_V_dest_V", "Inst_start_state" : "34", "Inst_end_state" : "73"}]},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sin_or_cos_float_s_fu_531", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_518", "Port" : "ref_4oPi_table_100", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sin_or_cos_float_s_fu_531", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_518", "Port" : "second_order_float_sin_cos_K0", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sin_or_cos_float_s_fu_531", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_518", "Port" : "second_order_float_sin_cos_K1", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_sin_or_cos_float_s_fu_531", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_518", "Port" : "second_order_float_sin_cos_K2", "Inst_start_state" : "41", "Inst_end_state" : "42"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "74", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state72"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state73"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculateCoefficients_Pipeline_VITIS_LOOP_23_2_fu_284", "Parent" : "0",
		"CDFG" : "calculateCoefficients_Pipeline_VITIS_LOOP_23_2",
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
			{"Name" : "cmp_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "coefficients_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients",
				"BlockSignal" : [
					{"Name" : "coefficients_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coefficients_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "coefficients_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "coefficients_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "coefficients_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "coefficients_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "coefficients_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "coefficients"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp26_i_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv29_i_i_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp91", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp95", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp99", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp103", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp107", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp111", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp115", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp119", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp123", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp127", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp131", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp135", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp139", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp143", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp147", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp151", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp155", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp159", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp163", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp167", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp170", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp173", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp176", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_i_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp32_i_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp34_i_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "9", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.ref_4oPi_table_100_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.second_order_float_sin_cos_K0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.second_order_float_sin_cos_K1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.second_order_float_sin_cos_K2_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.grp_sin_or_cos_float_Pipeline_1_fu_302", "Parent" : "2", "Child" : ["8"],
		"CDFG" : "sin_or_cos_float_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_bits_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_bits", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.grp_sin_or_cos_float_Pipeline_1_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.grp_sin_or_cos_float_Pipeline_2_fu_310", "Parent" : "2", "Child" : ["10"],
		"CDFG" : "sin_or_cos_float_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln291_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.grp_sin_or_cos_float_Pipeline_2_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.mul_23s_22ns_45_1_1_U10", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.mul_30s_29ns_58_1_1_U11", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.mul_80s_24ns_80_1_1_U12", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.sparsemux_17_3_1_1_1_U13", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.sparsemux_33_4_1_1_1_U14", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.sparsemux_33_4_1_1_1_U15", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.mul_15ns_15ns_30_1_1_U16", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_518.mul_15ns_15s_30_1_1_U17", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "26", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.ref_4oPi_table_100_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.second_order_float_sin_cos_K0_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.second_order_float_sin_cos_K1_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.second_order_float_sin_cos_K2_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.grp_sin_or_cos_float_Pipeline_1_fu_302", "Parent" : "19", "Child" : ["25"],
		"CDFG" : "sin_or_cos_float_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_bits_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_bits", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.grp_sin_or_cos_float_Pipeline_1_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.grp_sin_or_cos_float_Pipeline_2_fu_310", "Parent" : "19", "Child" : ["27"],
		"CDFG" : "sin_or_cos_float_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "result", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln291_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.grp_sin_or_cos_float_Pipeline_2_fu_310.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.mul_23s_22ns_45_1_1_U10", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.mul_30s_29ns_58_1_1_U11", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.mul_80s_24ns_80_1_1_U12", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.sparsemux_17_3_1_1_1_U13", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.sparsemux_33_4_1_1_1_U14", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.sparsemux_33_4_1_1_1_U15", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.mul_15ns_15ns_30_1_1_U16", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_531.mul_15ns_15s_30_1_1_U17", "Parent" : "19"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_4_full_dsp_1_U254", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U255", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U256", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U257", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U258", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U259", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U260", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U261", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U262", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U263", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U264", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U265", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U266", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_data_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_keep_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_strb_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_user_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_last_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_id_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_coefficients_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calculateCoefficients {
		lowerCutoff {Type I LastRead 0 FirstWrite -1}
		upperCutoff {Type I LastRead 0 FirstWrite -1}
		samplingRate {Type I LastRead 0 FirstWrite -1}
		coefficients_V_data_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_keep_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_strb_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_user_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_last_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_id_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_dest_V {Type O LastRead -1 FirstWrite 1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	calculateCoefficients_Pipeline_VITIS_LOOP_23_2 {
		cmp_i_i {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_cast {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		coefficients_V_data_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_keep_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_strb_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_user_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_last_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_id_V {Type O LastRead -1 FirstWrite 1}
		coefficients_V_dest_V {Type O LastRead -1 FirstWrite 1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_23 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_23 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_23_cast {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_22 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_22 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_22_cast {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_21 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_21 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_21_cast {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_20 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_20 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_20_cast {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_19 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_19 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_19_cast {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_18 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_18 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_18_cast {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_17 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_17 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_17_cast {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_16 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_16 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_16_cast {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_15 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_15 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_15_cast {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_14 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_14 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_14_cast {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_13 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_13 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_13_cast {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_12 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_12 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_12_cast {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_11 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_11 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_11_cast {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_10 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_10 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_10_cast {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_9 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_9 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_9_cast {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_8 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_8 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_8_cast {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_7 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_7 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_7_cast {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_6 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_6 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_6_cast {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_5 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_5 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_5_cast {Type I LastRead 0 FirstWrite -1}
		empty_56 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_4 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_4 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_4_cast {Type I LastRead 0 FirstWrite -1}
		empty_57 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_3 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_3 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_3_cast {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_2 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_2 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_2_cast {Type I LastRead 0 FirstWrite -1}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i_1 {Type I LastRead 0 FirstWrite -1}
		cmp26_i_i_1 {Type I LastRead 0 FirstWrite -1}
		conv29_i_i_1_cast {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i {Type I LastRead 0 FirstWrite -1}
		empty_60 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i {Type I LastRead 0 FirstWrite -1}
		icmp {Type I LastRead 0 FirstWrite -1}
		shl_i_i {Type I LastRead 0 FirstWrite -1}
		icmp91 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_1 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_1 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_1 {Type I LastRead 0 FirstWrite -1}
		empty_61 {Type I LastRead 0 FirstWrite -1}
		icmp95 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_2 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_2 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_2 {Type I LastRead 0 FirstWrite -1}
		empty_62 {Type I LastRead 0 FirstWrite -1}
		icmp99 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_3 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_3 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_3 {Type I LastRead 0 FirstWrite -1}
		empty_63 {Type I LastRead 0 FirstWrite -1}
		icmp103 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_4 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_4 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_4 {Type I LastRead 0 FirstWrite -1}
		empty_64 {Type I LastRead 0 FirstWrite -1}
		icmp107 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_5 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_5 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_5 {Type I LastRead 0 FirstWrite -1}
		empty_65 {Type I LastRead 0 FirstWrite -1}
		icmp111 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_6 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_6 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_6 {Type I LastRead 0 FirstWrite -1}
		empty_66 {Type I LastRead 0 FirstWrite -1}
		icmp115 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_7 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_7 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_7 {Type I LastRead 0 FirstWrite -1}
		empty_67 {Type I LastRead 0 FirstWrite -1}
		icmp119 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_8 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_8 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_8 {Type I LastRead 0 FirstWrite -1}
		empty_68 {Type I LastRead 0 FirstWrite -1}
		icmp123 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_9 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_9 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_9 {Type I LastRead 0 FirstWrite -1}
		empty_69 {Type I LastRead 0 FirstWrite -1}
		icmp127 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_10 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_10 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_10 {Type I LastRead 0 FirstWrite -1}
		empty_70 {Type I LastRead 0 FirstWrite -1}
		icmp131 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_11 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_11 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_11 {Type I LastRead 0 FirstWrite -1}
		empty_71 {Type I LastRead 0 FirstWrite -1}
		icmp135 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_12 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_12 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_12 {Type I LastRead 0 FirstWrite -1}
		empty_72 {Type I LastRead 0 FirstWrite -1}
		icmp139 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_13 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_13 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_13 {Type I LastRead 0 FirstWrite -1}
		empty_73 {Type I LastRead 0 FirstWrite -1}
		icmp143 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_14 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_14 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_14 {Type I LastRead 0 FirstWrite -1}
		empty_74 {Type I LastRead 0 FirstWrite -1}
		icmp147 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_15 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_15 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_15 {Type I LastRead 0 FirstWrite -1}
		empty_75 {Type I LastRead 0 FirstWrite -1}
		icmp151 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_16 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_16 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_16 {Type I LastRead 0 FirstWrite -1}
		empty_76 {Type I LastRead 0 FirstWrite -1}
		icmp155 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_17 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_17 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_17 {Type I LastRead 0 FirstWrite -1}
		empty_77 {Type I LastRead 0 FirstWrite -1}
		icmp159 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_18 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_18 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_18 {Type I LastRead 0 FirstWrite -1}
		empty_78 {Type I LastRead 0 FirstWrite -1}
		icmp163 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_19 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_19 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_19 {Type I LastRead 0 FirstWrite -1}
		empty_79 {Type I LastRead 0 FirstWrite -1}
		icmp167 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_20 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_20 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_20 {Type I LastRead 0 FirstWrite -1}
		empty_80 {Type I LastRead 0 FirstWrite -1}
		icmp170 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_21 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_21 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_21 {Type I LastRead 0 FirstWrite -1}
		empty_81 {Type I LastRead 0 FirstWrite -1}
		icmp173 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_22 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_22 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_22 {Type I LastRead 0 FirstWrite -1}
		empty_82 {Type I LastRead 0 FirstWrite -1}
		icmp176 {Type I LastRead 0 FirstWrite -1}
		shl_i_i_23 {Type I LastRead 0 FirstWrite -1}
		cmp32_i_i_23 {Type I LastRead 0 FirstWrite -1}
		cmp34_i_i_23 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_Pipeline_1 {
		out_bits_1 {Type I LastRead 0 FirstWrite -1}
		out_bits {Type I LastRead 0 FirstWrite -1}
		c_1_out {Type O LastRead -1 FirstWrite 0}
		c_out {Type O LastRead -1 FirstWrite 0}}
	sin_or_cos_float_Pipeline_2 {
		result {Type I LastRead 0 FirstWrite -1}
		c_1_reload {Type I LastRead 0 FirstWrite -1}
		c_reload {Type I LastRead 0 FirstWrite -1}
		shift_1_out {Type O LastRead -1 FirstWrite 1}
		select_ln291_1_out {Type O LastRead -1 FirstWrite 1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_Pipeline_1 {
		out_bits_1 {Type I LastRead 0 FirstWrite -1}
		out_bits {Type I LastRead 0 FirstWrite -1}
		c_1_out {Type O LastRead -1 FirstWrite 0}
		c_out {Type O LastRead -1 FirstWrite 0}}
	sin_or_cos_float_Pipeline_2 {
		result {Type I LastRead 0 FirstWrite -1}
		c_1_reload {Type I LastRead 0 FirstWrite -1}
		c_reload {Type I LastRead 0 FirstWrite -1}
		shift_1_out {Type O LastRead -1 FirstWrite 1}
		select_ln291_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coefficients_V_data_V { axis {  { coefficients_TDATA out_data 1 32 } } }
	coefficients_V_keep_V { axis {  { coefficients_TKEEP out_data 1 4 } } }
	coefficients_V_strb_V { axis {  { coefficients_TSTRB out_data 1 4 } } }
	coefficients_V_user_V { axis {  { coefficients_TUSER out_data 1 2 } } }
	coefficients_V_last_V { axis {  { coefficients_TLAST out_data 1 1 } } }
	coefficients_V_id_V { axis {  { coefficients_TID out_data 1 5 } } }
	coefficients_V_dest_V { axis {  { coefficients_TVALID out_vld 1 1 }  { coefficients_TREADY out_acc 0 1 }  { coefficients_TDEST out_data 1 6 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
