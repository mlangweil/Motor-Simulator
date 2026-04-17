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
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 2 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 6 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
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
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
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
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_data_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_user_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_last_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_id_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_data_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_user_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_last_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_id_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "151", "Inst_end_state" : "152"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
		"CDFG" : "hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1",
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
			{"Name" : "x_load_298", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_297", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_296", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_295", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_294", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_293", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_292", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_291", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_290", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_289", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_288", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_287", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_286", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_285", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_284", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_283", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_282", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_281", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_280", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_279", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_278", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_277", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_276", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_275", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_274", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_273", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_272", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_271", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_270", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_269", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_268", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_267", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_266", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_265", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_264", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_263", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_262", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_261", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_260", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_259", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_258", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_257", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_256", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_254", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_253", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_252", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_251", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_250", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_249", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_248", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_247", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_246", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_245", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_244", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_243", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_242", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_241", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_240", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_239", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_238", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_237", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_236", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_235", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_234", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_233", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_232", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_231", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_230", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_229", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_228", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_227", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_226", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_225", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_224", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_223", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_222", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_221", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_220", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_219", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_218", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_217", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_216", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_215", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_214", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_213", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_212", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_211", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_210", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_209", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_208", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_206", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_205", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_204", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_203", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_202", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_201", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_200", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_199", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_198", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_197", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_195", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_189", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_188", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_186", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_185", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_184", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_183", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_182", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_181", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_180", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_179", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_178", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_177", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_176", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_174", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_173", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_172", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_171", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_170", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_169", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_168", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_167", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_166", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_165", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_164", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_163", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_162", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_161", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_160", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_159", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_158", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_157", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_156", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_155", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_154", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_153", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_152", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_151", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_150", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_149", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_148", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_147", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_146", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_145", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_144", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_143", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_142", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_141", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_140", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_139", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_138", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_137", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_136", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_135", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_134", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_133", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_132", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_131", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_130", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_129", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_128", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_126", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_125", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_123", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.env_sample_p_hls_fptosi_float_i32_fu_3765", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.sitofp_64ns_32_4_no_dsp_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.fsqrt_32ns_32ns_32_8_no_dsp_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.mul_32s_32s_64_1_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.mul_32s_32s_64_1_1_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1_fu_980.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hilbert_envelope_axis {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 16}
		x {Type IO LastRead -1 FirstWrite -1}}
	hilbert_envelope_axis_Pipeline_VITIS_LOOP_69_1 {
		x_load_298 {Type I LastRead 0 FirstWrite -1}
		x_load_297 {Type I LastRead 0 FirstWrite -1}
		x_load_296 {Type I LastRead 0 FirstWrite -1}
		x_load_295 {Type I LastRead 0 FirstWrite -1}
		x_load_294 {Type I LastRead 0 FirstWrite -1}
		x_load_293 {Type I LastRead 0 FirstWrite -1}
		x_load_292 {Type I LastRead 0 FirstWrite -1}
		x_load_291 {Type I LastRead 0 FirstWrite -1}
		x_load_290 {Type I LastRead 0 FirstWrite -1}
		x_load_289 {Type I LastRead 0 FirstWrite -1}
		x_load_288 {Type I LastRead 0 FirstWrite -1}
		x_load_287 {Type I LastRead 0 FirstWrite -1}
		x_load_286 {Type I LastRead 0 FirstWrite -1}
		x_load_285 {Type I LastRead 0 FirstWrite -1}
		x_load_284 {Type I LastRead 0 FirstWrite -1}
		x_load_283 {Type I LastRead 0 FirstWrite -1}
		x_load_282 {Type I LastRead 0 FirstWrite -1}
		x_load_281 {Type I LastRead 0 FirstWrite -1}
		x_load_280 {Type I LastRead 0 FirstWrite -1}
		x_load_279 {Type I LastRead 0 FirstWrite -1}
		x_load_278 {Type I LastRead 0 FirstWrite -1}
		x_load_277 {Type I LastRead 0 FirstWrite -1}
		x_load_276 {Type I LastRead 0 FirstWrite -1}
		x_load_275 {Type I LastRead 0 FirstWrite -1}
		x_load_274 {Type I LastRead 0 FirstWrite -1}
		x_load_273 {Type I LastRead 0 FirstWrite -1}
		x_load_272 {Type I LastRead 0 FirstWrite -1}
		x_load_271 {Type I LastRead 0 FirstWrite -1}
		x_load_270 {Type I LastRead 0 FirstWrite -1}
		x_load_269 {Type I LastRead 0 FirstWrite -1}
		x_load_268 {Type I LastRead 0 FirstWrite -1}
		x_load_267 {Type I LastRead 0 FirstWrite -1}
		x_load_266 {Type I LastRead 0 FirstWrite -1}
		x_load_265 {Type I LastRead 0 FirstWrite -1}
		x_load_264 {Type I LastRead 0 FirstWrite -1}
		x_load_263 {Type I LastRead 0 FirstWrite -1}
		x_load_262 {Type I LastRead 0 FirstWrite -1}
		x_load_261 {Type I LastRead 0 FirstWrite -1}
		x_load_260 {Type I LastRead 0 FirstWrite -1}
		x_load_259 {Type I LastRead 0 FirstWrite -1}
		x_load_258 {Type I LastRead 0 FirstWrite -1}
		x_load_257 {Type I LastRead 0 FirstWrite -1}
		x_load_256 {Type I LastRead 0 FirstWrite -1}
		x_load_255 {Type I LastRead 0 FirstWrite -1}
		x_load_254 {Type I LastRead 0 FirstWrite -1}
		x_load_253 {Type I LastRead 0 FirstWrite -1}
		x_load_252 {Type I LastRead 0 FirstWrite -1}
		x_load_251 {Type I LastRead 0 FirstWrite -1}
		x_load_250 {Type I LastRead 0 FirstWrite -1}
		x_load_249 {Type I LastRead 0 FirstWrite -1}
		x_load_248 {Type I LastRead 0 FirstWrite -1}
		x_load_247 {Type I LastRead 0 FirstWrite -1}
		x_load_246 {Type I LastRead 0 FirstWrite -1}
		x_load_245 {Type I LastRead 0 FirstWrite -1}
		x_load_244 {Type I LastRead 0 FirstWrite -1}
		x_load_243 {Type I LastRead 0 FirstWrite -1}
		x_load_242 {Type I LastRead 0 FirstWrite -1}
		x_load_241 {Type I LastRead 0 FirstWrite -1}
		x_load_240 {Type I LastRead 0 FirstWrite -1}
		x_load_239 {Type I LastRead 0 FirstWrite -1}
		x_load_238 {Type I LastRead 0 FirstWrite -1}
		x_load_237 {Type I LastRead 0 FirstWrite -1}
		x_load_236 {Type I LastRead 0 FirstWrite -1}
		x_load_235 {Type I LastRead 0 FirstWrite -1}
		x_load_234 {Type I LastRead 0 FirstWrite -1}
		x_load_233 {Type I LastRead 0 FirstWrite -1}
		x_load_232 {Type I LastRead 0 FirstWrite -1}
		x_load_231 {Type I LastRead 0 FirstWrite -1}
		x_load_230 {Type I LastRead 0 FirstWrite -1}
		x_load_229 {Type I LastRead 0 FirstWrite -1}
		x_load_228 {Type I LastRead 0 FirstWrite -1}
		x_load_227 {Type I LastRead 0 FirstWrite -1}
		x_load_226 {Type I LastRead 0 FirstWrite -1}
		x_load_225 {Type I LastRead 0 FirstWrite -1}
		x_load_224 {Type I LastRead 0 FirstWrite -1}
		x_load_223 {Type I LastRead 0 FirstWrite -1}
		x_load_222 {Type I LastRead 0 FirstWrite -1}
		x_load_221 {Type I LastRead 0 FirstWrite -1}
		x_load_220 {Type I LastRead 0 FirstWrite -1}
		x_load_219 {Type I LastRead 0 FirstWrite -1}
		x_load_218 {Type I LastRead 0 FirstWrite -1}
		x_load_217 {Type I LastRead 0 FirstWrite -1}
		x_load_216 {Type I LastRead 0 FirstWrite -1}
		x_load_215 {Type I LastRead 0 FirstWrite -1}
		x_load_214 {Type I LastRead 0 FirstWrite -1}
		x_load_213 {Type I LastRead 0 FirstWrite -1}
		x_load_212 {Type I LastRead 0 FirstWrite -1}
		x_load_211 {Type I LastRead 0 FirstWrite -1}
		x_load_210 {Type I LastRead 0 FirstWrite -1}
		x_load_209 {Type I LastRead 0 FirstWrite -1}
		x_load_208 {Type I LastRead 0 FirstWrite -1}
		x_load_207 {Type I LastRead 0 FirstWrite -1}
		x_load_206 {Type I LastRead 0 FirstWrite -1}
		x_load_205 {Type I LastRead 0 FirstWrite -1}
		x_load_204 {Type I LastRead 0 FirstWrite -1}
		x_load_203 {Type I LastRead 0 FirstWrite -1}
		x_load_202 {Type I LastRead 0 FirstWrite -1}
		x_load_201 {Type I LastRead 0 FirstWrite -1}
		x_load_200 {Type I LastRead 0 FirstWrite -1}
		x_load_199 {Type I LastRead 0 FirstWrite -1}
		x_load_198 {Type I LastRead 0 FirstWrite -1}
		x_load_197 {Type I LastRead 0 FirstWrite -1}
		x_load_196 {Type I LastRead 0 FirstWrite -1}
		x_load_195 {Type I LastRead 0 FirstWrite -1}
		x_load_194 {Type I LastRead 0 FirstWrite -1}
		x_load_193 {Type I LastRead 0 FirstWrite -1}
		x_load_192 {Type I LastRead 0 FirstWrite -1}
		x_load_191 {Type I LastRead 0 FirstWrite -1}
		x_load_190 {Type I LastRead 0 FirstWrite -1}
		x_load_189 {Type I LastRead 0 FirstWrite -1}
		x_load_188 {Type I LastRead 0 FirstWrite -1}
		x_load_187 {Type I LastRead 0 FirstWrite -1}
		x_load_186 {Type I LastRead 0 FirstWrite -1}
		x_load_185 {Type I LastRead 0 FirstWrite -1}
		x_load_184 {Type I LastRead 0 FirstWrite -1}
		x_load_183 {Type I LastRead 0 FirstWrite -1}
		x_load_182 {Type I LastRead 0 FirstWrite -1}
		x_load_181 {Type I LastRead 0 FirstWrite -1}
		x_load_180 {Type I LastRead 0 FirstWrite -1}
		x_load_179 {Type I LastRead 0 FirstWrite -1}
		x_load_178 {Type I LastRead 0 FirstWrite -1}
		x_load_177 {Type I LastRead 0 FirstWrite -1}
		x_load_176 {Type I LastRead 0 FirstWrite -1}
		x_load_175 {Type I LastRead 0 FirstWrite -1}
		x_load_174 {Type I LastRead 0 FirstWrite -1}
		x_load_173 {Type I LastRead 0 FirstWrite -1}
		x_load_172 {Type I LastRead 0 FirstWrite -1}
		x_load_171 {Type I LastRead 0 FirstWrite -1}
		x_load_170 {Type I LastRead 0 FirstWrite -1}
		x_load_169 {Type I LastRead 0 FirstWrite -1}
		x_load_168 {Type I LastRead 0 FirstWrite -1}
		x_load_167 {Type I LastRead 0 FirstWrite -1}
		x_load_166 {Type I LastRead 0 FirstWrite -1}
		x_load_165 {Type I LastRead 0 FirstWrite -1}
		x_load_164 {Type I LastRead 0 FirstWrite -1}
		x_load_163 {Type I LastRead 0 FirstWrite -1}
		x_load_162 {Type I LastRead 0 FirstWrite -1}
		x_load_161 {Type I LastRead 0 FirstWrite -1}
		x_load_160 {Type I LastRead 0 FirstWrite -1}
		x_load_159 {Type I LastRead 0 FirstWrite -1}
		x_load_158 {Type I LastRead 0 FirstWrite -1}
		x_load_157 {Type I LastRead 0 FirstWrite -1}
		x_load_156 {Type I LastRead 0 FirstWrite -1}
		x_load_155 {Type I LastRead 0 FirstWrite -1}
		x_load_154 {Type I LastRead 0 FirstWrite -1}
		x_load_153 {Type I LastRead 0 FirstWrite -1}
		x_load_152 {Type I LastRead 0 FirstWrite -1}
		x_load_151 {Type I LastRead 0 FirstWrite -1}
		x_load_150 {Type I LastRead 0 FirstWrite -1}
		x_load_149 {Type I LastRead 0 FirstWrite -1}
		x_load_148 {Type I LastRead 0 FirstWrite -1}
		x_load_147 {Type I LastRead 0 FirstWrite -1}
		x_load_146 {Type I LastRead 0 FirstWrite -1}
		x_load_145 {Type I LastRead 0 FirstWrite -1}
		x_load_144 {Type I LastRead 0 FirstWrite -1}
		x_load_143 {Type I LastRead 0 FirstWrite -1}
		x_load_142 {Type I LastRead 0 FirstWrite -1}
		x_load_141 {Type I LastRead 0 FirstWrite -1}
		x_load_140 {Type I LastRead 0 FirstWrite -1}
		x_load_139 {Type I LastRead 0 FirstWrite -1}
		x_load_138 {Type I LastRead 0 FirstWrite -1}
		x_load_137 {Type I LastRead 0 FirstWrite -1}
		x_load_136 {Type I LastRead 0 FirstWrite -1}
		x_load_135 {Type I LastRead 0 FirstWrite -1}
		x_load_134 {Type I LastRead 0 FirstWrite -1}
		x_load_133 {Type I LastRead 0 FirstWrite -1}
		x_load_132 {Type I LastRead 0 FirstWrite -1}
		x_load_131 {Type I LastRead 0 FirstWrite -1}
		x_load_130 {Type I LastRead 0 FirstWrite -1}
		x_load_129 {Type I LastRead 0 FirstWrite -1}
		x_load_128 {Type I LastRead 0 FirstWrite -1}
		x_load_127 {Type I LastRead 0 FirstWrite -1}
		x_load_126 {Type I LastRead 0 FirstWrite -1}
		x_load_125 {Type I LastRead 0 FirstWrite -1}
		x_load_124 {Type I LastRead 0 FirstWrite -1}
		x_load_123 {Type I LastRead 0 FirstWrite -1}
		x_load_122 {Type I LastRead 0 FirstWrite -1}
		x_load_121 {Type I LastRead 0 FirstWrite -1}
		x_load_120 {Type I LastRead 0 FirstWrite -1}
		x_load_119 {Type I LastRead 0 FirstWrite -1}
		x_load_118 {Type I LastRead 0 FirstWrite -1}
		x_load_117 {Type I LastRead 0 FirstWrite -1}
		x_load_116 {Type I LastRead 0 FirstWrite -1}
		x_load_115 {Type I LastRead 0 FirstWrite -1}
		x_load_114 {Type I LastRead 0 FirstWrite -1}
		x_load_113 {Type I LastRead 0 FirstWrite -1}
		x_load_112 {Type I LastRead 0 FirstWrite -1}
		x_load_111 {Type I LastRead 0 FirstWrite -1}
		x_load_110 {Type I LastRead 0 FirstWrite -1}
		x_load_109 {Type I LastRead 0 FirstWrite -1}
		x_load_108 {Type I LastRead 0 FirstWrite -1}
		x_load_107 {Type I LastRead 0 FirstWrite -1}
		x_load_106 {Type I LastRead 0 FirstWrite -1}
		x_load_105 {Type I LastRead 0 FirstWrite -1}
		x_load_104 {Type I LastRead 0 FirstWrite -1}
		x_load_103 {Type I LastRead 0 FirstWrite -1}
		x_load_102 {Type I LastRead 0 FirstWrite -1}
		x_load_101 {Type I LastRead 0 FirstWrite -1}
		x_load_100 {Type I LastRead 0 FirstWrite -1}
		x_load_99 {Type I LastRead 0 FirstWrite -1}
		x_load_98 {Type I LastRead 0 FirstWrite -1}
		x_load_97 {Type I LastRead 0 FirstWrite -1}
		x_load_96 {Type I LastRead 0 FirstWrite -1}
		x_load_95 {Type I LastRead 0 FirstWrite -1}
		x_load_94 {Type I LastRead 0 FirstWrite -1}
		x_load_93 {Type I LastRead 0 FirstWrite -1}
		x_load_92 {Type I LastRead 0 FirstWrite -1}
		x_load_91 {Type I LastRead 0 FirstWrite -1}
		x_load_90 {Type I LastRead 0 FirstWrite -1}
		x_load_89 {Type I LastRead 0 FirstWrite -1}
		x_load_88 {Type I LastRead 0 FirstWrite -1}
		x_load_87 {Type I LastRead 0 FirstWrite -1}
		x_load_86 {Type I LastRead 0 FirstWrite -1}
		x_load_85 {Type I LastRead 0 FirstWrite -1}
		x_load_84 {Type I LastRead 0 FirstWrite -1}
		x_load_83 {Type I LastRead 0 FirstWrite -1}
		x_load_82 {Type I LastRead 0 FirstWrite -1}
		x_load_81 {Type I LastRead 0 FirstWrite -1}
		x_load_80 {Type I LastRead 0 FirstWrite -1}
		x_load_79 {Type I LastRead 0 FirstWrite -1}
		x_load_78 {Type I LastRead 0 FirstWrite -1}
		x_load_77 {Type I LastRead 0 FirstWrite -1}
		x_load_76 {Type I LastRead 0 FirstWrite -1}
		x_load_75 {Type I LastRead 0 FirstWrite -1}
		x_load_74 {Type I LastRead 0 FirstWrite -1}
		x_load_73 {Type I LastRead 0 FirstWrite -1}
		x_load_72 {Type I LastRead 0 FirstWrite -1}
		x_load_71 {Type I LastRead 0 FirstWrite -1}
		x_load_70 {Type I LastRead 0 FirstWrite -1}
		x_load_69 {Type I LastRead 0 FirstWrite -1}
		x_load_68 {Type I LastRead 0 FirstWrite -1}
		x_load_67 {Type I LastRead 0 FirstWrite -1}
		x_load_66 {Type I LastRead 0 FirstWrite -1}
		x_load_65 {Type I LastRead 0 FirstWrite -1}
		x_load_64 {Type I LastRead 0 FirstWrite -1}
		x_load_63 {Type I LastRead 0 FirstWrite -1}
		x_load_62 {Type I LastRead 0 FirstWrite -1}
		x_load_61 {Type I LastRead 0 FirstWrite -1}
		x_load_60 {Type I LastRead 0 FirstWrite -1}
		x_load_59 {Type I LastRead 0 FirstWrite -1}
		x_load_58 {Type I LastRead 0 FirstWrite -1}
		x_load_57 {Type I LastRead 0 FirstWrite -1}
		x_load_56 {Type I LastRead 0 FirstWrite -1}
		x_load_55 {Type I LastRead 0 FirstWrite -1}
		x_load_54 {Type I LastRead 0 FirstWrite -1}
		x_load_53 {Type I LastRead 0 FirstWrite -1}
		x_load_52 {Type I LastRead 0 FirstWrite -1}
		x_load_51 {Type I LastRead 0 FirstWrite -1}
		x_load_50 {Type I LastRead 0 FirstWrite -1}
		x_load_49 {Type I LastRead 0 FirstWrite -1}
		x_load_48 {Type I LastRead 0 FirstWrite -1}
		x_load_47 {Type I LastRead 0 FirstWrite -1}
		x_load_46 {Type I LastRead 0 FirstWrite -1}
		x_load_45 {Type I LastRead 0 FirstWrite -1}
		x_load_44 {Type I LastRead 0 FirstWrite -1}
		x_load_43 {Type I LastRead 0 FirstWrite -1}
		x_load_42 {Type I LastRead 0 FirstWrite -1}
		x_load_41 {Type I LastRead 0 FirstWrite -1}
		x_load_40 {Type I LastRead 0 FirstWrite -1}
		x_load_39 {Type I LastRead 0 FirstWrite -1}
		x_load_38 {Type I LastRead 0 FirstWrite -1}
		x_load_37 {Type I LastRead 0 FirstWrite -1}
		x_load_36 {Type I LastRead 0 FirstWrite -1}
		x_load_35 {Type I LastRead 0 FirstWrite -1}
		x_load_34 {Type I LastRead 0 FirstWrite -1}
		x_load_33 {Type I LastRead 0 FirstWrite -1}
		x_load_32 {Type I LastRead 0 FirstWrite -1}
		x_load_31 {Type I LastRead 0 FirstWrite -1}
		x_load_30 {Type I LastRead 0 FirstWrite -1}
		x_load_29 {Type I LastRead 0 FirstWrite -1}
		x_load_28 {Type I LastRead 0 FirstWrite -1}
		x_load_27 {Type I LastRead 0 FirstWrite -1}
		x_load_26 {Type I LastRead 0 FirstWrite -1}
		x_load_25 {Type I LastRead 0 FirstWrite -1}
		x_load_24 {Type I LastRead 0 FirstWrite -1}
		x_load_23 {Type I LastRead 0 FirstWrite -1}
		x_load_22 {Type I LastRead 0 FirstWrite -1}
		x_load_21 {Type I LastRead 0 FirstWrite -1}
		x_load_20 {Type I LastRead 0 FirstWrite -1}
		x_load_19 {Type I LastRead 0 FirstWrite -1}
		x_load_18 {Type I LastRead 0 FirstWrite -1}
		x_load_17 {Type I LastRead 0 FirstWrite -1}
		x_load_16 {Type I LastRead 0 FirstWrite -1}
		x_load_15 {Type I LastRead 0 FirstWrite -1}
		x_load_14 {Type I LastRead 0 FirstWrite -1}
		x_load_13 {Type I LastRead 0 FirstWrite -1}
		x_load_12 {Type I LastRead 0 FirstWrite -1}
		x_load_11 {Type I LastRead 0 FirstWrite -1}
		x_load_10 {Type I LastRead 0 FirstWrite -1}
		x_load_9 {Type I LastRead 0 FirstWrite -1}
		x_load_8 {Type I LastRead 0 FirstWrite -1}
		x_load_7 {Type I LastRead 0 FirstWrite -1}
		x_load_6 {Type I LastRead 0 FirstWrite -1}
		x_load_5 {Type I LastRead 0 FirstWrite -1}
		x_load_4 {Type I LastRead 0 FirstWrite -1}
		x_load_3 {Type I LastRead 0 FirstWrite -1}
		x_load_2 {Type I LastRead 0 FirstWrite -1}
		x_load_1 {Type I LastRead 0 FirstWrite -1}
		x_load {Type I LastRead 0 FirstWrite -1}
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 16}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 16}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 2 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 5 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 6 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 2 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDEST out_data 1 6 } } }
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
