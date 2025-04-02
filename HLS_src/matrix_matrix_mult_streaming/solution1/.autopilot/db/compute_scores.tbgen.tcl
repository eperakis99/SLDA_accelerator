set moduleName compute_scores
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_scores}
set C_modelType { void 0 }
set C_modelArgList {
	{ scores int 128 regular {array 10 { 0 3 } 0 1 }  }
	{ feature_vector_V_data_V int 128 regular {axi_s 0 volatile  { feature_vector Data } }  }
	{ feature_vector_V_keep_V int 16 regular {axi_s 0 volatile  { feature_vector Keep } }  }
	{ feature_vector_V_strb_V int 16 regular {axi_s 0 volatile  { feature_vector Strb } }  }
	{ feature_vector_V_user_V int 2 regular {axi_s 0 volatile  { feature_vector User } }  }
	{ feature_vector_V_last_V int 1 regular {axi_s 0 volatile  { feature_vector Last } }  }
	{ feature_vector_V_id_V int 5 regular {axi_s 0 volatile  { feature_vector ID } }  }
	{ feature_vector_V_dest_V int 6 regular {axi_s 0 volatile  { feature_vector Dest } }  }
	{ b_V_9 int 128 regular {pointer 0} {global 0}  }
	{ b_V_0 int 128 regular {pointer 0} {global 0}  }
	{ b_V_1 int 128 regular {pointer 0} {global 0}  }
	{ b_V_2 int 128 regular {pointer 0} {global 0}  }
	{ b_V_3 int 128 regular {pointer 0} {global 0}  }
	{ b_V_4 int 128 regular {pointer 0} {global 0}  }
	{ b_V_5 int 128 regular {pointer 0} {global 0}  }
	{ b_V_6 int 128 regular {pointer 0} {global 0}  }
	{ b_V_7 int 128 regular {pointer 0} {global 0}  }
	{ b_V_8 int 128 regular {pointer 0} {global 0}  }
	{ W_V_0 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_1 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_2 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_3 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_4 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_5 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_6 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_7 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_8 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_9 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_10 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_11 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_12 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_13 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_14 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_15 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_16 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_17 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_18 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_19 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_20 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_21 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_22 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_23 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_24 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_25 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_26 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_27 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_28 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_29 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_30 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ W_V_31 int 25 regular {array 10 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "scores", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feature_vector_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "b_V_9", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_0", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_1", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_2", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_3", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_4", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_5", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_6", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_7", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_8", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "b.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_0", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_1", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_2", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_3", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_4", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_5", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_6", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_7", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_8", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_9", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_10", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 10,"up" : 10,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_11", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 11,"up" : 11,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_12", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 12,"up" : 12,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_13", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 13,"up" : 13,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_14", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 14,"up" : 14,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_15", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 15,"up" : 15,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_16", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 16,"up" : 16,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_17", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 17,"up" : 17,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_18", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 18,"up" : 18,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_19", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 19,"up" : 19,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_20", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 20,"up" : 20,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_21", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 21,"up" : 21,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_22", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 22,"up" : 22,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_23", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 23,"up" : 23,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_24", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 24,"up" : 24,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_25", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 25,"up" : 25,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_26", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 26,"up" : 26,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_27", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 27,"up" : 27,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_28", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 28,"up" : 28,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_29", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 29,"up" : 29,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_30", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 30,"up" : 30,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "W_V_31", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 9,"step" : 1},{"low" : 31,"up" : 31,"step" : 2}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ scores_address0 sc_out sc_lv 4 signal 0 } 
	{ scores_ce0 sc_out sc_logic 1 signal 0 } 
	{ scores_we0 sc_out sc_logic 1 signal 0 } 
	{ scores_d0 sc_out sc_lv 128 signal 0 } 
	{ feature_vector_TDATA sc_in sc_lv 128 signal 1 } 
	{ feature_vector_TVALID sc_in sc_logic 1 invld 1 } 
	{ feature_vector_TREADY sc_out sc_logic 1 inacc 7 } 
	{ feature_vector_TKEEP sc_in sc_lv 16 signal 2 } 
	{ feature_vector_TSTRB sc_in sc_lv 16 signal 3 } 
	{ feature_vector_TUSER sc_in sc_lv 2 signal 4 } 
	{ feature_vector_TLAST sc_in sc_lv 1 signal 5 } 
	{ feature_vector_TID sc_in sc_lv 5 signal 6 } 
	{ feature_vector_TDEST sc_in sc_lv 6 signal 7 } 
	{ b_V_9 sc_in sc_lv 128 signal 8 } 
	{ b_V_0 sc_in sc_lv 128 signal 9 } 
	{ b_V_1 sc_in sc_lv 128 signal 10 } 
	{ b_V_2 sc_in sc_lv 128 signal 11 } 
	{ b_V_3 sc_in sc_lv 128 signal 12 } 
	{ b_V_4 sc_in sc_lv 128 signal 13 } 
	{ b_V_5 sc_in sc_lv 128 signal 14 } 
	{ b_V_6 sc_in sc_lv 128 signal 15 } 
	{ b_V_7 sc_in sc_lv 128 signal 16 } 
	{ b_V_8 sc_in sc_lv 128 signal 17 } 
	{ W_V_0_address0 sc_out sc_lv 4 signal 18 } 
	{ W_V_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ W_V_0_q0 sc_in sc_lv 25 signal 18 } 
	{ W_V_1_address0 sc_out sc_lv 4 signal 19 } 
	{ W_V_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ W_V_1_q0 sc_in sc_lv 25 signal 19 } 
	{ W_V_2_address0 sc_out sc_lv 4 signal 20 } 
	{ W_V_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ W_V_2_q0 sc_in sc_lv 25 signal 20 } 
	{ W_V_3_address0 sc_out sc_lv 4 signal 21 } 
	{ W_V_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ W_V_3_q0 sc_in sc_lv 25 signal 21 } 
	{ W_V_4_address0 sc_out sc_lv 4 signal 22 } 
	{ W_V_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ W_V_4_q0 sc_in sc_lv 25 signal 22 } 
	{ W_V_5_address0 sc_out sc_lv 4 signal 23 } 
	{ W_V_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ W_V_5_q0 sc_in sc_lv 25 signal 23 } 
	{ W_V_6_address0 sc_out sc_lv 4 signal 24 } 
	{ W_V_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ W_V_6_q0 sc_in sc_lv 25 signal 24 } 
	{ W_V_7_address0 sc_out sc_lv 4 signal 25 } 
	{ W_V_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ W_V_7_q0 sc_in sc_lv 25 signal 25 } 
	{ W_V_8_address0 sc_out sc_lv 4 signal 26 } 
	{ W_V_8_ce0 sc_out sc_logic 1 signal 26 } 
	{ W_V_8_q0 sc_in sc_lv 25 signal 26 } 
	{ W_V_9_address0 sc_out sc_lv 4 signal 27 } 
	{ W_V_9_ce0 sc_out sc_logic 1 signal 27 } 
	{ W_V_9_q0 sc_in sc_lv 25 signal 27 } 
	{ W_V_10_address0 sc_out sc_lv 4 signal 28 } 
	{ W_V_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ W_V_10_q0 sc_in sc_lv 25 signal 28 } 
	{ W_V_11_address0 sc_out sc_lv 4 signal 29 } 
	{ W_V_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ W_V_11_q0 sc_in sc_lv 25 signal 29 } 
	{ W_V_12_address0 sc_out sc_lv 4 signal 30 } 
	{ W_V_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ W_V_12_q0 sc_in sc_lv 25 signal 30 } 
	{ W_V_13_address0 sc_out sc_lv 4 signal 31 } 
	{ W_V_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ W_V_13_q0 sc_in sc_lv 25 signal 31 } 
	{ W_V_14_address0 sc_out sc_lv 4 signal 32 } 
	{ W_V_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ W_V_14_q0 sc_in sc_lv 25 signal 32 } 
	{ W_V_15_address0 sc_out sc_lv 4 signal 33 } 
	{ W_V_15_ce0 sc_out sc_logic 1 signal 33 } 
	{ W_V_15_q0 sc_in sc_lv 25 signal 33 } 
	{ W_V_16_address0 sc_out sc_lv 4 signal 34 } 
	{ W_V_16_ce0 sc_out sc_logic 1 signal 34 } 
	{ W_V_16_q0 sc_in sc_lv 25 signal 34 } 
	{ W_V_17_address0 sc_out sc_lv 4 signal 35 } 
	{ W_V_17_ce0 sc_out sc_logic 1 signal 35 } 
	{ W_V_17_q0 sc_in sc_lv 25 signal 35 } 
	{ W_V_18_address0 sc_out sc_lv 4 signal 36 } 
	{ W_V_18_ce0 sc_out sc_logic 1 signal 36 } 
	{ W_V_18_q0 sc_in sc_lv 25 signal 36 } 
	{ W_V_19_address0 sc_out sc_lv 4 signal 37 } 
	{ W_V_19_ce0 sc_out sc_logic 1 signal 37 } 
	{ W_V_19_q0 sc_in sc_lv 25 signal 37 } 
	{ W_V_20_address0 sc_out sc_lv 4 signal 38 } 
	{ W_V_20_ce0 sc_out sc_logic 1 signal 38 } 
	{ W_V_20_q0 sc_in sc_lv 25 signal 38 } 
	{ W_V_21_address0 sc_out sc_lv 4 signal 39 } 
	{ W_V_21_ce0 sc_out sc_logic 1 signal 39 } 
	{ W_V_21_q0 sc_in sc_lv 25 signal 39 } 
	{ W_V_22_address0 sc_out sc_lv 4 signal 40 } 
	{ W_V_22_ce0 sc_out sc_logic 1 signal 40 } 
	{ W_V_22_q0 sc_in sc_lv 25 signal 40 } 
	{ W_V_23_address0 sc_out sc_lv 4 signal 41 } 
	{ W_V_23_ce0 sc_out sc_logic 1 signal 41 } 
	{ W_V_23_q0 sc_in sc_lv 25 signal 41 } 
	{ W_V_24_address0 sc_out sc_lv 4 signal 42 } 
	{ W_V_24_ce0 sc_out sc_logic 1 signal 42 } 
	{ W_V_24_q0 sc_in sc_lv 25 signal 42 } 
	{ W_V_25_address0 sc_out sc_lv 4 signal 43 } 
	{ W_V_25_ce0 sc_out sc_logic 1 signal 43 } 
	{ W_V_25_q0 sc_in sc_lv 25 signal 43 } 
	{ W_V_26_address0 sc_out sc_lv 4 signal 44 } 
	{ W_V_26_ce0 sc_out sc_logic 1 signal 44 } 
	{ W_V_26_q0 sc_in sc_lv 25 signal 44 } 
	{ W_V_27_address0 sc_out sc_lv 4 signal 45 } 
	{ W_V_27_ce0 sc_out sc_logic 1 signal 45 } 
	{ W_V_27_q0 sc_in sc_lv 25 signal 45 } 
	{ W_V_28_address0 sc_out sc_lv 4 signal 46 } 
	{ W_V_28_ce0 sc_out sc_logic 1 signal 46 } 
	{ W_V_28_q0 sc_in sc_lv 25 signal 46 } 
	{ W_V_29_address0 sc_out sc_lv 4 signal 47 } 
	{ W_V_29_ce0 sc_out sc_logic 1 signal 47 } 
	{ W_V_29_q0 sc_in sc_lv 25 signal 47 } 
	{ W_V_30_address0 sc_out sc_lv 4 signal 48 } 
	{ W_V_30_ce0 sc_out sc_logic 1 signal 48 } 
	{ W_V_30_q0 sc_in sc_lv 25 signal 48 } 
	{ W_V_31_address0 sc_out sc_lv 4 signal 49 } 
	{ W_V_31_ce0 sc_out sc_logic 1 signal 49 } 
	{ W_V_31_q0 sc_in sc_lv 25 signal 49 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "scores_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scores", "role": "address0" }} , 
 	{ "name": "scores_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores", "role": "ce0" }} , 
 	{ "name": "scores_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores", "role": "we0" }} , 
 	{ "name": "scores_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "scores", "role": "d0" }} , 
 	{ "name": "feature_vector_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "feature_vector_V_data_V", "role": "default" }} , 
 	{ "name": "feature_vector_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "feature_vector_V_data_V", "role": "default" }} , 
 	{ "name": "feature_vector_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "feature_vector_V_dest_V", "role": "default" }} , 
 	{ "name": "feature_vector_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feature_vector_V_keep_V", "role": "default" }} , 
 	{ "name": "feature_vector_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feature_vector_V_strb_V", "role": "default" }} , 
 	{ "name": "feature_vector_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_vector_V_user_V", "role": "default" }} , 
 	{ "name": "feature_vector_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_vector_V_last_V", "role": "default" }} , 
 	{ "name": "feature_vector_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "feature_vector_V_id_V", "role": "default" }} , 
 	{ "name": "feature_vector_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "feature_vector_V_dest_V", "role": "default" }} , 
 	{ "name": "b_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_9", "role": "default" }} , 
 	{ "name": "b_V_0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_0", "role": "default" }} , 
 	{ "name": "b_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_1", "role": "default" }} , 
 	{ "name": "b_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_2", "role": "default" }} , 
 	{ "name": "b_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_3", "role": "default" }} , 
 	{ "name": "b_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_4", "role": "default" }} , 
 	{ "name": "b_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_5", "role": "default" }} , 
 	{ "name": "b_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_6", "role": "default" }} , 
 	{ "name": "b_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_7", "role": "default" }} , 
 	{ "name": "b_V_8", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "b_V_8", "role": "default" }} , 
 	{ "name": "W_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_0", "role": "address0" }} , 
 	{ "name": "W_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_0", "role": "ce0" }} , 
 	{ "name": "W_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_0", "role": "q0" }} , 
 	{ "name": "W_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_1", "role": "address0" }} , 
 	{ "name": "W_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_1", "role": "ce0" }} , 
 	{ "name": "W_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_1", "role": "q0" }} , 
 	{ "name": "W_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_2", "role": "address0" }} , 
 	{ "name": "W_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_2", "role": "ce0" }} , 
 	{ "name": "W_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_2", "role": "q0" }} , 
 	{ "name": "W_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_3", "role": "address0" }} , 
 	{ "name": "W_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_3", "role": "ce0" }} , 
 	{ "name": "W_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_3", "role": "q0" }} , 
 	{ "name": "W_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_4", "role": "address0" }} , 
 	{ "name": "W_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_4", "role": "ce0" }} , 
 	{ "name": "W_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_4", "role": "q0" }} , 
 	{ "name": "W_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_5", "role": "address0" }} , 
 	{ "name": "W_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_5", "role": "ce0" }} , 
 	{ "name": "W_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_5", "role": "q0" }} , 
 	{ "name": "W_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_6", "role": "address0" }} , 
 	{ "name": "W_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_6", "role": "ce0" }} , 
 	{ "name": "W_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_6", "role": "q0" }} , 
 	{ "name": "W_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_7", "role": "address0" }} , 
 	{ "name": "W_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_7", "role": "ce0" }} , 
 	{ "name": "W_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_7", "role": "q0" }} , 
 	{ "name": "W_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_8", "role": "address0" }} , 
 	{ "name": "W_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_8", "role": "ce0" }} , 
 	{ "name": "W_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_8", "role": "q0" }} , 
 	{ "name": "W_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_9", "role": "address0" }} , 
 	{ "name": "W_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_9", "role": "ce0" }} , 
 	{ "name": "W_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_9", "role": "q0" }} , 
 	{ "name": "W_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_10", "role": "address0" }} , 
 	{ "name": "W_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_10", "role": "ce0" }} , 
 	{ "name": "W_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_10", "role": "q0" }} , 
 	{ "name": "W_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_11", "role": "address0" }} , 
 	{ "name": "W_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_11", "role": "ce0" }} , 
 	{ "name": "W_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_11", "role": "q0" }} , 
 	{ "name": "W_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_12", "role": "address0" }} , 
 	{ "name": "W_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_12", "role": "ce0" }} , 
 	{ "name": "W_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_12", "role": "q0" }} , 
 	{ "name": "W_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_13", "role": "address0" }} , 
 	{ "name": "W_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_13", "role": "ce0" }} , 
 	{ "name": "W_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_13", "role": "q0" }} , 
 	{ "name": "W_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_14", "role": "address0" }} , 
 	{ "name": "W_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_14", "role": "ce0" }} , 
 	{ "name": "W_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_14", "role": "q0" }} , 
 	{ "name": "W_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_15", "role": "address0" }} , 
 	{ "name": "W_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_15", "role": "ce0" }} , 
 	{ "name": "W_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_15", "role": "q0" }} , 
 	{ "name": "W_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_16", "role": "address0" }} , 
 	{ "name": "W_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_16", "role": "ce0" }} , 
 	{ "name": "W_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_16", "role": "q0" }} , 
 	{ "name": "W_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_17", "role": "address0" }} , 
 	{ "name": "W_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_17", "role": "ce0" }} , 
 	{ "name": "W_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_17", "role": "q0" }} , 
 	{ "name": "W_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_18", "role": "address0" }} , 
 	{ "name": "W_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_18", "role": "ce0" }} , 
 	{ "name": "W_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_18", "role": "q0" }} , 
 	{ "name": "W_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_19", "role": "address0" }} , 
 	{ "name": "W_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_19", "role": "ce0" }} , 
 	{ "name": "W_V_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_19", "role": "q0" }} , 
 	{ "name": "W_V_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_20", "role": "address0" }} , 
 	{ "name": "W_V_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_20", "role": "ce0" }} , 
 	{ "name": "W_V_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_20", "role": "q0" }} , 
 	{ "name": "W_V_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_21", "role": "address0" }} , 
 	{ "name": "W_V_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_21", "role": "ce0" }} , 
 	{ "name": "W_V_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_21", "role": "q0" }} , 
 	{ "name": "W_V_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_22", "role": "address0" }} , 
 	{ "name": "W_V_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_22", "role": "ce0" }} , 
 	{ "name": "W_V_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_22", "role": "q0" }} , 
 	{ "name": "W_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_23", "role": "address0" }} , 
 	{ "name": "W_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_23", "role": "ce0" }} , 
 	{ "name": "W_V_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_23", "role": "q0" }} , 
 	{ "name": "W_V_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_24", "role": "address0" }} , 
 	{ "name": "W_V_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_24", "role": "ce0" }} , 
 	{ "name": "W_V_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_24", "role": "q0" }} , 
 	{ "name": "W_V_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_25", "role": "address0" }} , 
 	{ "name": "W_V_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_25", "role": "ce0" }} , 
 	{ "name": "W_V_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_25", "role": "q0" }} , 
 	{ "name": "W_V_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_26", "role": "address0" }} , 
 	{ "name": "W_V_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_26", "role": "ce0" }} , 
 	{ "name": "W_V_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_26", "role": "q0" }} , 
 	{ "name": "W_V_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_27", "role": "address0" }} , 
 	{ "name": "W_V_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_27", "role": "ce0" }} , 
 	{ "name": "W_V_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_27", "role": "q0" }} , 
 	{ "name": "W_V_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_28", "role": "address0" }} , 
 	{ "name": "W_V_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_28", "role": "ce0" }} , 
 	{ "name": "W_V_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_28", "role": "q0" }} , 
 	{ "name": "W_V_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_29", "role": "address0" }} , 
 	{ "name": "W_V_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_29", "role": "ce0" }} , 
 	{ "name": "W_V_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_29", "role": "q0" }} , 
 	{ "name": "W_V_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_30", "role": "address0" }} , 
 	{ "name": "W_V_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_30", "role": "ce0" }} , 
 	{ "name": "W_V_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_30", "role": "q0" }} , 
 	{ "name": "W_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_31", "role": "address0" }} , 
 	{ "name": "W_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_31", "role": "ce0" }} , 
 	{ "name": "W_V_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "W_V_31", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "compute_scores",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "75",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "scores", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "feature_vector_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "feature_vector_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "feature_vector_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "b_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_31", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fv_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U686", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U687", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U688", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U689", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U690", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U691", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U692", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U693", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U694", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U695", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U696", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U697", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U698", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U699", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U700", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U701", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U702", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U703", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U704", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U705", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U706", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U707", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U708", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U709", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U710", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U711", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U712", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U713", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U714", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U715", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U716", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U717", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U718", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U719", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U720", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U721", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U722", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U723", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U724", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U725", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U726", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U727", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U728", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U729", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U730", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U731", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U732", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U733", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U734", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U735", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U736", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U737", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U738", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U739", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U740", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U741", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U742", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U743", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U744", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U745", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U746", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U747", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U748", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U749", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U750", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U751", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U752", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U753", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U754", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U755", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U756", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U757", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U758", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U759", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U760", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U761", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U762", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U763", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U764", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U765", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U766", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U767", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U768", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U769", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U770", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U771", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U772", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U773", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U774", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U775", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U776", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U777", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U778", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U779", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16ns_16_4_1_U780", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_9s_16_4_1_U781", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_scores {
		scores {Type O LastRead -1 FirstWrite 24}
		feature_vector_V_data_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_keep_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_strb_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_user_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_last_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_id_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_dest_V {Type I LastRead 1 FirstWrite -1}
		b_V_9 {Type I LastRead 18 FirstWrite -1}
		b_V_0 {Type I LastRead 18 FirstWrite -1}
		b_V_1 {Type I LastRead 18 FirstWrite -1}
		b_V_2 {Type I LastRead 18 FirstWrite -1}
		b_V_3 {Type I LastRead 18 FirstWrite -1}
		b_V_4 {Type I LastRead 18 FirstWrite -1}
		b_V_5 {Type I LastRead 18 FirstWrite -1}
		b_V_6 {Type I LastRead 18 FirstWrite -1}
		b_V_7 {Type I LastRead 18 FirstWrite -1}
		b_V_8 {Type I LastRead 18 FirstWrite -1}
		W_V_0 {Type I LastRead 19 FirstWrite -1}
		W_V_1 {Type I LastRead 19 FirstWrite -1}
		W_V_2 {Type I LastRead 19 FirstWrite -1}
		W_V_3 {Type I LastRead 19 FirstWrite -1}
		W_V_4 {Type I LastRead 19 FirstWrite -1}
		W_V_5 {Type I LastRead 19 FirstWrite -1}
		W_V_6 {Type I LastRead 19 FirstWrite -1}
		W_V_7 {Type I LastRead 19 FirstWrite -1}
		W_V_8 {Type I LastRead 19 FirstWrite -1}
		W_V_9 {Type I LastRead 19 FirstWrite -1}
		W_V_10 {Type I LastRead 19 FirstWrite -1}
		W_V_11 {Type I LastRead 19 FirstWrite -1}
		W_V_12 {Type I LastRead 19 FirstWrite -1}
		W_V_13 {Type I LastRead 19 FirstWrite -1}
		W_V_14 {Type I LastRead 19 FirstWrite -1}
		W_V_15 {Type I LastRead 19 FirstWrite -1}
		W_V_16 {Type I LastRead 19 FirstWrite -1}
		W_V_17 {Type I LastRead 19 FirstWrite -1}
		W_V_18 {Type I LastRead 19 FirstWrite -1}
		W_V_19 {Type I LastRead 19 FirstWrite -1}
		W_V_20 {Type I LastRead 19 FirstWrite -1}
		W_V_21 {Type I LastRead 19 FirstWrite -1}
		W_V_22 {Type I LastRead 19 FirstWrite -1}
		W_V_23 {Type I LastRead 19 FirstWrite -1}
		W_V_24 {Type I LastRead 19 FirstWrite -1}
		W_V_25 {Type I LastRead 19 FirstWrite -1}
		W_V_26 {Type I LastRead 19 FirstWrite -1}
		W_V_27 {Type I LastRead 19 FirstWrite -1}
		W_V_28 {Type I LastRead 19 FirstWrite -1}
		W_V_29 {Type I LastRead 19 FirstWrite -1}
		W_V_30 {Type I LastRead 19 FirstWrite -1}
		W_V_31 {Type I LastRead 19 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75", "Max" : "75"}
	, {"Name" : "Interval", "Min" : "75", "Max" : "75"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	scores { ap_memory {  { scores_address0 mem_address 1 4 }  { scores_ce0 mem_ce 1 1 }  { scores_we0 mem_we 1 1 }  { scores_d0 mem_din 1 128 } } }
	feature_vector_V_data_V { axis {  { feature_vector_TDATA in_data 0 128 }  { feature_vector_TVALID in_vld 0 1 } } }
	feature_vector_V_keep_V { axis {  { feature_vector_TKEEP in_data 0 16 } } }
	feature_vector_V_strb_V { axis {  { feature_vector_TSTRB in_data 0 16 } } }
	feature_vector_V_user_V { axis {  { feature_vector_TUSER in_data 0 2 } } }
	feature_vector_V_last_V { axis {  { feature_vector_TLAST in_data 0 1 } } }
	feature_vector_V_id_V { axis {  { feature_vector_TID in_data 0 5 } } }
	feature_vector_V_dest_V { axis {  { feature_vector_TREADY in_acc 1 1 }  { feature_vector_TDEST in_data 0 6 } } }
	b_V_9 { ap_none {  { b_V_9 in_data 0 128 } } }
	b_V_0 { ap_none {  { b_V_0 in_data 0 128 } } }
	b_V_1 { ap_none {  { b_V_1 in_data 0 128 } } }
	b_V_2 { ap_none {  { b_V_2 in_data 0 128 } } }
	b_V_3 { ap_none {  { b_V_3 in_data 0 128 } } }
	b_V_4 { ap_none {  { b_V_4 in_data 0 128 } } }
	b_V_5 { ap_none {  { b_V_5 in_data 0 128 } } }
	b_V_6 { ap_none {  { b_V_6 in_data 0 128 } } }
	b_V_7 { ap_none {  { b_V_7 in_data 0 128 } } }
	b_V_8 { ap_none {  { b_V_8 in_data 0 128 } } }
	W_V_0 { ap_memory {  { W_V_0_address0 mem_address 1 4 }  { W_V_0_ce0 mem_ce 1 1 }  { W_V_0_q0 mem_dout 0 25 } } }
	W_V_1 { ap_memory {  { W_V_1_address0 mem_address 1 4 }  { W_V_1_ce0 mem_ce 1 1 }  { W_V_1_q0 mem_dout 0 25 } } }
	W_V_2 { ap_memory {  { W_V_2_address0 mem_address 1 4 }  { W_V_2_ce0 mem_ce 1 1 }  { W_V_2_q0 mem_dout 0 25 } } }
	W_V_3 { ap_memory {  { W_V_3_address0 mem_address 1 4 }  { W_V_3_ce0 mem_ce 1 1 }  { W_V_3_q0 mem_dout 0 25 } } }
	W_V_4 { ap_memory {  { W_V_4_address0 mem_address 1 4 }  { W_V_4_ce0 mem_ce 1 1 }  { W_V_4_q0 mem_dout 0 25 } } }
	W_V_5 { ap_memory {  { W_V_5_address0 mem_address 1 4 }  { W_V_5_ce0 mem_ce 1 1 }  { W_V_5_q0 mem_dout 0 25 } } }
	W_V_6 { ap_memory {  { W_V_6_address0 mem_address 1 4 }  { W_V_6_ce0 mem_ce 1 1 }  { W_V_6_q0 mem_dout 0 25 } } }
	W_V_7 { ap_memory {  { W_V_7_address0 mem_address 1 4 }  { W_V_7_ce0 mem_ce 1 1 }  { W_V_7_q0 mem_dout 0 25 } } }
	W_V_8 { ap_memory {  { W_V_8_address0 mem_address 1 4 }  { W_V_8_ce0 mem_ce 1 1 }  { W_V_8_q0 mem_dout 0 25 } } }
	W_V_9 { ap_memory {  { W_V_9_address0 mem_address 1 4 }  { W_V_9_ce0 mem_ce 1 1 }  { W_V_9_q0 mem_dout 0 25 } } }
	W_V_10 { ap_memory {  { W_V_10_address0 mem_address 1 4 }  { W_V_10_ce0 mem_ce 1 1 }  { W_V_10_q0 mem_dout 0 25 } } }
	W_V_11 { ap_memory {  { W_V_11_address0 mem_address 1 4 }  { W_V_11_ce0 mem_ce 1 1 }  { W_V_11_q0 mem_dout 0 25 } } }
	W_V_12 { ap_memory {  { W_V_12_address0 mem_address 1 4 }  { W_V_12_ce0 mem_ce 1 1 }  { W_V_12_q0 mem_dout 0 25 } } }
	W_V_13 { ap_memory {  { W_V_13_address0 mem_address 1 4 }  { W_V_13_ce0 mem_ce 1 1 }  { W_V_13_q0 mem_dout 0 25 } } }
	W_V_14 { ap_memory {  { W_V_14_address0 mem_address 1 4 }  { W_V_14_ce0 mem_ce 1 1 }  { W_V_14_q0 mem_dout 0 25 } } }
	W_V_15 { ap_memory {  { W_V_15_address0 mem_address 1 4 }  { W_V_15_ce0 mem_ce 1 1 }  { W_V_15_q0 mem_dout 0 25 } } }
	W_V_16 { ap_memory {  { W_V_16_address0 mem_address 1 4 }  { W_V_16_ce0 mem_ce 1 1 }  { W_V_16_q0 mem_dout 0 25 } } }
	W_V_17 { ap_memory {  { W_V_17_address0 mem_address 1 4 }  { W_V_17_ce0 mem_ce 1 1 }  { W_V_17_q0 mem_dout 0 25 } } }
	W_V_18 { ap_memory {  { W_V_18_address0 mem_address 1 4 }  { W_V_18_ce0 mem_ce 1 1 }  { W_V_18_q0 mem_dout 0 25 } } }
	W_V_19 { ap_memory {  { W_V_19_address0 mem_address 1 4 }  { W_V_19_ce0 mem_ce 1 1 }  { W_V_19_q0 mem_dout 0 25 } } }
	W_V_20 { ap_memory {  { W_V_20_address0 mem_address 1 4 }  { W_V_20_ce0 mem_ce 1 1 }  { W_V_20_q0 mem_dout 0 25 } } }
	W_V_21 { ap_memory {  { W_V_21_address0 mem_address 1 4 }  { W_V_21_ce0 mem_ce 1 1 }  { W_V_21_q0 mem_dout 0 25 } } }
	W_V_22 { ap_memory {  { W_V_22_address0 mem_address 1 4 }  { W_V_22_ce0 mem_ce 1 1 }  { W_V_22_q0 mem_dout 0 25 } } }
	W_V_23 { ap_memory {  { W_V_23_address0 mem_address 1 4 }  { W_V_23_ce0 mem_ce 1 1 }  { W_V_23_q0 mem_dout 0 25 } } }
	W_V_24 { ap_memory {  { W_V_24_address0 mem_address 1 4 }  { W_V_24_ce0 mem_ce 1 1 }  { W_V_24_q0 mem_dout 0 25 } } }
	W_V_25 { ap_memory {  { W_V_25_address0 mem_address 1 4 }  { W_V_25_ce0 mem_ce 1 1 }  { W_V_25_q0 mem_dout 0 25 } } }
	W_V_26 { ap_memory {  { W_V_26_address0 mem_address 1 4 }  { W_V_26_ce0 mem_ce 1 1 }  { W_V_26_q0 mem_dout 0 25 } } }
	W_V_27 { ap_memory {  { W_V_27_address0 mem_address 1 4 }  { W_V_27_ce0 mem_ce 1 1 }  { W_V_27_q0 mem_dout 0 25 } } }
	W_V_28 { ap_memory {  { W_V_28_address0 mem_address 1 4 }  { W_V_28_ce0 mem_ce 1 1 }  { W_V_28_q0 mem_dout 0 25 } } }
	W_V_29 { ap_memory {  { W_V_29_address0 mem_address 1 4 }  { W_V_29_ce0 mem_ce 1 1 }  { W_V_29_q0 mem_dout 0 25 } } }
	W_V_30 { ap_memory {  { W_V_30_address0 mem_address 1 4 }  { W_V_30_ce0 mem_ce 1 1 }  { W_V_30_q0 mem_dout 0 25 } } }
	W_V_31 { ap_memory {  { W_V_31_address0 mem_address 1 4 }  { W_V_31_ce0 mem_ce 1 1 }  { W_V_31_q0 mem_dout 0 25 } } }
}
