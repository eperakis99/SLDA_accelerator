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
	{ scores int 32 regular {bram 10 { 0 } 0 1 }  }
	{ feature_vector_V_data_V int 128 regular {axi_s 0 volatile  { feature_vector2 Data } }  }
	{ feature_vector_V_keep_V int 16 regular {axi_s 0 volatile  { feature_vector2 Keep } }  }
	{ feature_vector_V_strb_V int 16 regular {axi_s 0 volatile  { feature_vector2 Strb } }  }
	{ feature_vector_V_user_V int 2 regular {axi_s 0 volatile  { feature_vector2 User } }  }
	{ feature_vector_V_last_V int 1 regular {axi_s 0 volatile  { feature_vector2 Last } }  }
	{ feature_vector_V_id_V int 5 regular {axi_s 0 volatile  { feature_vector2 ID } }  }
	{ feature_vector_V_dest_V int 6 regular {axi_s 0 volatile  { feature_vector2 Dest } }  }
	{ W_V_0 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_1 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_10 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_11 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_12 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_13 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_14 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_15 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_16 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_17 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_18 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_19 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_2 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_20 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_21 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_22 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_23 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_24 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_25 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_26 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_27 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_28 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_29 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_3 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_30 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_31 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_32 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_33 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_34 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_35 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_36 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_37 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_38 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_39 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_4 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_40 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_41 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_42 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_43 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_44 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_45 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_46 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_47 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_48 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_49 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_5 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_50 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_51 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_52 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_53 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_54 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_55 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_56 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_57 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_58 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_59 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_6 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_60 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_61 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_62 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_63 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_7 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_8 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ W_V_9 int 12 regular {array 10 { 1 3 } 1 1 }  }
	{ b_V_9 int 32 regular {pointer 0} {global 0}  }
	{ b_V_0 int 32 regular {pointer 0} {global 0}  }
	{ b_V_1 int 32 regular {pointer 0} {global 0}  }
	{ b_V_2 int 32 regular {pointer 0} {global 0}  }
	{ b_V_3 int 32 regular {pointer 0} {global 0}  }
	{ b_V_4 int 32 regular {pointer 0} {global 0}  }
	{ b_V_5 int 32 regular {pointer 0} {global 0}  }
	{ b_V_6 int 32 regular {pointer 0} {global 0}  }
	{ b_V_7 int 32 regular {pointer 0} {global 0}  }
	{ b_V_8 int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "scores", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "feature_vector_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "feature_vector_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_0", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_10", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_11", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_12", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_13", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_14", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_15", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_16", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_17", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_18", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_19", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_20", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_21", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_22", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_23", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_24", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_25", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_26", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_27", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_28", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_29", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_30", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_31", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_32", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_33", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_34", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_35", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_36", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_37", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_38", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_39", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_40", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_41", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_42", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_43", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_44", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_45", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_46", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_47", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_48", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_49", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_50", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_51", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_52", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_53", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_54", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_55", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_56", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_57", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_58", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_59", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_60", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_61", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_62", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_63", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_7", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_8", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "W_V_9", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "b_V_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "b_V_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 222
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ scores_Addr_A sc_out sc_lv 32 signal 0 } 
	{ scores_EN_A sc_out sc_logic 1 signal 0 } 
	{ scores_WEN_A sc_out sc_lv 4 signal 0 } 
	{ scores_Din_A sc_out sc_lv 32 signal 0 } 
	{ scores_Dout_A sc_in sc_lv 32 signal 0 } 
	{ feature_vector2_TDATA sc_in sc_lv 128 signal 1 } 
	{ feature_vector2_TVALID sc_in sc_logic 1 invld 1 } 
	{ feature_vector2_TREADY sc_out sc_logic 1 inacc 7 } 
	{ feature_vector2_TKEEP sc_in sc_lv 16 signal 2 } 
	{ feature_vector2_TSTRB sc_in sc_lv 16 signal 3 } 
	{ feature_vector2_TUSER sc_in sc_lv 2 signal 4 } 
	{ feature_vector2_TLAST sc_in sc_lv 1 signal 5 } 
	{ feature_vector2_TID sc_in sc_lv 5 signal 6 } 
	{ feature_vector2_TDEST sc_in sc_lv 6 signal 7 } 
	{ W_V_0_address0 sc_out sc_lv 4 signal 8 } 
	{ W_V_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ W_V_0_q0 sc_in sc_lv 12 signal 8 } 
	{ W_V_1_address0 sc_out sc_lv 4 signal 9 } 
	{ W_V_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ W_V_1_q0 sc_in sc_lv 12 signal 9 } 
	{ W_V_10_address0 sc_out sc_lv 4 signal 10 } 
	{ W_V_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ W_V_10_q0 sc_in sc_lv 12 signal 10 } 
	{ W_V_11_address0 sc_out sc_lv 4 signal 11 } 
	{ W_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ W_V_11_q0 sc_in sc_lv 12 signal 11 } 
	{ W_V_12_address0 sc_out sc_lv 4 signal 12 } 
	{ W_V_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ W_V_12_q0 sc_in sc_lv 12 signal 12 } 
	{ W_V_13_address0 sc_out sc_lv 4 signal 13 } 
	{ W_V_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ W_V_13_q0 sc_in sc_lv 12 signal 13 } 
	{ W_V_14_address0 sc_out sc_lv 4 signal 14 } 
	{ W_V_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ W_V_14_q0 sc_in sc_lv 12 signal 14 } 
	{ W_V_15_address0 sc_out sc_lv 4 signal 15 } 
	{ W_V_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ W_V_15_q0 sc_in sc_lv 12 signal 15 } 
	{ W_V_16_address0 sc_out sc_lv 4 signal 16 } 
	{ W_V_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ W_V_16_q0 sc_in sc_lv 12 signal 16 } 
	{ W_V_17_address0 sc_out sc_lv 4 signal 17 } 
	{ W_V_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ W_V_17_q0 sc_in sc_lv 12 signal 17 } 
	{ W_V_18_address0 sc_out sc_lv 4 signal 18 } 
	{ W_V_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ W_V_18_q0 sc_in sc_lv 12 signal 18 } 
	{ W_V_19_address0 sc_out sc_lv 4 signal 19 } 
	{ W_V_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ W_V_19_q0 sc_in sc_lv 12 signal 19 } 
	{ W_V_2_address0 sc_out sc_lv 4 signal 20 } 
	{ W_V_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ W_V_2_q0 sc_in sc_lv 12 signal 20 } 
	{ W_V_20_address0 sc_out sc_lv 4 signal 21 } 
	{ W_V_20_ce0 sc_out sc_logic 1 signal 21 } 
	{ W_V_20_q0 sc_in sc_lv 12 signal 21 } 
	{ W_V_21_address0 sc_out sc_lv 4 signal 22 } 
	{ W_V_21_ce0 sc_out sc_logic 1 signal 22 } 
	{ W_V_21_q0 sc_in sc_lv 12 signal 22 } 
	{ W_V_22_address0 sc_out sc_lv 4 signal 23 } 
	{ W_V_22_ce0 sc_out sc_logic 1 signal 23 } 
	{ W_V_22_q0 sc_in sc_lv 12 signal 23 } 
	{ W_V_23_address0 sc_out sc_lv 4 signal 24 } 
	{ W_V_23_ce0 sc_out sc_logic 1 signal 24 } 
	{ W_V_23_q0 sc_in sc_lv 12 signal 24 } 
	{ W_V_24_address0 sc_out sc_lv 4 signal 25 } 
	{ W_V_24_ce0 sc_out sc_logic 1 signal 25 } 
	{ W_V_24_q0 sc_in sc_lv 12 signal 25 } 
	{ W_V_25_address0 sc_out sc_lv 4 signal 26 } 
	{ W_V_25_ce0 sc_out sc_logic 1 signal 26 } 
	{ W_V_25_q0 sc_in sc_lv 12 signal 26 } 
	{ W_V_26_address0 sc_out sc_lv 4 signal 27 } 
	{ W_V_26_ce0 sc_out sc_logic 1 signal 27 } 
	{ W_V_26_q0 sc_in sc_lv 12 signal 27 } 
	{ W_V_27_address0 sc_out sc_lv 4 signal 28 } 
	{ W_V_27_ce0 sc_out sc_logic 1 signal 28 } 
	{ W_V_27_q0 sc_in sc_lv 12 signal 28 } 
	{ W_V_28_address0 sc_out sc_lv 4 signal 29 } 
	{ W_V_28_ce0 sc_out sc_logic 1 signal 29 } 
	{ W_V_28_q0 sc_in sc_lv 12 signal 29 } 
	{ W_V_29_address0 sc_out sc_lv 4 signal 30 } 
	{ W_V_29_ce0 sc_out sc_logic 1 signal 30 } 
	{ W_V_29_q0 sc_in sc_lv 12 signal 30 } 
	{ W_V_3_address0 sc_out sc_lv 4 signal 31 } 
	{ W_V_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ W_V_3_q0 sc_in sc_lv 12 signal 31 } 
	{ W_V_30_address0 sc_out sc_lv 4 signal 32 } 
	{ W_V_30_ce0 sc_out sc_logic 1 signal 32 } 
	{ W_V_30_q0 sc_in sc_lv 12 signal 32 } 
	{ W_V_31_address0 sc_out sc_lv 4 signal 33 } 
	{ W_V_31_ce0 sc_out sc_logic 1 signal 33 } 
	{ W_V_31_q0 sc_in sc_lv 12 signal 33 } 
	{ W_V_32_address0 sc_out sc_lv 4 signal 34 } 
	{ W_V_32_ce0 sc_out sc_logic 1 signal 34 } 
	{ W_V_32_q0 sc_in sc_lv 12 signal 34 } 
	{ W_V_33_address0 sc_out sc_lv 4 signal 35 } 
	{ W_V_33_ce0 sc_out sc_logic 1 signal 35 } 
	{ W_V_33_q0 sc_in sc_lv 12 signal 35 } 
	{ W_V_34_address0 sc_out sc_lv 4 signal 36 } 
	{ W_V_34_ce0 sc_out sc_logic 1 signal 36 } 
	{ W_V_34_q0 sc_in sc_lv 12 signal 36 } 
	{ W_V_35_address0 sc_out sc_lv 4 signal 37 } 
	{ W_V_35_ce0 sc_out sc_logic 1 signal 37 } 
	{ W_V_35_q0 sc_in sc_lv 12 signal 37 } 
	{ W_V_36_address0 sc_out sc_lv 4 signal 38 } 
	{ W_V_36_ce0 sc_out sc_logic 1 signal 38 } 
	{ W_V_36_q0 sc_in sc_lv 12 signal 38 } 
	{ W_V_37_address0 sc_out sc_lv 4 signal 39 } 
	{ W_V_37_ce0 sc_out sc_logic 1 signal 39 } 
	{ W_V_37_q0 sc_in sc_lv 12 signal 39 } 
	{ W_V_38_address0 sc_out sc_lv 4 signal 40 } 
	{ W_V_38_ce0 sc_out sc_logic 1 signal 40 } 
	{ W_V_38_q0 sc_in sc_lv 12 signal 40 } 
	{ W_V_39_address0 sc_out sc_lv 4 signal 41 } 
	{ W_V_39_ce0 sc_out sc_logic 1 signal 41 } 
	{ W_V_39_q0 sc_in sc_lv 12 signal 41 } 
	{ W_V_4_address0 sc_out sc_lv 4 signal 42 } 
	{ W_V_4_ce0 sc_out sc_logic 1 signal 42 } 
	{ W_V_4_q0 sc_in sc_lv 12 signal 42 } 
	{ W_V_40_address0 sc_out sc_lv 4 signal 43 } 
	{ W_V_40_ce0 sc_out sc_logic 1 signal 43 } 
	{ W_V_40_q0 sc_in sc_lv 12 signal 43 } 
	{ W_V_41_address0 sc_out sc_lv 4 signal 44 } 
	{ W_V_41_ce0 sc_out sc_logic 1 signal 44 } 
	{ W_V_41_q0 sc_in sc_lv 12 signal 44 } 
	{ W_V_42_address0 sc_out sc_lv 4 signal 45 } 
	{ W_V_42_ce0 sc_out sc_logic 1 signal 45 } 
	{ W_V_42_q0 sc_in sc_lv 12 signal 45 } 
	{ W_V_43_address0 sc_out sc_lv 4 signal 46 } 
	{ W_V_43_ce0 sc_out sc_logic 1 signal 46 } 
	{ W_V_43_q0 sc_in sc_lv 12 signal 46 } 
	{ W_V_44_address0 sc_out sc_lv 4 signal 47 } 
	{ W_V_44_ce0 sc_out sc_logic 1 signal 47 } 
	{ W_V_44_q0 sc_in sc_lv 12 signal 47 } 
	{ W_V_45_address0 sc_out sc_lv 4 signal 48 } 
	{ W_V_45_ce0 sc_out sc_logic 1 signal 48 } 
	{ W_V_45_q0 sc_in sc_lv 12 signal 48 } 
	{ W_V_46_address0 sc_out sc_lv 4 signal 49 } 
	{ W_V_46_ce0 sc_out sc_logic 1 signal 49 } 
	{ W_V_46_q0 sc_in sc_lv 12 signal 49 } 
	{ W_V_47_address0 sc_out sc_lv 4 signal 50 } 
	{ W_V_47_ce0 sc_out sc_logic 1 signal 50 } 
	{ W_V_47_q0 sc_in sc_lv 12 signal 50 } 
	{ W_V_48_address0 sc_out sc_lv 4 signal 51 } 
	{ W_V_48_ce0 sc_out sc_logic 1 signal 51 } 
	{ W_V_48_q0 sc_in sc_lv 12 signal 51 } 
	{ W_V_49_address0 sc_out sc_lv 4 signal 52 } 
	{ W_V_49_ce0 sc_out sc_logic 1 signal 52 } 
	{ W_V_49_q0 sc_in sc_lv 12 signal 52 } 
	{ W_V_5_address0 sc_out sc_lv 4 signal 53 } 
	{ W_V_5_ce0 sc_out sc_logic 1 signal 53 } 
	{ W_V_5_q0 sc_in sc_lv 12 signal 53 } 
	{ W_V_50_address0 sc_out sc_lv 4 signal 54 } 
	{ W_V_50_ce0 sc_out sc_logic 1 signal 54 } 
	{ W_V_50_q0 sc_in sc_lv 12 signal 54 } 
	{ W_V_51_address0 sc_out sc_lv 4 signal 55 } 
	{ W_V_51_ce0 sc_out sc_logic 1 signal 55 } 
	{ W_V_51_q0 sc_in sc_lv 12 signal 55 } 
	{ W_V_52_address0 sc_out sc_lv 4 signal 56 } 
	{ W_V_52_ce0 sc_out sc_logic 1 signal 56 } 
	{ W_V_52_q0 sc_in sc_lv 12 signal 56 } 
	{ W_V_53_address0 sc_out sc_lv 4 signal 57 } 
	{ W_V_53_ce0 sc_out sc_logic 1 signal 57 } 
	{ W_V_53_q0 sc_in sc_lv 12 signal 57 } 
	{ W_V_54_address0 sc_out sc_lv 4 signal 58 } 
	{ W_V_54_ce0 sc_out sc_logic 1 signal 58 } 
	{ W_V_54_q0 sc_in sc_lv 12 signal 58 } 
	{ W_V_55_address0 sc_out sc_lv 4 signal 59 } 
	{ W_V_55_ce0 sc_out sc_logic 1 signal 59 } 
	{ W_V_55_q0 sc_in sc_lv 12 signal 59 } 
	{ W_V_56_address0 sc_out sc_lv 4 signal 60 } 
	{ W_V_56_ce0 sc_out sc_logic 1 signal 60 } 
	{ W_V_56_q0 sc_in sc_lv 12 signal 60 } 
	{ W_V_57_address0 sc_out sc_lv 4 signal 61 } 
	{ W_V_57_ce0 sc_out sc_logic 1 signal 61 } 
	{ W_V_57_q0 sc_in sc_lv 12 signal 61 } 
	{ W_V_58_address0 sc_out sc_lv 4 signal 62 } 
	{ W_V_58_ce0 sc_out sc_logic 1 signal 62 } 
	{ W_V_58_q0 sc_in sc_lv 12 signal 62 } 
	{ W_V_59_address0 sc_out sc_lv 4 signal 63 } 
	{ W_V_59_ce0 sc_out sc_logic 1 signal 63 } 
	{ W_V_59_q0 sc_in sc_lv 12 signal 63 } 
	{ W_V_6_address0 sc_out sc_lv 4 signal 64 } 
	{ W_V_6_ce0 sc_out sc_logic 1 signal 64 } 
	{ W_V_6_q0 sc_in sc_lv 12 signal 64 } 
	{ W_V_60_address0 sc_out sc_lv 4 signal 65 } 
	{ W_V_60_ce0 sc_out sc_logic 1 signal 65 } 
	{ W_V_60_q0 sc_in sc_lv 12 signal 65 } 
	{ W_V_61_address0 sc_out sc_lv 4 signal 66 } 
	{ W_V_61_ce0 sc_out sc_logic 1 signal 66 } 
	{ W_V_61_q0 sc_in sc_lv 12 signal 66 } 
	{ W_V_62_address0 sc_out sc_lv 4 signal 67 } 
	{ W_V_62_ce0 sc_out sc_logic 1 signal 67 } 
	{ W_V_62_q0 sc_in sc_lv 12 signal 67 } 
	{ W_V_63_address0 sc_out sc_lv 4 signal 68 } 
	{ W_V_63_ce0 sc_out sc_logic 1 signal 68 } 
	{ W_V_63_q0 sc_in sc_lv 12 signal 68 } 
	{ W_V_7_address0 sc_out sc_lv 4 signal 69 } 
	{ W_V_7_ce0 sc_out sc_logic 1 signal 69 } 
	{ W_V_7_q0 sc_in sc_lv 12 signal 69 } 
	{ W_V_8_address0 sc_out sc_lv 4 signal 70 } 
	{ W_V_8_ce0 sc_out sc_logic 1 signal 70 } 
	{ W_V_8_q0 sc_in sc_lv 12 signal 70 } 
	{ W_V_9_address0 sc_out sc_lv 4 signal 71 } 
	{ W_V_9_ce0 sc_out sc_logic 1 signal 71 } 
	{ W_V_9_q0 sc_in sc_lv 12 signal 71 } 
	{ b_V_9 sc_in sc_lv 32 signal 72 } 
	{ b_V_0 sc_in sc_lv 32 signal 73 } 
	{ b_V_1 sc_in sc_lv 32 signal 74 } 
	{ b_V_2 sc_in sc_lv 32 signal 75 } 
	{ b_V_3 sc_in sc_lv 32 signal 76 } 
	{ b_V_4 sc_in sc_lv 32 signal 77 } 
	{ b_V_5 sc_in sc_lv 32 signal 78 } 
	{ b_V_6 sc_in sc_lv 32 signal 79 } 
	{ b_V_7 sc_in sc_lv 32 signal 80 } 
	{ b_V_8 sc_in sc_lv 32 signal 81 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "scores_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scores", "role": "Addr_A" }} , 
 	{ "name": "scores_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores", "role": "EN_A" }} , 
 	{ "name": "scores_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scores", "role": "WEN_A" }} , 
 	{ "name": "scores_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scores", "role": "Din_A" }} , 
 	{ "name": "scores_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scores", "role": "Dout_A" }} , 
 	{ "name": "feature_vector2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "feature_vector_V_data_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "feature_vector_V_data_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "feature_vector_V_dest_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feature_vector_V_keep_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "feature_vector_V_strb_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "feature_vector_V_user_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feature_vector_V_last_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "feature_vector_V_id_V", "role": "default" }} , 
 	{ "name": "feature_vector2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "feature_vector_V_dest_V", "role": "default" }} , 
 	{ "name": "W_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_0", "role": "address0" }} , 
 	{ "name": "W_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_0", "role": "ce0" }} , 
 	{ "name": "W_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_0", "role": "q0" }} , 
 	{ "name": "W_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_1", "role": "address0" }} , 
 	{ "name": "W_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_1", "role": "ce0" }} , 
 	{ "name": "W_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_1", "role": "q0" }} , 
 	{ "name": "W_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_10", "role": "address0" }} , 
 	{ "name": "W_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_10", "role": "ce0" }} , 
 	{ "name": "W_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_10", "role": "q0" }} , 
 	{ "name": "W_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_11", "role": "address0" }} , 
 	{ "name": "W_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_11", "role": "ce0" }} , 
 	{ "name": "W_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_11", "role": "q0" }} , 
 	{ "name": "W_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_12", "role": "address0" }} , 
 	{ "name": "W_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_12", "role": "ce0" }} , 
 	{ "name": "W_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_12", "role": "q0" }} , 
 	{ "name": "W_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_13", "role": "address0" }} , 
 	{ "name": "W_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_13", "role": "ce0" }} , 
 	{ "name": "W_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_13", "role": "q0" }} , 
 	{ "name": "W_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_14", "role": "address0" }} , 
 	{ "name": "W_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_14", "role": "ce0" }} , 
 	{ "name": "W_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_14", "role": "q0" }} , 
 	{ "name": "W_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_15", "role": "address0" }} , 
 	{ "name": "W_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_15", "role": "ce0" }} , 
 	{ "name": "W_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_15", "role": "q0" }} , 
 	{ "name": "W_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_16", "role": "address0" }} , 
 	{ "name": "W_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_16", "role": "ce0" }} , 
 	{ "name": "W_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_16", "role": "q0" }} , 
 	{ "name": "W_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_17", "role": "address0" }} , 
 	{ "name": "W_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_17", "role": "ce0" }} , 
 	{ "name": "W_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_17", "role": "q0" }} , 
 	{ "name": "W_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_18", "role": "address0" }} , 
 	{ "name": "W_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_18", "role": "ce0" }} , 
 	{ "name": "W_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_18", "role": "q0" }} , 
 	{ "name": "W_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_19", "role": "address0" }} , 
 	{ "name": "W_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_19", "role": "ce0" }} , 
 	{ "name": "W_V_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_19", "role": "q0" }} , 
 	{ "name": "W_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_2", "role": "address0" }} , 
 	{ "name": "W_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_2", "role": "ce0" }} , 
 	{ "name": "W_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_2", "role": "q0" }} , 
 	{ "name": "W_V_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_20", "role": "address0" }} , 
 	{ "name": "W_V_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_20", "role": "ce0" }} , 
 	{ "name": "W_V_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_20", "role": "q0" }} , 
 	{ "name": "W_V_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_21", "role": "address0" }} , 
 	{ "name": "W_V_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_21", "role": "ce0" }} , 
 	{ "name": "W_V_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_21", "role": "q0" }} , 
 	{ "name": "W_V_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_22", "role": "address0" }} , 
 	{ "name": "W_V_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_22", "role": "ce0" }} , 
 	{ "name": "W_V_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_22", "role": "q0" }} , 
 	{ "name": "W_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_23", "role": "address0" }} , 
 	{ "name": "W_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_23", "role": "ce0" }} , 
 	{ "name": "W_V_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_23", "role": "q0" }} , 
 	{ "name": "W_V_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_24", "role": "address0" }} , 
 	{ "name": "W_V_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_24", "role": "ce0" }} , 
 	{ "name": "W_V_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_24", "role": "q0" }} , 
 	{ "name": "W_V_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_25", "role": "address0" }} , 
 	{ "name": "W_V_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_25", "role": "ce0" }} , 
 	{ "name": "W_V_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_25", "role": "q0" }} , 
 	{ "name": "W_V_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_26", "role": "address0" }} , 
 	{ "name": "W_V_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_26", "role": "ce0" }} , 
 	{ "name": "W_V_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_26", "role": "q0" }} , 
 	{ "name": "W_V_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_27", "role": "address0" }} , 
 	{ "name": "W_V_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_27", "role": "ce0" }} , 
 	{ "name": "W_V_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_27", "role": "q0" }} , 
 	{ "name": "W_V_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_28", "role": "address0" }} , 
 	{ "name": "W_V_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_28", "role": "ce0" }} , 
 	{ "name": "W_V_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_28", "role": "q0" }} , 
 	{ "name": "W_V_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_29", "role": "address0" }} , 
 	{ "name": "W_V_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_29", "role": "ce0" }} , 
 	{ "name": "W_V_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_29", "role": "q0" }} , 
 	{ "name": "W_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_3", "role": "address0" }} , 
 	{ "name": "W_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_3", "role": "ce0" }} , 
 	{ "name": "W_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_3", "role": "q0" }} , 
 	{ "name": "W_V_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_30", "role": "address0" }} , 
 	{ "name": "W_V_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_30", "role": "ce0" }} , 
 	{ "name": "W_V_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_30", "role": "q0" }} , 
 	{ "name": "W_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_31", "role": "address0" }} , 
 	{ "name": "W_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_31", "role": "ce0" }} , 
 	{ "name": "W_V_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_31", "role": "q0" }} , 
 	{ "name": "W_V_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_32", "role": "address0" }} , 
 	{ "name": "W_V_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_32", "role": "ce0" }} , 
 	{ "name": "W_V_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_32", "role": "q0" }} , 
 	{ "name": "W_V_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_33", "role": "address0" }} , 
 	{ "name": "W_V_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_33", "role": "ce0" }} , 
 	{ "name": "W_V_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_33", "role": "q0" }} , 
 	{ "name": "W_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_34", "role": "address0" }} , 
 	{ "name": "W_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_34", "role": "ce0" }} , 
 	{ "name": "W_V_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_34", "role": "q0" }} , 
 	{ "name": "W_V_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_35", "role": "address0" }} , 
 	{ "name": "W_V_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_35", "role": "ce0" }} , 
 	{ "name": "W_V_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_35", "role": "q0" }} , 
 	{ "name": "W_V_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_36", "role": "address0" }} , 
 	{ "name": "W_V_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_36", "role": "ce0" }} , 
 	{ "name": "W_V_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_36", "role": "q0" }} , 
 	{ "name": "W_V_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_37", "role": "address0" }} , 
 	{ "name": "W_V_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_37", "role": "ce0" }} , 
 	{ "name": "W_V_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_37", "role": "q0" }} , 
 	{ "name": "W_V_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_38", "role": "address0" }} , 
 	{ "name": "W_V_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_38", "role": "ce0" }} , 
 	{ "name": "W_V_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_38", "role": "q0" }} , 
 	{ "name": "W_V_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_39", "role": "address0" }} , 
 	{ "name": "W_V_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_39", "role": "ce0" }} , 
 	{ "name": "W_V_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_39", "role": "q0" }} , 
 	{ "name": "W_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_4", "role": "address0" }} , 
 	{ "name": "W_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_4", "role": "ce0" }} , 
 	{ "name": "W_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_4", "role": "q0" }} , 
 	{ "name": "W_V_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_40", "role": "address0" }} , 
 	{ "name": "W_V_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_40", "role": "ce0" }} , 
 	{ "name": "W_V_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_40", "role": "q0" }} , 
 	{ "name": "W_V_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_41", "role": "address0" }} , 
 	{ "name": "W_V_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_41", "role": "ce0" }} , 
 	{ "name": "W_V_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_41", "role": "q0" }} , 
 	{ "name": "W_V_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_42", "role": "address0" }} , 
 	{ "name": "W_V_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_42", "role": "ce0" }} , 
 	{ "name": "W_V_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_42", "role": "q0" }} , 
 	{ "name": "W_V_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_43", "role": "address0" }} , 
 	{ "name": "W_V_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_43", "role": "ce0" }} , 
 	{ "name": "W_V_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_43", "role": "q0" }} , 
 	{ "name": "W_V_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_44", "role": "address0" }} , 
 	{ "name": "W_V_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_44", "role": "ce0" }} , 
 	{ "name": "W_V_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_44", "role": "q0" }} , 
 	{ "name": "W_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_45", "role": "address0" }} , 
 	{ "name": "W_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_45", "role": "ce0" }} , 
 	{ "name": "W_V_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_45", "role": "q0" }} , 
 	{ "name": "W_V_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_46", "role": "address0" }} , 
 	{ "name": "W_V_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_46", "role": "ce0" }} , 
 	{ "name": "W_V_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_46", "role": "q0" }} , 
 	{ "name": "W_V_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_47", "role": "address0" }} , 
 	{ "name": "W_V_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_47", "role": "ce0" }} , 
 	{ "name": "W_V_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_47", "role": "q0" }} , 
 	{ "name": "W_V_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_48", "role": "address0" }} , 
 	{ "name": "W_V_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_48", "role": "ce0" }} , 
 	{ "name": "W_V_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_48", "role": "q0" }} , 
 	{ "name": "W_V_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_49", "role": "address0" }} , 
 	{ "name": "W_V_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_49", "role": "ce0" }} , 
 	{ "name": "W_V_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_49", "role": "q0" }} , 
 	{ "name": "W_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_5", "role": "address0" }} , 
 	{ "name": "W_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_5", "role": "ce0" }} , 
 	{ "name": "W_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_5", "role": "q0" }} , 
 	{ "name": "W_V_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_50", "role": "address0" }} , 
 	{ "name": "W_V_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_50", "role": "ce0" }} , 
 	{ "name": "W_V_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_50", "role": "q0" }} , 
 	{ "name": "W_V_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_51", "role": "address0" }} , 
 	{ "name": "W_V_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_51", "role": "ce0" }} , 
 	{ "name": "W_V_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_51", "role": "q0" }} , 
 	{ "name": "W_V_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_52", "role": "address0" }} , 
 	{ "name": "W_V_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_52", "role": "ce0" }} , 
 	{ "name": "W_V_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_52", "role": "q0" }} , 
 	{ "name": "W_V_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_53", "role": "address0" }} , 
 	{ "name": "W_V_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_53", "role": "ce0" }} , 
 	{ "name": "W_V_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_53", "role": "q0" }} , 
 	{ "name": "W_V_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_54", "role": "address0" }} , 
 	{ "name": "W_V_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_54", "role": "ce0" }} , 
 	{ "name": "W_V_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_54", "role": "q0" }} , 
 	{ "name": "W_V_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_55", "role": "address0" }} , 
 	{ "name": "W_V_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_55", "role": "ce0" }} , 
 	{ "name": "W_V_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_55", "role": "q0" }} , 
 	{ "name": "W_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_56", "role": "address0" }} , 
 	{ "name": "W_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_56", "role": "ce0" }} , 
 	{ "name": "W_V_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_56", "role": "q0" }} , 
 	{ "name": "W_V_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_57", "role": "address0" }} , 
 	{ "name": "W_V_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_57", "role": "ce0" }} , 
 	{ "name": "W_V_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_57", "role": "q0" }} , 
 	{ "name": "W_V_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_58", "role": "address0" }} , 
 	{ "name": "W_V_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_58", "role": "ce0" }} , 
 	{ "name": "W_V_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_58", "role": "q0" }} , 
 	{ "name": "W_V_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_59", "role": "address0" }} , 
 	{ "name": "W_V_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_59", "role": "ce0" }} , 
 	{ "name": "W_V_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_59", "role": "q0" }} , 
 	{ "name": "W_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_6", "role": "address0" }} , 
 	{ "name": "W_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_6", "role": "ce0" }} , 
 	{ "name": "W_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_6", "role": "q0" }} , 
 	{ "name": "W_V_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_60", "role": "address0" }} , 
 	{ "name": "W_V_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_60", "role": "ce0" }} , 
 	{ "name": "W_V_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_60", "role": "q0" }} , 
 	{ "name": "W_V_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_61", "role": "address0" }} , 
 	{ "name": "W_V_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_61", "role": "ce0" }} , 
 	{ "name": "W_V_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_61", "role": "q0" }} , 
 	{ "name": "W_V_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_62", "role": "address0" }} , 
 	{ "name": "W_V_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_62", "role": "ce0" }} , 
 	{ "name": "W_V_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_62", "role": "q0" }} , 
 	{ "name": "W_V_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_63", "role": "address0" }} , 
 	{ "name": "W_V_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_63", "role": "ce0" }} , 
 	{ "name": "W_V_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_63", "role": "q0" }} , 
 	{ "name": "W_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_7", "role": "address0" }} , 
 	{ "name": "W_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_7", "role": "ce0" }} , 
 	{ "name": "W_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_7", "role": "q0" }} , 
 	{ "name": "W_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_8", "role": "address0" }} , 
 	{ "name": "W_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_8", "role": "ce0" }} , 
 	{ "name": "W_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_8", "role": "q0" }} , 
 	{ "name": "W_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_V_9", "role": "address0" }} , 
 	{ "name": "W_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_V_9", "role": "ce0" }} , 
 	{ "name": "W_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "W_V_9", "role": "q0" }} , 
 	{ "name": "b_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_9", "role": "default" }} , 
 	{ "name": "b_V_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_0", "role": "default" }} , 
 	{ "name": "b_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_1", "role": "default" }} , 
 	{ "name": "b_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_2", "role": "default" }} , 
 	{ "name": "b_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_3", "role": "default" }} , 
 	{ "name": "b_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_4", "role": "default" }} , 
 	{ "name": "b_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_5", "role": "default" }} , 
 	{ "name": "b_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_6", "role": "default" }} , 
 	{ "name": "b_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_7", "role": "default" }} , 
 	{ "name": "b_V_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_V_8", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129"],
		"CDFG" : "compute_scores",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "121", "EstimateLatencyMax" : "121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "scores", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "feature_vector_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "feature_vector2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "feature_vector_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "feature_vector_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "W_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_1", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "W_V_2", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "W_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fv_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3300", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3301", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3302", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3303", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3304", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3305", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3306", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3307", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3308", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3309", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3310", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3311", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3312", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3313", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3314", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3315", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3316", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3317", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3318", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3319", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3320", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3321", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3322", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3323", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3324", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3325", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3326", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3327", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3328", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3329", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3330", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3331", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3332", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3333", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3334", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3335", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3336", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3337", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3338", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3339", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3340", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3341", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3342", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3343", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3344", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3345", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3346", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3347", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3348", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3349", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3350", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3351", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3352", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3353", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3354", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3355", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3356", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3357", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3358", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3359", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3360", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3361", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3362", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3363", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3364", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3365", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3366", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3367", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3368", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3369", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3370", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3371", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3372", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3373", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3374", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3375", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3376", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3377", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3378", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3379", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3380", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3381", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3382", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3383", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3384", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3385", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3386", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3387", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3388", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3389", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3390", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3391", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3392", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3393", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3394", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3395", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3396", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3397", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3398", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3399", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3400", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3401", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3402", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3403", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3404", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3405", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3406", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3407", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3408", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3409", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3410", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3411", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3412", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3413", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3414", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3415", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3416", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3417", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3418", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3419", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3420", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3421", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3422", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3423", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3424", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3425", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3426", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_1_U3427", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_scores {
		scores {Type O LastRead -1 FirstWrite 37}
		feature_vector_V_data_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_keep_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_strb_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_user_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_last_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_id_V {Type I LastRead 1 FirstWrite -1}
		feature_vector_V_dest_V {Type I LastRead 1 FirstWrite -1}
		W_V_0 {Type I LastRead 35 FirstWrite -1}
		W_V_1 {Type I LastRead 35 FirstWrite -1}
		W_V_10 {Type I LastRead 35 FirstWrite -1}
		W_V_11 {Type I LastRead 35 FirstWrite -1}
		W_V_12 {Type I LastRead 35 FirstWrite -1}
		W_V_13 {Type I LastRead 35 FirstWrite -1}
		W_V_14 {Type I LastRead 35 FirstWrite -1}
		W_V_15 {Type I LastRead 35 FirstWrite -1}
		W_V_16 {Type I LastRead 35 FirstWrite -1}
		W_V_17 {Type I LastRead 35 FirstWrite -1}
		W_V_18 {Type I LastRead 35 FirstWrite -1}
		W_V_19 {Type I LastRead 35 FirstWrite -1}
		W_V_2 {Type I LastRead 35 FirstWrite -1}
		W_V_20 {Type I LastRead 35 FirstWrite -1}
		W_V_21 {Type I LastRead 35 FirstWrite -1}
		W_V_22 {Type I LastRead 35 FirstWrite -1}
		W_V_23 {Type I LastRead 35 FirstWrite -1}
		W_V_24 {Type I LastRead 35 FirstWrite -1}
		W_V_25 {Type I LastRead 35 FirstWrite -1}
		W_V_26 {Type I LastRead 35 FirstWrite -1}
		W_V_27 {Type I LastRead 35 FirstWrite -1}
		W_V_28 {Type I LastRead 35 FirstWrite -1}
		W_V_29 {Type I LastRead 35 FirstWrite -1}
		W_V_3 {Type I LastRead 35 FirstWrite -1}
		W_V_30 {Type I LastRead 35 FirstWrite -1}
		W_V_31 {Type I LastRead 35 FirstWrite -1}
		W_V_32 {Type I LastRead 35 FirstWrite -1}
		W_V_33 {Type I LastRead 35 FirstWrite -1}
		W_V_34 {Type I LastRead 35 FirstWrite -1}
		W_V_35 {Type I LastRead 35 FirstWrite -1}
		W_V_36 {Type I LastRead 35 FirstWrite -1}
		W_V_37 {Type I LastRead 35 FirstWrite -1}
		W_V_38 {Type I LastRead 35 FirstWrite -1}
		W_V_39 {Type I LastRead 35 FirstWrite -1}
		W_V_4 {Type I LastRead 35 FirstWrite -1}
		W_V_40 {Type I LastRead 35 FirstWrite -1}
		W_V_41 {Type I LastRead 35 FirstWrite -1}
		W_V_42 {Type I LastRead 35 FirstWrite -1}
		W_V_43 {Type I LastRead 35 FirstWrite -1}
		W_V_44 {Type I LastRead 35 FirstWrite -1}
		W_V_45 {Type I LastRead 35 FirstWrite -1}
		W_V_46 {Type I LastRead 35 FirstWrite -1}
		W_V_47 {Type I LastRead 35 FirstWrite -1}
		W_V_48 {Type I LastRead 35 FirstWrite -1}
		W_V_49 {Type I LastRead 35 FirstWrite -1}
		W_V_5 {Type I LastRead 35 FirstWrite -1}
		W_V_50 {Type I LastRead 35 FirstWrite -1}
		W_V_51 {Type I LastRead 35 FirstWrite -1}
		W_V_52 {Type I LastRead 35 FirstWrite -1}
		W_V_53 {Type I LastRead 35 FirstWrite -1}
		W_V_54 {Type I LastRead 35 FirstWrite -1}
		W_V_55 {Type I LastRead 35 FirstWrite -1}
		W_V_56 {Type I LastRead 35 FirstWrite -1}
		W_V_57 {Type I LastRead 35 FirstWrite -1}
		W_V_58 {Type I LastRead 35 FirstWrite -1}
		W_V_59 {Type I LastRead 35 FirstWrite -1}
		W_V_6 {Type I LastRead 35 FirstWrite -1}
		W_V_60 {Type I LastRead 35 FirstWrite -1}
		W_V_61 {Type I LastRead 35 FirstWrite -1}
		W_V_62 {Type I LastRead 35 FirstWrite -1}
		W_V_63 {Type I LastRead 35 FirstWrite -1}
		W_V_7 {Type I LastRead 35 FirstWrite -1}
		W_V_8 {Type I LastRead 35 FirstWrite -1}
		W_V_9 {Type I LastRead 35 FirstWrite -1}
		b_V_9 {Type I LastRead 34 FirstWrite -1}
		b_V_0 {Type I LastRead 34 FirstWrite -1}
		b_V_1 {Type I LastRead 34 FirstWrite -1}
		b_V_2 {Type I LastRead 34 FirstWrite -1}
		b_V_3 {Type I LastRead 34 FirstWrite -1}
		b_V_4 {Type I LastRead 34 FirstWrite -1}
		b_V_5 {Type I LastRead 34 FirstWrite -1}
		b_V_6 {Type I LastRead 34 FirstWrite -1}
		b_V_7 {Type I LastRead 34 FirstWrite -1}
		b_V_8 {Type I LastRead 34 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "121", "Max" : "121"}
	, {"Name" : "Interval", "Min" : "121", "Max" : "121"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	scores { bram {  { scores_Addr_A MemPortADDR2 1 32 }  { scores_EN_A MemPortCE2 1 1 }  { scores_WEN_A MemPortWE2 1 4 }  { scores_Din_A MemPortDIN2 1 32 }  { scores_Dout_A MemPortDOUT2 0 32 } } }
	feature_vector_V_data_V { axis {  { feature_vector2_TDATA in_data 0 128 }  { feature_vector2_TVALID in_vld 0 1 } } }
	feature_vector_V_keep_V { axis {  { feature_vector2_TKEEP in_data 0 16 } } }
	feature_vector_V_strb_V { axis {  { feature_vector2_TSTRB in_data 0 16 } } }
	feature_vector_V_user_V { axis {  { feature_vector2_TUSER in_data 0 2 } } }
	feature_vector_V_last_V { axis {  { feature_vector2_TLAST in_data 0 1 } } }
	feature_vector_V_id_V { axis {  { feature_vector2_TID in_data 0 5 } } }
	feature_vector_V_dest_V { axis {  { feature_vector2_TREADY in_acc 1 1 }  { feature_vector2_TDEST in_data 0 6 } } }
	W_V_0 { ap_memory {  { W_V_0_address0 mem_address 1 4 }  { W_V_0_ce0 mem_ce 1 1 }  { W_V_0_q0 mem_dout 0 12 } } }
	W_V_1 { ap_memory {  { W_V_1_address0 mem_address 1 4 }  { W_V_1_ce0 mem_ce 1 1 }  { W_V_1_q0 mem_dout 0 12 } } }
	W_V_10 { ap_memory {  { W_V_10_address0 mem_address 1 4 }  { W_V_10_ce0 mem_ce 1 1 }  { W_V_10_q0 mem_dout 0 12 } } }
	W_V_11 { ap_memory {  { W_V_11_address0 mem_address 1 4 }  { W_V_11_ce0 mem_ce 1 1 }  { W_V_11_q0 mem_dout 0 12 } } }
	W_V_12 { ap_memory {  { W_V_12_address0 mem_address 1 4 }  { W_V_12_ce0 mem_ce 1 1 }  { W_V_12_q0 mem_dout 0 12 } } }
	W_V_13 { ap_memory {  { W_V_13_address0 mem_address 1 4 }  { W_V_13_ce0 mem_ce 1 1 }  { W_V_13_q0 mem_dout 0 12 } } }
	W_V_14 { ap_memory {  { W_V_14_address0 mem_address 1 4 }  { W_V_14_ce0 mem_ce 1 1 }  { W_V_14_q0 mem_dout 0 12 } } }
	W_V_15 { ap_memory {  { W_V_15_address0 mem_address 1 4 }  { W_V_15_ce0 mem_ce 1 1 }  { W_V_15_q0 mem_dout 0 12 } } }
	W_V_16 { ap_memory {  { W_V_16_address0 mem_address 1 4 }  { W_V_16_ce0 mem_ce 1 1 }  { W_V_16_q0 mem_dout 0 12 } } }
	W_V_17 { ap_memory {  { W_V_17_address0 mem_address 1 4 }  { W_V_17_ce0 mem_ce 1 1 }  { W_V_17_q0 mem_dout 0 12 } } }
	W_V_18 { ap_memory {  { W_V_18_address0 mem_address 1 4 }  { W_V_18_ce0 mem_ce 1 1 }  { W_V_18_q0 mem_dout 0 12 } } }
	W_V_19 { ap_memory {  { W_V_19_address0 mem_address 1 4 }  { W_V_19_ce0 mem_ce 1 1 }  { W_V_19_q0 mem_dout 0 12 } } }
	W_V_2 { ap_memory {  { W_V_2_address0 mem_address 1 4 }  { W_V_2_ce0 mem_ce 1 1 }  { W_V_2_q0 mem_dout 0 12 } } }
	W_V_20 { ap_memory {  { W_V_20_address0 mem_address 1 4 }  { W_V_20_ce0 mem_ce 1 1 }  { W_V_20_q0 mem_dout 0 12 } } }
	W_V_21 { ap_memory {  { W_V_21_address0 mem_address 1 4 }  { W_V_21_ce0 mem_ce 1 1 }  { W_V_21_q0 mem_dout 0 12 } } }
	W_V_22 { ap_memory {  { W_V_22_address0 mem_address 1 4 }  { W_V_22_ce0 mem_ce 1 1 }  { W_V_22_q0 mem_dout 0 12 } } }
	W_V_23 { ap_memory {  { W_V_23_address0 mem_address 1 4 }  { W_V_23_ce0 mem_ce 1 1 }  { W_V_23_q0 mem_dout 0 12 } } }
	W_V_24 { ap_memory {  { W_V_24_address0 mem_address 1 4 }  { W_V_24_ce0 mem_ce 1 1 }  { W_V_24_q0 mem_dout 0 12 } } }
	W_V_25 { ap_memory {  { W_V_25_address0 mem_address 1 4 }  { W_V_25_ce0 mem_ce 1 1 }  { W_V_25_q0 mem_dout 0 12 } } }
	W_V_26 { ap_memory {  { W_V_26_address0 mem_address 1 4 }  { W_V_26_ce0 mem_ce 1 1 }  { W_V_26_q0 mem_dout 0 12 } } }
	W_V_27 { ap_memory {  { W_V_27_address0 mem_address 1 4 }  { W_V_27_ce0 mem_ce 1 1 }  { W_V_27_q0 mem_dout 0 12 } } }
	W_V_28 { ap_memory {  { W_V_28_address0 mem_address 1 4 }  { W_V_28_ce0 mem_ce 1 1 }  { W_V_28_q0 mem_dout 0 12 } } }
	W_V_29 { ap_memory {  { W_V_29_address0 mem_address 1 4 }  { W_V_29_ce0 mem_ce 1 1 }  { W_V_29_q0 mem_dout 0 12 } } }
	W_V_3 { ap_memory {  { W_V_3_address0 mem_address 1 4 }  { W_V_3_ce0 mem_ce 1 1 }  { W_V_3_q0 mem_dout 0 12 } } }
	W_V_30 { ap_memory {  { W_V_30_address0 mem_address 1 4 }  { W_V_30_ce0 mem_ce 1 1 }  { W_V_30_q0 mem_dout 0 12 } } }
	W_V_31 { ap_memory {  { W_V_31_address0 mem_address 1 4 }  { W_V_31_ce0 mem_ce 1 1 }  { W_V_31_q0 mem_dout 0 12 } } }
	W_V_32 { ap_memory {  { W_V_32_address0 mem_address 1 4 }  { W_V_32_ce0 mem_ce 1 1 }  { W_V_32_q0 mem_dout 0 12 } } }
	W_V_33 { ap_memory {  { W_V_33_address0 mem_address 1 4 }  { W_V_33_ce0 mem_ce 1 1 }  { W_V_33_q0 mem_dout 0 12 } } }
	W_V_34 { ap_memory {  { W_V_34_address0 mem_address 1 4 }  { W_V_34_ce0 mem_ce 1 1 }  { W_V_34_q0 mem_dout 0 12 } } }
	W_V_35 { ap_memory {  { W_V_35_address0 mem_address 1 4 }  { W_V_35_ce0 mem_ce 1 1 }  { W_V_35_q0 mem_dout 0 12 } } }
	W_V_36 { ap_memory {  { W_V_36_address0 mem_address 1 4 }  { W_V_36_ce0 mem_ce 1 1 }  { W_V_36_q0 mem_dout 0 12 } } }
	W_V_37 { ap_memory {  { W_V_37_address0 mem_address 1 4 }  { W_V_37_ce0 mem_ce 1 1 }  { W_V_37_q0 mem_dout 0 12 } } }
	W_V_38 { ap_memory {  { W_V_38_address0 mem_address 1 4 }  { W_V_38_ce0 mem_ce 1 1 }  { W_V_38_q0 mem_dout 0 12 } } }
	W_V_39 { ap_memory {  { W_V_39_address0 mem_address 1 4 }  { W_V_39_ce0 mem_ce 1 1 }  { W_V_39_q0 mem_dout 0 12 } } }
	W_V_4 { ap_memory {  { W_V_4_address0 mem_address 1 4 }  { W_V_4_ce0 mem_ce 1 1 }  { W_V_4_q0 mem_dout 0 12 } } }
	W_V_40 { ap_memory {  { W_V_40_address0 mem_address 1 4 }  { W_V_40_ce0 mem_ce 1 1 }  { W_V_40_q0 mem_dout 0 12 } } }
	W_V_41 { ap_memory {  { W_V_41_address0 mem_address 1 4 }  { W_V_41_ce0 mem_ce 1 1 }  { W_V_41_q0 mem_dout 0 12 } } }
	W_V_42 { ap_memory {  { W_V_42_address0 mem_address 1 4 }  { W_V_42_ce0 mem_ce 1 1 }  { W_V_42_q0 mem_dout 0 12 } } }
	W_V_43 { ap_memory {  { W_V_43_address0 mem_address 1 4 }  { W_V_43_ce0 mem_ce 1 1 }  { W_V_43_q0 mem_dout 0 12 } } }
	W_V_44 { ap_memory {  { W_V_44_address0 mem_address 1 4 }  { W_V_44_ce0 mem_ce 1 1 }  { W_V_44_q0 mem_dout 0 12 } } }
	W_V_45 { ap_memory {  { W_V_45_address0 mem_address 1 4 }  { W_V_45_ce0 mem_ce 1 1 }  { W_V_45_q0 mem_dout 0 12 } } }
	W_V_46 { ap_memory {  { W_V_46_address0 mem_address 1 4 }  { W_V_46_ce0 mem_ce 1 1 }  { W_V_46_q0 mem_dout 0 12 } } }
	W_V_47 { ap_memory {  { W_V_47_address0 mem_address 1 4 }  { W_V_47_ce0 mem_ce 1 1 }  { W_V_47_q0 mem_dout 0 12 } } }
	W_V_48 { ap_memory {  { W_V_48_address0 mem_address 1 4 }  { W_V_48_ce0 mem_ce 1 1 }  { W_V_48_q0 mem_dout 0 12 } } }
	W_V_49 { ap_memory {  { W_V_49_address0 mem_address 1 4 }  { W_V_49_ce0 mem_ce 1 1 }  { W_V_49_q0 mem_dout 0 12 } } }
	W_V_5 { ap_memory {  { W_V_5_address0 mem_address 1 4 }  { W_V_5_ce0 mem_ce 1 1 }  { W_V_5_q0 mem_dout 0 12 } } }
	W_V_50 { ap_memory {  { W_V_50_address0 mem_address 1 4 }  { W_V_50_ce0 mem_ce 1 1 }  { W_V_50_q0 mem_dout 0 12 } } }
	W_V_51 { ap_memory {  { W_V_51_address0 mem_address 1 4 }  { W_V_51_ce0 mem_ce 1 1 }  { W_V_51_q0 mem_dout 0 12 } } }
	W_V_52 { ap_memory {  { W_V_52_address0 mem_address 1 4 }  { W_V_52_ce0 mem_ce 1 1 }  { W_V_52_q0 mem_dout 0 12 } } }
	W_V_53 { ap_memory {  { W_V_53_address0 mem_address 1 4 }  { W_V_53_ce0 mem_ce 1 1 }  { W_V_53_q0 mem_dout 0 12 } } }
	W_V_54 { ap_memory {  { W_V_54_address0 mem_address 1 4 }  { W_V_54_ce0 mem_ce 1 1 }  { W_V_54_q0 mem_dout 0 12 } } }
	W_V_55 { ap_memory {  { W_V_55_address0 mem_address 1 4 }  { W_V_55_ce0 mem_ce 1 1 }  { W_V_55_q0 mem_dout 0 12 } } }
	W_V_56 { ap_memory {  { W_V_56_address0 mem_address 1 4 }  { W_V_56_ce0 mem_ce 1 1 }  { W_V_56_q0 mem_dout 0 12 } } }
	W_V_57 { ap_memory {  { W_V_57_address0 mem_address 1 4 }  { W_V_57_ce0 mem_ce 1 1 }  { W_V_57_q0 mem_dout 0 12 } } }
	W_V_58 { ap_memory {  { W_V_58_address0 mem_address 1 4 }  { W_V_58_ce0 mem_ce 1 1 }  { W_V_58_q0 mem_dout 0 12 } } }
	W_V_59 { ap_memory {  { W_V_59_address0 mem_address 1 4 }  { W_V_59_ce0 mem_ce 1 1 }  { W_V_59_q0 mem_dout 0 12 } } }
	W_V_6 { ap_memory {  { W_V_6_address0 mem_address 1 4 }  { W_V_6_ce0 mem_ce 1 1 }  { W_V_6_q0 mem_dout 0 12 } } }
	W_V_60 { ap_memory {  { W_V_60_address0 mem_address 1 4 }  { W_V_60_ce0 mem_ce 1 1 }  { W_V_60_q0 mem_dout 0 12 } } }
	W_V_61 { ap_memory {  { W_V_61_address0 mem_address 1 4 }  { W_V_61_ce0 mem_ce 1 1 }  { W_V_61_q0 mem_dout 0 12 } } }
	W_V_62 { ap_memory {  { W_V_62_address0 mem_address 1 4 }  { W_V_62_ce0 mem_ce 1 1 }  { W_V_62_q0 mem_dout 0 12 } } }
	W_V_63 { ap_memory {  { W_V_63_address0 mem_address 1 4 }  { W_V_63_ce0 mem_ce 1 1 }  { W_V_63_q0 mem_dout 0 12 } } }
	W_V_7 { ap_memory {  { W_V_7_address0 mem_address 1 4 }  { W_V_7_ce0 mem_ce 1 1 }  { W_V_7_q0 mem_dout 0 12 } } }
	W_V_8 { ap_memory {  { W_V_8_address0 mem_address 1 4 }  { W_V_8_ce0 mem_ce 1 1 }  { W_V_8_q0 mem_dout 0 12 } } }
	W_V_9 { ap_memory {  { W_V_9_address0 mem_address 1 4 }  { W_V_9_ce0 mem_ce 1 1 }  { W_V_9_q0 mem_dout 0 12 } } }
	b_V_9 { ap_none {  { b_V_9 in_data 0 32 } } }
	b_V_0 { ap_none {  { b_V_0 in_data 0 32 } } }
	b_V_1 { ap_none {  { b_V_1 in_data 0 32 } } }
	b_V_2 { ap_none {  { b_V_2 in_data 0 32 } } }
	b_V_3 { ap_none {  { b_V_3 in_data 0 32 } } }
	b_V_4 { ap_none {  { b_V_4 in_data 0 32 } } }
	b_V_5 { ap_none {  { b_V_5 in_data 0 32 } } }
	b_V_6 { ap_none {  { b_V_6 in_data 0 32 } } }
	b_V_7 { ap_none {  { b_V_7 in_data 0 32 } } }
	b_V_8 { ap_none {  { b_V_8 in_data 0 32 } } }
}
