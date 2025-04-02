set moduleName vector_scale
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
set C_modelName {vector_scale}
set C_modelType { void 0 }
set C_modelArgList {
	{ vec_V_data_V int 128 regular {axi_s 0 volatile  { vec1 Data } }  }
	{ vec_V_keep_V int 16 regular {axi_s 0 volatile  { vec1 Keep } }  }
	{ vec_V_strb_V int 16 regular {axi_s 0 volatile  { vec1 Strb } }  }
	{ vec_V_user_V int 2 regular {axi_s 0 volatile  { vec1 User } }  }
	{ vec_V_last_V int 1 regular {axi_s 0 volatile  { vec1 Last } }  }
	{ vec_V_id_V int 5 regular {axi_s 0 volatile  { vec1 ID } }  }
	{ vec_V_dest_V int 6 regular {axi_s 0 volatile  { vec1 Dest } }  }
	{ vec_out_V_data_V int 128 regular {axi_s 1 volatile  { vec_out Data } }  }
	{ vec_out_V_keep_V int 16 regular {axi_s 1 volatile  { vec_out Keep } }  }
	{ vec_out_V_strb_V int 16 regular {axi_s 1 volatile  { vec_out Strb } }  }
	{ vec_out_V_user_V int 2 regular {axi_s 1 volatile  { vec_out User } }  }
	{ vec_out_V_last_V int 1 regular {axi_s 1 volatile  { vec_out Last } }  }
	{ vec_out_V_id_V int 5 regular {axi_s 1 volatile  { vec_out ID } }  }
	{ vec_out_V_dest_V int 6 regular {axi_s 1 volatile  { vec_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vec_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "vec_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "vec_out_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vec_out_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vec1_TDATA sc_in sc_lv 128 signal 0 } 
	{ vec1_TVALID sc_in sc_logic 1 invld 0 } 
	{ vec1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ vec1_TKEEP sc_in sc_lv 16 signal 1 } 
	{ vec1_TSTRB sc_in sc_lv 16 signal 2 } 
	{ vec1_TUSER sc_in sc_lv 2 signal 3 } 
	{ vec1_TLAST sc_in sc_lv 1 signal 4 } 
	{ vec1_TID sc_in sc_lv 5 signal 5 } 
	{ vec1_TDEST sc_in sc_lv 6 signal 6 } 
	{ vec_out_TDATA sc_out sc_lv 128 signal 7 } 
	{ vec_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ vec_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ vec_out_TKEEP sc_out sc_lv 16 signal 8 } 
	{ vec_out_TSTRB sc_out sc_lv 16 signal 9 } 
	{ vec_out_TUSER sc_out sc_lv 2 signal 10 } 
	{ vec_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ vec_out_TID sc_out sc_lv 5 signal 12 } 
	{ vec_out_TDEST sc_out sc_lv 6 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vec1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec_V_data_V", "role": "default" }} , 
 	{ "name": "vec1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "vec_V_data_V", "role": "default" }} , 
 	{ "name": "vec1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "vec_V_dest_V", "role": "default" }} , 
 	{ "name": "vec1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_V_keep_V", "role": "default" }} , 
 	{ "name": "vec1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_V_strb_V", "role": "default" }} , 
 	{ "name": "vec1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec_V_user_V", "role": "default" }} , 
 	{ "name": "vec1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_V_last_V", "role": "default" }} , 
 	{ "name": "vec1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec_V_id_V", "role": "default" }} , 
 	{ "name": "vec1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vec_V_dest_V", "role": "default" }} , 
 	{ "name": "vec_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "vec_out_V_data_V", "role": "default" }} , 
 	{ "name": "vec_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vec_out_V_dest_V", "role": "default" }} , 
 	{ "name": "vec_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "vec_out_V_data_V", "role": "default" }} , 
 	{ "name": "vec_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_out_V_keep_V", "role": "default" }} , 
 	{ "name": "vec_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "vec_out_V_strb_V", "role": "default" }} , 
 	{ "name": "vec_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "vec_out_V_user_V", "role": "default" }} , 
 	{ "name": "vec_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "vec_out_V_last_V", "role": "default" }} , 
 	{ "name": "vec_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "vec_out_V_id_V", "role": "default" }} , 
 	{ "name": "vec_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "vec_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "vec_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
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
		vec_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vec_V_data_V { axis {  { vec1_TDATA in_data 0 128 }  { vec1_TVALID in_vld 0 1 } } }
	vec_V_keep_V { axis {  { vec1_TKEEP in_data 0 16 } } }
	vec_V_strb_V { axis {  { vec1_TSTRB in_data 0 16 } } }
	vec_V_user_V { axis {  { vec1_TUSER in_data 0 2 } } }
	vec_V_last_V { axis {  { vec1_TLAST in_data 0 1 } } }
	vec_V_id_V { axis {  { vec1_TID in_data 0 5 } } }
	vec_V_dest_V { axis {  { vec1_TREADY in_acc 1 1 }  { vec1_TDEST in_data 0 6 } } }
	vec_out_V_data_V { axis {  { vec_out_TDATA out_data 1 128 }  { vec_out_TREADY out_acc 0 1 } } }
	vec_out_V_keep_V { axis {  { vec_out_TKEEP out_data 1 16 } } }
	vec_out_V_strb_V { axis {  { vec_out_TSTRB out_data 1 16 } } }
	vec_out_V_user_V { axis {  { vec_out_TUSER out_data 1 2 } } }
	vec_out_V_last_V { axis {  { vec_out_TLAST out_data 1 1 } } }
	vec_out_V_id_V { axis {  { vec_out_TID out_data 1 5 } } }
	vec_out_V_dest_V { axis {  { vec_out_TVALID out_vld 1 1 }  { vec_out_TDEST out_data 1 6 } } }
}
