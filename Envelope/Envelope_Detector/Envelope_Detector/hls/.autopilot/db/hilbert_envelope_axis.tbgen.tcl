set moduleName hilbert_envelope_axis
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {hilbert_envelope_axis}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_V_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 2 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 5 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 6 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 2 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 5 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 6 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 2 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 6 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 2 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 5 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 6 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "hilbert_envelope_axis",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "p_ZL1x_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZL1x_0", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "0", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.env_sample_p_hls_fptosi_float_i32_fu_381", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_64ns_32_4_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_8_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_no_ap_cont_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hilbert_envelope_axis {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 14}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 14}
		p_ZL1x_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZL1x_0 {Type IO LastRead -1 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 2 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 5 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 6 } } }
	out_stream_V_data_V { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 2 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TDEST out_data 1 6 } } }
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
