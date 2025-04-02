############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SLDA_final
set_top SLDA_final
add_files SLDA_final.cpp
add_files SLDA_final.h
add_files mat_vec_mult_streaming.cpp
add_files mat_vec_mult_streaming.h
add_files matrix_matrix_mult_streaming.cpp
add_files matrix_matrix_mult_streaming.h
add_files training_module.cpp
add_files training_module.h
add_files vec_vec_op_streaming.cpp
add_files vec_vec_op_streaming.h
add_files -tb SLDA_final_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/manolis/HLS_code/SLDA_final.zip -rtl verilog
set_clock_uncertainty 1
source "./SLDA_final/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output /home/manolis/HLS_code/SLDA_final.zip
