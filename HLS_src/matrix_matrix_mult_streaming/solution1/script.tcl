############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_matrix_mult_streaming
set_top matrix_matrix_mult_streaming
add_files matrix_matrix_mult_streaming.h
add_files matrix_matrix_mult_streaming.cpp
add_files -tb matrix_matrix_mult_streaming_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./matrix_matrix_mult_streaming/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling -trace_level all
export_design -rtl verilog -format ip_catalog
