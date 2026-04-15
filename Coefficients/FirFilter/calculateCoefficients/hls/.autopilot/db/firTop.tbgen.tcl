set moduleName firTop
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
set C_modelName {firTop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
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
	{ bram int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "bram","offset": { "type": "dynamic","port_name": "bram","bundle": "control"},"direction": "READWRITE"}]}]} , 
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
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bram", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 7 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 7 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 2 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 3 } 
	{ in_stream_TUSER sc_in sc_lv 2 signal 4 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 5 } 
	{ in_stream_TID sc_in sc_lv 5 signal 6 } 
	{ in_stream_TDEST sc_in sc_lv 6 signal 7 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 8 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 14 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 14 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 9 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 10 } 
	{ out_stream_TUSER sc_out sc_lv 2 signal 11 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 12 } 
	{ out_stream_TID sc_out sc_lv 5 signal 13 } 
	{ out_stream_TDEST sc_out sc_lv 6 signal 14 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"firTop","role":"start","value":"0","valid_bit":"0"},{"name":"firTop","role":"continue","value":"0","valid_bit":"4"},{"name":"firTop","role":"auto_start","value":"0","valid_bit":"7"},{"name":"bram","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"firTop","role":"start","value":"0","valid_bit":"0"},{"name":"firTop","role":"done","value":"0","valid_bit":"1"},{"name":"firTop","role":"idle","value":"0","valid_bit":"2"},{"name":"firTop","role":"ready","value":"0","valid_bit":"3"},{"name":"firTop","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "56", "58", "60", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "firTop",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_14_1_fu_708", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
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
			{"Name" : "bram", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "5", "SubInstance" : "grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Shift_Accum_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "150", "FirstState" : "ap_ST_fsm_state137", "LastState" : ["ap_ST_fsm_state149"], "QuitState" : ["ap_ST_fsm_state137"], "PreState" : ["ap_ST_fsm_state86"], "PostState" : ["ap_ST_fsm_state136"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_26_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "150", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state150"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.taps_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_14_1_fu_708", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "firTop_Pipeline_VITIS_LOOP_14_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_14_1_fu_708.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719", "Parent" : "0", "Child" : ["6", "27", "48", "49", "50", "51", "52", "53", "54", "55"],
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
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "ref_4oPi_table_256", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K0", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K1", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K2", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K3", "Inst_start_state" : "32", "Inst_end_state" : "41"}]},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_sin_or_cos_double_s_fu_146", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "15", "Inst_end_state" : "24"},
					{"ID" : "27", "SubInstance" : "grp_sin_or_cos_double_s_fu_165", "Port" : "fourth_order_double_sin_cos_K4", "Inst_start_state" : "32", "Inst_end_state" : "41"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter56", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter56", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146", "Parent" : "5", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.ref_4oPi_table_256_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K0_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K1_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K2_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K3_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.fourth_order_double_sin_cos_K4_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_35ns_25ns_60_1_1_U7", "Parent" : "6"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_42ns_33ns_75_1_1_U8", "Parent" : "6"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_49ns_44s_93_1_1_U9", "Parent" : "6"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U10", "Parent" : "6"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U11", "Parent" : "6"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_49ns_49ns_98_1_1_U12", "Parent" : "6"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_56ns_52s_108_1_1_U13", "Parent" : "6"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_64s_63ns_126_1_1_U14", "Parent" : "6"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.mul_170s_53ns_170_2_1_U15", "Parent" : "6"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.sparsemux_17_3_1_1_1_U16", "Parent" : "6"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.sparsemux_33_4_1_1_1_U17", "Parent" : "6"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.sparsemux_33_4_1_1_1_U18", "Parent" : "6"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.sparsemux_9_3_62_1_1_U19", "Parent" : "6"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_146.sparsemux_9_3_32_1_1_U20", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165", "Parent" : "5", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.ref_4oPi_table_256_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K0_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K1_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K2_U", "Parent" : "27"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K3_U", "Parent" : "27"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.fourth_order_double_sin_cos_K4_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_35ns_25ns_60_1_1_U7", "Parent" : "27"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_42ns_33ns_75_1_1_U8", "Parent" : "27"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_49ns_44s_93_1_1_U9", "Parent" : "27"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U10", "Parent" : "27"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U11", "Parent" : "27"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_49ns_49ns_98_1_1_U12", "Parent" : "27"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_56ns_52s_108_1_1_U13", "Parent" : "27"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_64s_63ns_126_1_1_U14", "Parent" : "27"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.mul_170s_53ns_170_2_1_U15", "Parent" : "27"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.sparsemux_17_3_1_1_1_U16", "Parent" : "27"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.sparsemux_33_4_1_1_1_U17", "Parent" : "27"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.sparsemux_33_4_1_1_1_U18", "Parent" : "27"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.sparsemux_9_3_62_1_1_U19", "Parent" : "27"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.grp_sin_or_cos_double_s_fu_165.sparsemux_9_3_32_1_1_U20", "Parent" : "27"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dsub_64ns_64ns_64_5_full_dsp_1_U42", "Parent" : "5"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dmul_64ns_64ns_64_5_max_dsp_1_U44", "Parent" : "5"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dmul_64ns_64ns_64_5_max_dsp_1_U45", "Parent" : "5"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dmul_64ns_64ns_64_5_max_dsp_1_U46", "Parent" : "5"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dmul_64ns_64ns_64_5_max_dsp_1_U47", "Parent" : "5"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.dmul_64ns_64ns_64_5_max_dsp_1_U48", "Parent" : "5"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.sitodp_32ns_64_4_no_dsp_1_U51", "Parent" : "5"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_92_1_fu_719.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742", "Parent" : "0", "Child" : ["57"],
		"CDFG" : "firTop_Pipeline_VITIS_LOOP_113_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "534",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload120", "Type" : "None", "Direction" : "I"},
			{"Name" : "taps", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "M", "Type" : "None", "Direction" : "I"},
			{"Name" : "centerOmega", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_re_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_113_2_fu_742.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_119_3_fu_763", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "firTop_Pipeline_VITIS_LOOP_119_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "150",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload120", "Type" : "None", "Direction" : "I"},
			{"Name" : "taps", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gain_re_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_119_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter22", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter22", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_firTop_Pipeline_VITIS_LOOP_119_3_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453", "Parent" : "0", "Child" : ["61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
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
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.ref_4oPi_table_256_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.fourth_order_double_sin_cos_K0_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.fourth_order_double_sin_cos_K1_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.fourth_order_double_sin_cos_K2_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.fourth_order_double_sin_cos_K3_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.fourth_order_double_sin_cos_K4_U", "Parent" : "60"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_35ns_25ns_60_1_1_U7", "Parent" : "60"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_42ns_33ns_75_1_1_U8", "Parent" : "60"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_49ns_44s_93_1_1_U9", "Parent" : "60"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_49ns_49ns_98_1_1_U10", "Parent" : "60"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_49ns_49ns_98_1_1_U11", "Parent" : "60"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_49ns_49ns_98_1_1_U12", "Parent" : "60"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_56ns_52s_108_1_1_U13", "Parent" : "60"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_64s_63ns_126_1_1_U14", "Parent" : "60"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.mul_170s_53ns_170_2_1_U15", "Parent" : "60"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.sparsemux_17_3_1_1_1_U16", "Parent" : "60"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.sparsemux_33_4_1_1_1_U17", "Parent" : "60"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.sparsemux_33_4_1_1_1_U18", "Parent" : "60"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.sparsemux_9_3_62_1_1_U19", "Parent" : "60"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_double_s_fu_1453.sparsemux_9_3_32_1_1_U20", "Parent" : "60"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U75", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U78", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U79", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U80", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U81", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U82", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	firTop {
		gmem {Type IO LastRead 88 FirstWrite -1}
		in_stream_V_data_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 82 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 82 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 135}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 135}
		bram {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}
		shift_reg {Type IO LastRead -1 FirstWrite -1}}
	firTop_Pipeline_VITIS_LOOP_14_1 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln14 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}}
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
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}}
	firTop_Pipeline_VITIS_LOOP_113_2 {
		p_reload120 {Type I LastRead 0 FirstWrite -1}
		taps {Type I LastRead 16 FirstWrite -1}
		M {Type I LastRead 0 FirstWrite -1}
		centerOmega {Type I LastRead 0 FirstWrite -1}
		gain_re_out {Type O LastRead -1 FirstWrite 24}
		ref_4oPi_table_256 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3 {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4 {Type I LastRead -1 FirstWrite -1}}
	firTop_Pipeline_VITIS_LOOP_119_3 {
		p_reload120 {Type I LastRead 0 FirstWrite -1}
		taps {Type IO LastRead 0 FirstWrite 22}
		gain_re_reload {Type I LastRead 0 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
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
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
