set moduleName vec_vec_op_streaming
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
set C_modelName {vec_vec_op_streaming}
set C_modelType { void 0 }
set C_modelArgList {
	{ op uint 8 regular {axi_slave 0}  }
	{ vec1_V_data_V int 128 regular {axi_s 0 volatile  { vec1 Data } }  }
	{ vec1_V_keep_V int 16 regular {axi_s 0 volatile  { vec1 Keep } }  }
	{ vec1_V_strb_V int 16 regular {axi_s 0 volatile  { vec1 Strb } }  }
	{ vec1_V_user_V int 2 regular {axi_s 0 volatile  { vec1 User } }  }
	{ vec1_V_last_V int 1 regular {axi_s 0 volatile  { vec1 Last } }  }
	{ vec1_V_id_V int 5 regular {axi_s 0 volatile  { vec1 ID } }  }
	{ vec1_V_dest_V int 6 regular {axi_s 0 volatile  { vec1 Dest } }  }
	{ vec2_V_data_V int 128 regular {axi_s 0 volatile  { vec2 Data } }  }
	{ vec2_V_keep_V int 16 regular {axi_s 0 volatile  { vec2 Keep } }  }
	{ vec2_V_strb_V int 16 regular {axi_s 0 volatile  { vec2 Strb } }  }
	{ vec2_V_user_V int 2 regular {axi_s 0 volatile  { vec2 User } }  }
	{ vec2_V_last_V int 1 regular {axi_s 0 volatile  { vec2 Last } }  }
	{ vec2_V_id_V int 5 regular {axi_s 0 volatile  { vec2 ID } }  }
	{ vec2_V_dest_V int 6 regular {axi_s 0 volatile  { vec2 Dest } }  }
	{ vec_out_V_data_V int 128 regular {axi_s 1 volatile  { vec_out Data } }  }
	{ vec_out_V_keep_V int 16 regular {axi_s 1 volatile  { vec_out Keep } }  }
	{ vec_out_V_strb_V int 16 regular {axi_s 1 volatile  { vec_out Strb } }  }
	{ vec_out_V_user_V int 2 regular {axi_s 1 volatile  { vec_out User } }  }
	{ vec_out_V_last_V int 1 regular {axi_s 1 volatile  { vec_out Last } }  }
	{ vec_out_V_id_V int 5 regular {axi_s 1 volatile  { vec_out ID } }  }
	{ vec_out_V_dest_V int 6 regular {axi_s 1 volatile  { vec_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "op", "interface" : "axi_slave", "bundle":"BUS_A","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "op","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "vec1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.user.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.id.V","cData": "int5","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec1_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec1.V.dest.V","cData": "int6","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.user.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.id.V","cData": "int5","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec2_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec2.V.dest.V","cData": "int6","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.keep.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.strb.V","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.user.V","cData": "int2","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.id.V","cData": "int5","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "vec_out_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "vec_out.V.dest.V","cData": "int6","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ vec1_TDATA sc_in sc_lv 128 signal 1 } 
	{ vec1_TVALID sc_in sc_logic 1 invld 7 } 
	{ vec1_TREADY sc_out sc_logic 1 inacc 7 } 
	{ vec1_TKEEP sc_in sc_lv 16 signal 2 } 
	{ vec1_TSTRB sc_in sc_lv 16 signal 3 } 
	{ vec1_TUSER sc_in sc_lv 2 signal 4 } 
	{ vec1_TLAST sc_in sc_lv 1 signal 5 } 
	{ vec1_TID sc_in sc_lv 5 signal 6 } 
	{ vec1_TDEST sc_in sc_lv 6 signal 7 } 
	{ vec2_TDATA sc_in sc_lv 128 signal 8 } 
	{ vec2_TVALID sc_in sc_logic 1 invld 14 } 
	{ vec2_TREADY sc_out sc_logic 1 inacc 14 } 
	{ vec2_TKEEP sc_in sc_lv 16 signal 9 } 
	{ vec2_TSTRB sc_in sc_lv 16 signal 10 } 
	{ vec2_TUSER sc_in sc_lv 2 signal 11 } 
	{ vec2_TLAST sc_in sc_lv 1 signal 12 } 
	{ vec2_TID sc_in sc_lv 5 signal 13 } 
	{ vec2_TDEST sc_in sc_lv 6 signal 14 } 
	{ vec_out_TDATA sc_out sc_lv 128 signal 15 } 
	{ vec_out_TVALID sc_out sc_logic 1 outvld 21 } 
	{ vec_out_TREADY sc_in sc_logic 1 outacc 21 } 
	{ vec_out_TKEEP sc_out sc_lv 16 signal 16 } 
	{ vec_out_TSTRB sc_out sc_lv 16 signal 17 } 
	{ vec_out_TUSER sc_out sc_lv 2 signal 18 } 
	{ vec_out_TLAST sc_out sc_lv 1 signal 19 } 
	{ vec_out_TID sc_out sc_lv 5 signal 20 } 
	{ vec_out_TDEST sc_out sc_lv 6 signal 21 } 
	{ s_axi_BUS_A_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_BUS_A_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_BUS_A_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_BUS_A_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWADDR" },"address":[{"name":"vec_vec_op_streaming","role":"start","value":"0","valid_bit":"0"},{"name":"vec_vec_op_streaming","role":"continue","value":"0","valid_bit":"4"},{"name":"vec_vec_op_streaming","role":"auto_start","value":"0","valid_bit":"7"},{"name":"op","role":"data","value":"16"}] },
	{ "name": "s_axi_BUS_A_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWVALID" } },
	{ "name": "s_axi_BUS_A_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWREADY" } },
	{ "name": "s_axi_BUS_A_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WVALID" } },
	{ "name": "s_axi_BUS_A_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WREADY" } },
	{ "name": "s_axi_BUS_A_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "WDATA" } },
	{ "name": "s_axi_BUS_A_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS_A", "role": "WSTRB" } },
	{ "name": "s_axi_BUS_A_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARADDR" },"address":[{"name":"vec_vec_op_streaming","role":"start","value":"0","valid_bit":"0"},{"name":"vec_vec_op_streaming","role":"done","value":"0","valid_bit":"1"},{"name":"vec_vec_op_streaming","role":"idle","value":"0","valid_bit":"2"},{"name":"vec_vec_op_streaming","role":"ready","value":"0","valid_bit":"3"},{"name":"vec_vec_op_streaming","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_BUS_A_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARVALID" } },
	{ "name": "s_axi_BUS_A_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARREADY" } },
	{ "name": "s_axi_BUS_A_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RVALID" } },
	{ "name": "s_axi_BUS_A_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RREADY" } },
	{ "name": "s_axi_BUS_A_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "RDATA" } },
	{ "name": "s_axi_BUS_A_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "RRESP" } },
	{ "name": "s_axi_BUS_A_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BVALID" } },
	{ "name": "s_axi_BUS_A_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BREADY" } },
	{ "name": "s_axi_BUS_A_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "vec1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec1_V_data_V", "role": "default" }} , 
 	{ "name": "vec1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vec1_V_dest_V", "role": "default" }} , 
 	{ "name": "vec1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vec1_V_dest_V", "role": "default" }} , 
 	{ "name": "vec1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec1_V_keep_V", "role": "default" }} , 
 	{ "name": "vec1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec1_V_strb_V", "role": "default" }} , 
 	{ "name": "vec1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec1_V_user_V", "role": "default" }} , 
 	{ "name": "vec1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vec1_V_last_V", "role": "default" }} , 
 	{ "name": "vec1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec1_V_id_V", "role": "default" }} , 
 	{ "name": "vec1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vec1_V_dest_V", "role": "default" }} , 
 	{ "name": "vec2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec2_V_data_V", "role": "default" }} , 
 	{ "name": "vec2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vec2_V_dest_V", "role": "default" }} , 
 	{ "name": "vec2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vec2_V_dest_V", "role": "default" }} , 
 	{ "name": "vec2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec2_V_keep_V", "role": "default" }} , 
 	{ "name": "vec2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec2_V_strb_V", "role": "default" }} , 
 	{ "name": "vec2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec2_V_user_V", "role": "default" }} , 
 	{ "name": "vec2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vec2_V_last_V", "role": "default" }} , 
 	{ "name": "vec2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec2_V_id_V", "role": "default" }} , 
 	{ "name": "vec2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vec2_V_dest_V", "role": "default" }} , 
 	{ "name": "vec_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec_out_V_data_V", "role": "default" }} , 
 	{ "name": "vec_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vec_out_V_dest_V", "role": "default" }} , 
 	{ "name": "vec_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "vec_out_V_dest_V", "role": "default" }} , 
 	{ "name": "vec_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_out_V_keep_V", "role": "default" }} , 
 	{ "name": "vec_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_out_V_strb_V", "role": "default" }} , 
 	{ "name": "vec_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec_out_V_user_V", "role": "default" }} , 
 	{ "name": "vec_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_out_V_last_V", "role": "default" }} , 
 	{ "name": "vec_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec_out_V_id_V", "role": "default" }} , 
 	{ "name": "vec_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vec_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "vec_vec_op_streaming",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "op", "Type" : "None", "Direction" : "I"},
			{"Name" : "vec1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_data_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_data_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_data_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_data_V"}]},
			{"Name" : "vec1_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_keep_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_keep_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_keep_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_keep_V"}]},
			{"Name" : "vec1_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_strb_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_strb_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_strb_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_strb_V"}]},
			{"Name" : "vec1_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_user_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_user_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_user_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_user_V"}]},
			{"Name" : "vec1_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_last_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_last_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_last_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_last_V"}]},
			{"Name" : "vec1_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_id_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_id_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_id_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_id_V"}]},
			{"Name" : "vec1_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec1_V_dest_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec1_V_dest_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_V_dest_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec1_V_dest_V"}]},
			{"Name" : "vec2_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_data_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_data_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_data_V"}]},
			{"Name" : "vec2_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_keep_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_keep_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_keep_V"}]},
			{"Name" : "vec2_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_strb_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_strb_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_strb_V"}]},
			{"Name" : "vec2_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_user_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_user_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_user_V"}]},
			{"Name" : "vec2_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_last_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_last_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_last_V"}]},
			{"Name" : "vec2_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_id_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_id_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_id_V"}]},
			{"Name" : "vec2_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec2_V_dest_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec2_V_dest_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec2_V_dest_V"}]},
			{"Name" : "vec_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_data_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_data_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_data_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_data_V"}]},
			{"Name" : "vec_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_keep_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_keep_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_keep_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_keep_V"}]},
			{"Name" : "vec_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_strb_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_strb_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_strb_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_strb_V"}]},
			{"Name" : "vec_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_user_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_user_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_user_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_user_V"}]},
			{"Name" : "vec_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_last_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_last_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_last_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_last_V"}]},
			{"Name" : "vec_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_id_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_id_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_id_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_id_V"}]},
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_vector_subtract_fu_124", "Port" : "vec_out_V_dest_V"},
					{"ID" : "4", "SubInstance" : "grp_vector_add_fu_170", "Port" : "vec_out_V_dest_V"},
					{"ID" : "2", "SubInstance" : "grp_vector_scale_fu_92", "Port" : "vec_out_V_dest_V"},
					{"ID" : "5", "SubInstance" : "grp_vector_add2_fu_216", "Port" : "vec_out_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.BUS_A_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vector_scale_fu_92", "Parent" : "0",
		"CDFG" : "vector_scale",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "vec_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vec_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vector_subtract_fu_124", "Parent" : "0",
		"CDFG" : "vector_subtract",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "vec1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec1_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec2_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vec_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vector_add_fu_170", "Parent" : "0",
		"CDFG" : "vector_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "vec1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec1_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec2_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vec_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vector_add2_fu_216", "Parent" : "0",
		"CDFG" : "vector_add2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "vec1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec1_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec1_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vec2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec2_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec2_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "vec_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "vec_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vec_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_user_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_id_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec1_V_dest_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_data_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_keep_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_strb_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_user_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_last_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_id_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec2_V_dest_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_vec_out_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vec_vec_op_streaming {
		op {Type I LastRead 0 FirstWrite -1}
		vec1_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}
	vector_scale {
		vec_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}
	vector_subtract {
		vec1_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}
	vector_add {
		vec1_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}
	vector_add2 {
		vec1_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec1_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_data_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_keep_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_strb_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_user_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_last_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_id_V {Type I LastRead 1 FirstWrite -1}
		vec2_V_dest_V {Type I LastRead 1 FirstWrite -1}
		vec_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "37"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	vec1_V_data_V { axis {  { vec1_TDATA in_data 0 128 } } }
	vec1_V_keep_V { axis {  { vec1_TKEEP in_data 0 16 } } }
	vec1_V_strb_V { axis {  { vec1_TSTRB in_data 0 16 } } }
	vec1_V_user_V { axis {  { vec1_TUSER in_data 0 2 } } }
	vec1_V_last_V { axis {  { vec1_TLAST in_data 0 1 } } }
	vec1_V_id_V { axis {  { vec1_TID in_data 0 5 } } }
	vec1_V_dest_V { axis {  { vec1_TVALID in_vld 0 1 }  { vec1_TREADY in_acc 1 1 }  { vec1_TDEST in_data 0 6 } } }
	vec2_V_data_V { axis {  { vec2_TDATA in_data 0 128 } } }
	vec2_V_keep_V { axis {  { vec2_TKEEP in_data 0 16 } } }
	vec2_V_strb_V { axis {  { vec2_TSTRB in_data 0 16 } } }
	vec2_V_user_V { axis {  { vec2_TUSER in_data 0 2 } } }
	vec2_V_last_V { axis {  { vec2_TLAST in_data 0 1 } } }
	vec2_V_id_V { axis {  { vec2_TID in_data 0 5 } } }
	vec2_V_dest_V { axis {  { vec2_TVALID in_vld 0 1 }  { vec2_TREADY in_acc 1 1 }  { vec2_TDEST in_data 0 6 } } }
	vec_out_V_data_V { axis {  { vec_out_TDATA out_data 1 128 } } }
	vec_out_V_keep_V { axis {  { vec_out_TKEEP out_data 1 16 } } }
	vec_out_V_strb_V { axis {  { vec_out_TSTRB out_data 1 16 } } }
	vec_out_V_user_V { axis {  { vec_out_TUSER out_data 1 2 } } }
	vec_out_V_last_V { axis {  { vec_out_TLAST out_data 1 1 } } }
	vec_out_V_id_V { axis {  { vec_out_TID out_data 1 5 } } }
	vec_out_V_dest_V { axis {  { vec_out_TVALID out_vld 1 1 }  { vec_out_TREADY out_acc 0 1 }  { vec_out_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

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
