
/tools/Xilinx/Vivado/2020.2/bin/xelab xil_defaultlib.apatb_SLDA_final_top glbl -prj SLDA_final.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_18 -L floating_point_v7_1_11 --lib "ieee_proposed=./ieee_proposed" -s SLDA_final -debug wave
/tools/Xilinx/Vivado/2020.2/bin/xsim --noieeewarnings SLDA_final -tclbatch SLDA_final.tcl -view SLDA_final_dataflow_ana.wcfg -protoinst SLDA_final.protoinst

