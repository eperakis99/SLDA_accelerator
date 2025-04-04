
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_BRESP -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_RRESP -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_RDATA -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_ARADDR -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_WSTRB -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_WDATA -into $return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/s_axi_CTRL_BUS_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set feature_vector_group [add_wave_group feature_vector(axis) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TREADY -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TVALID -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TDEST -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TID -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TLAST -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TUSER -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TSTRB -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TKEEP -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TDATA -into $feature_vector_group -radix hex
set B_31_group [add_wave_group B_31(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_we1 -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_q1 -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_d1 -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_ce1 -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_address1 -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_we0 -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_q0 -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_d0 -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_ce0 -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_address0 -into $B_31_group -radix hex
set B_30_group [add_wave_group B_30(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_we1 -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_q1 -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_d1 -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_ce1 -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_address1 -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_we0 -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_q0 -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_d0 -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_ce0 -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_address0 -into $B_30_group -radix hex
set B_29_group [add_wave_group B_29(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_we1 -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_q1 -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_d1 -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_ce1 -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_address1 -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_we0 -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_q0 -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_d0 -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_ce0 -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_address0 -into $B_29_group -radix hex
set B_28_group [add_wave_group B_28(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_we1 -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_q1 -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_d1 -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_ce1 -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_address1 -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_we0 -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_q0 -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_d0 -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_ce0 -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_address0 -into $B_28_group -radix hex
set B_27_group [add_wave_group B_27(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_we1 -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_q1 -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_d1 -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_ce1 -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_address1 -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_we0 -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_q0 -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_d0 -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_ce0 -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_address0 -into $B_27_group -radix hex
set B_26_group [add_wave_group B_26(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_we1 -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_q1 -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_d1 -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_ce1 -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_address1 -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_we0 -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_q0 -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_d0 -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_ce0 -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_address0 -into $B_26_group -radix hex
set B_25_group [add_wave_group B_25(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_we1 -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_q1 -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_d1 -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_ce1 -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_address1 -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_we0 -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_q0 -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_d0 -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_ce0 -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_address0 -into $B_25_group -radix hex
set B_24_group [add_wave_group B_24(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_we1 -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_q1 -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_d1 -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_ce1 -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_address1 -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_we0 -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_q0 -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_d0 -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_ce0 -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_address0 -into $B_24_group -radix hex
set B_23_group [add_wave_group B_23(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_we1 -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_q1 -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_d1 -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_ce1 -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_address1 -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_we0 -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_q0 -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_d0 -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_ce0 -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_address0 -into $B_23_group -radix hex
set B_22_group [add_wave_group B_22(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_we1 -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_q1 -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_d1 -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_ce1 -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_address1 -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_we0 -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_q0 -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_d0 -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_ce0 -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_address0 -into $B_22_group -radix hex
set B_21_group [add_wave_group B_21(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_we1 -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_q1 -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_d1 -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_ce1 -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_address1 -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_we0 -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_q0 -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_d0 -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_ce0 -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_address0 -into $B_21_group -radix hex
set B_20_group [add_wave_group B_20(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_we1 -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_q1 -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_d1 -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_ce1 -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_address1 -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_we0 -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_q0 -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_d0 -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_ce0 -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_address0 -into $B_20_group -radix hex
set B_19_group [add_wave_group B_19(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_we1 -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_q1 -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_d1 -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_ce1 -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_address1 -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_we0 -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_q0 -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_d0 -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_ce0 -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_address0 -into $B_19_group -radix hex
set B_18_group [add_wave_group B_18(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_we1 -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_q1 -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_d1 -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_ce1 -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_address1 -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_we0 -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_q0 -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_d0 -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_ce0 -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_address0 -into $B_18_group -radix hex
set B_17_group [add_wave_group B_17(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_we1 -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_q1 -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_d1 -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_ce1 -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_address1 -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_we0 -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_q0 -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_d0 -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_ce0 -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_address0 -into $B_17_group -radix hex
set B_16_group [add_wave_group B_16(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_we1 -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_q1 -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_d1 -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_ce1 -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_address1 -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_we0 -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_q0 -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_d0 -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_ce0 -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_address0 -into $B_16_group -radix hex
set B_15_group [add_wave_group B_15(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_we1 -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_q1 -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_d1 -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_ce1 -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_address1 -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_we0 -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_q0 -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_d0 -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_ce0 -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_address0 -into $B_15_group -radix hex
set B_14_group [add_wave_group B_14(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_we1 -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_q1 -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_d1 -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_ce1 -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_address1 -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_we0 -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_q0 -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_d0 -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_ce0 -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_address0 -into $B_14_group -radix hex
set B_13_group [add_wave_group B_13(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_we1 -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_q1 -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_d1 -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_ce1 -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_address1 -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_we0 -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_q0 -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_d0 -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_ce0 -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_address0 -into $B_13_group -radix hex
set B_12_group [add_wave_group B_12(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_we1 -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_q1 -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_d1 -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_ce1 -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_address1 -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_we0 -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_q0 -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_d0 -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_ce0 -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_address0 -into $B_12_group -radix hex
set B_11_group [add_wave_group B_11(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_we1 -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_q1 -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_d1 -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_ce1 -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_address1 -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_we0 -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_q0 -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_d0 -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_ce0 -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_address0 -into $B_11_group -radix hex
set B_10_group [add_wave_group B_10(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_we1 -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_q1 -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_d1 -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_ce1 -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_address1 -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_we0 -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_q0 -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_d0 -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_ce0 -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_address0 -into $B_10_group -radix hex
set B_9_group [add_wave_group B_9(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_we1 -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_q1 -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_d1 -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_ce1 -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_address1 -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_we0 -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_q0 -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_d0 -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_ce0 -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_address0 -into $B_9_group -radix hex
set B_8_group [add_wave_group B_8(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_we1 -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_q1 -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_d1 -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_ce1 -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_address1 -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_we0 -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_q0 -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_d0 -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_ce0 -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_address0 -into $B_8_group -radix hex
set B_7_group [add_wave_group B_7(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_we1 -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_q1 -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_d1 -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_ce1 -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_address1 -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_we0 -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_q0 -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_d0 -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_ce0 -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_address0 -into $B_7_group -radix hex
set B_6_group [add_wave_group B_6(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_we1 -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_q1 -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_d1 -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_ce1 -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_address1 -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_we0 -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_q0 -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_d0 -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_ce0 -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_address0 -into $B_6_group -radix hex
set B_5_group [add_wave_group B_5(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_we1 -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_q1 -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_d1 -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_ce1 -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_address1 -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_we0 -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_q0 -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_d0 -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_ce0 -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_address0 -into $B_5_group -radix hex
set B_4_group [add_wave_group B_4(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_we1 -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_q1 -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_d1 -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_ce1 -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_address1 -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_we0 -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_q0 -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_d0 -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_ce0 -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_address0 -into $B_4_group -radix hex
set B_3_group [add_wave_group B_3(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_we1 -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_q1 -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_d1 -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_ce1 -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_address1 -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_we0 -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_q0 -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_d0 -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_ce0 -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_address0 -into $B_3_group -radix hex
set B_2_group [add_wave_group B_2(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_we1 -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_q1 -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_d1 -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_ce1 -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_address1 -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_we0 -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_q0 -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_d0 -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_ce0 -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_address0 -into $B_2_group -radix hex
set B_1_group [add_wave_group B_1(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_we1 -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_q1 -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_d1 -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_ce1 -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_address1 -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_we0 -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_q0 -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_d0 -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_ce0 -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_address0 -into $B_1_group -radix hex
set B_0_group [add_wave_group B_0(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_we1 -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_q1 -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_d1 -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_ce1 -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_address1 -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_we0 -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_q0 -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_d0 -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_ce0 -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_address0 -into $B_0_group -radix hex
set A_31_group [add_wave_group A_31(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_we1 -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_q1 -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_d1 -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_ce1 -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_address1 -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_we0 -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_q0 -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_d0 -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_ce0 -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_address0 -into $A_31_group -radix hex
set A_30_group [add_wave_group A_30(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_we1 -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_q1 -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_d1 -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_ce1 -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_address1 -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_we0 -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_q0 -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_d0 -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_ce0 -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_address0 -into $A_30_group -radix hex
set A_29_group [add_wave_group A_29(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_we1 -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_q1 -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_d1 -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_ce1 -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_address1 -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_we0 -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_q0 -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_d0 -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_ce0 -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_address0 -into $A_29_group -radix hex
set A_28_group [add_wave_group A_28(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_we1 -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_q1 -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_d1 -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_ce1 -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_address1 -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_we0 -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_q0 -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_d0 -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_ce0 -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_address0 -into $A_28_group -radix hex
set A_27_group [add_wave_group A_27(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_we1 -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_q1 -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_d1 -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_ce1 -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_address1 -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_we0 -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_q0 -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_d0 -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_ce0 -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_address0 -into $A_27_group -radix hex
set A_26_group [add_wave_group A_26(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_we1 -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_q1 -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_d1 -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_ce1 -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_address1 -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_we0 -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_q0 -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_d0 -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_ce0 -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_address0 -into $A_26_group -radix hex
set A_25_group [add_wave_group A_25(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_we1 -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_q1 -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_d1 -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_ce1 -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_address1 -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_we0 -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_q0 -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_d0 -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_ce0 -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_address0 -into $A_25_group -radix hex
set A_24_group [add_wave_group A_24(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_we1 -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_q1 -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_d1 -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_ce1 -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_address1 -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_we0 -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_q0 -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_d0 -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_ce0 -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_address0 -into $A_24_group -radix hex
set A_23_group [add_wave_group A_23(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_we1 -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_q1 -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_d1 -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_ce1 -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_address1 -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_we0 -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_q0 -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_d0 -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_ce0 -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_address0 -into $A_23_group -radix hex
set A_22_group [add_wave_group A_22(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_we1 -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_q1 -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_d1 -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_ce1 -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_address1 -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_we0 -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_q0 -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_d0 -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_ce0 -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_address0 -into $A_22_group -radix hex
set A_21_group [add_wave_group A_21(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_we1 -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_q1 -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_d1 -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_ce1 -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_address1 -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_we0 -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_q0 -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_d0 -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_ce0 -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_address0 -into $A_21_group -radix hex
set A_20_group [add_wave_group A_20(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_we1 -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_q1 -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_d1 -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_ce1 -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_address1 -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_we0 -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_q0 -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_d0 -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_ce0 -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_address0 -into $A_20_group -radix hex
set A_19_group [add_wave_group A_19(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_we1 -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_q1 -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_d1 -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_ce1 -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_address1 -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_we0 -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_q0 -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_d0 -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_ce0 -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_address0 -into $A_19_group -radix hex
set A_18_group [add_wave_group A_18(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_we1 -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_q1 -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_d1 -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_ce1 -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_address1 -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_we0 -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_q0 -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_d0 -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_ce0 -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_address0 -into $A_18_group -radix hex
set A_17_group [add_wave_group A_17(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_we1 -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_q1 -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_d1 -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_ce1 -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_address1 -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_we0 -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_q0 -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_d0 -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_ce0 -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_address0 -into $A_17_group -radix hex
set A_16_group [add_wave_group A_16(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_we1 -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_q1 -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_d1 -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_ce1 -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_address1 -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_we0 -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_q0 -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_d0 -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_ce0 -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_address0 -into $A_16_group -radix hex
set A_15_group [add_wave_group A_15(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_we1 -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_q1 -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_d1 -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_ce1 -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_address1 -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_we0 -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_q0 -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_d0 -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_ce0 -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_address0 -into $A_15_group -radix hex
set A_14_group [add_wave_group A_14(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_we1 -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_q1 -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_d1 -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_ce1 -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_address1 -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_we0 -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_q0 -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_d0 -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_ce0 -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_address0 -into $A_14_group -radix hex
set A_13_group [add_wave_group A_13(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_we1 -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_q1 -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_d1 -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_ce1 -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_address1 -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_we0 -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_q0 -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_d0 -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_ce0 -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_address0 -into $A_13_group -radix hex
set A_12_group [add_wave_group A_12(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_we1 -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_q1 -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_d1 -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_ce1 -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_address1 -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_we0 -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_q0 -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_d0 -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_ce0 -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_address0 -into $A_12_group -radix hex
set A_11_group [add_wave_group A_11(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_we1 -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_q1 -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_d1 -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_ce1 -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_address1 -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_we0 -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_q0 -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_d0 -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_ce0 -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_address0 -into $A_11_group -radix hex
set A_10_group [add_wave_group A_10(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_we1 -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_q1 -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_d1 -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_ce1 -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_address1 -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_we0 -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_q0 -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_d0 -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_ce0 -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_address0 -into $A_10_group -radix hex
set A_9_group [add_wave_group A_9(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_we1 -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_q1 -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_d1 -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_ce1 -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_address1 -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_we0 -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_q0 -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_d0 -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_ce0 -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_address0 -into $A_9_group -radix hex
set A_8_group [add_wave_group A_8(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_we1 -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_q1 -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_d1 -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_ce1 -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_address1 -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_we0 -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_q0 -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_d0 -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_ce0 -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_address0 -into $A_8_group -radix hex
set A_7_group [add_wave_group A_7(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_we1 -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_q1 -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_d1 -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_ce1 -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_address1 -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_we0 -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_q0 -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_d0 -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_ce0 -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_address0 -into $A_7_group -radix hex
set A_6_group [add_wave_group A_6(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_we1 -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_q1 -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_d1 -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_ce1 -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_address1 -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_we0 -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_q0 -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_d0 -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_ce0 -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_address0 -into $A_6_group -radix hex
set A_5_group [add_wave_group A_5(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_we1 -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_q1 -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_d1 -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_ce1 -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_address1 -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_we0 -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_q0 -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_d0 -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_ce0 -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_address0 -into $A_5_group -radix hex
set A_4_group [add_wave_group A_4(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_we1 -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_q1 -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_d1 -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_ce1 -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_address1 -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_we0 -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_q0 -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_d0 -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_ce0 -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_address0 -into $A_4_group -radix hex
set A_3_group [add_wave_group A_3(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_we1 -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_q1 -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_d1 -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_ce1 -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_address1 -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_we0 -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_q0 -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_d0 -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_ce0 -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_address0 -into $A_3_group -radix hex
set A_2_group [add_wave_group A_2(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_we1 -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_q1 -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_d1 -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_ce1 -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_address1 -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_we0 -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_q0 -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_d0 -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_ce0 -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_address0 -into $A_2_group -radix hex
set A_1_group [add_wave_group A_1(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_we1 -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_q1 -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_d1 -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_ce1 -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_address1 -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_we0 -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_q0 -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_d0 -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_ce0 -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_address0 -into $A_1_group -radix hex
set A_0_group [add_wave_group A_0(memory) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_we1 -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_q1 -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_d1 -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_ce1 -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_address1 -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_we0 -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_q0 -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_d0 -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_ce0 -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_address0 -into $A_0_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_11 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_12 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_13 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_14 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_15 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_16 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_17 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_18 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_19 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_20 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_21 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_22 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_23 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_24 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_25 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_26 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_27 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_28 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_29 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_30 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_A_31 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_4 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_5 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_6 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_7 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_8 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_9 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_10 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_11 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_12 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_13 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_14 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_15 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_16 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_17 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_18 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_19 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_20 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_21 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_22 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_23 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_24 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_25 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_26 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_27 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_28 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_29 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_30 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_B_31 -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_feature_vector_V_dest_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_BRESP -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_RRESP -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_RDATA -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_WDATA -into $tb_return_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/CTRL_BUS_AWADDR -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_feature_vector_group [add_wave_group feature_vector(axis) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TREADY -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TVALID -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TDEST -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TID -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TLAST -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TUSER -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TSTRB -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TKEEP -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TDATA -into $tb_feature_vector_group -radix hex
set tb_B_31_group [add_wave_group B_31(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_we1 -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_q1 -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_d1 -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_ce1 -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_address1 -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_we0 -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_q0 -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_d0 -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_ce0 -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_address0 -into $tb_B_31_group -radix hex
set tb_B_30_group [add_wave_group B_30(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_we1 -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_q1 -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_d1 -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_ce1 -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_address1 -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_we0 -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_q0 -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_d0 -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_ce0 -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_address0 -into $tb_B_30_group -radix hex
set tb_B_29_group [add_wave_group B_29(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_we1 -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_q1 -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_d1 -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_ce1 -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_address1 -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_we0 -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_q0 -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_d0 -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_ce0 -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_address0 -into $tb_B_29_group -radix hex
set tb_B_28_group [add_wave_group B_28(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_we1 -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_q1 -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_d1 -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_ce1 -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_address1 -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_we0 -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_q0 -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_d0 -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_ce0 -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_address0 -into $tb_B_28_group -radix hex
set tb_B_27_group [add_wave_group B_27(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_we1 -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_q1 -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_d1 -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_ce1 -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_address1 -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_we0 -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_q0 -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_d0 -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_ce0 -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_address0 -into $tb_B_27_group -radix hex
set tb_B_26_group [add_wave_group B_26(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_we1 -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_q1 -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_d1 -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_ce1 -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_address1 -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_we0 -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_q0 -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_d0 -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_ce0 -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_address0 -into $tb_B_26_group -radix hex
set tb_B_25_group [add_wave_group B_25(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_we1 -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_q1 -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_d1 -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_ce1 -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_address1 -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_we0 -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_q0 -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_d0 -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_ce0 -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_address0 -into $tb_B_25_group -radix hex
set tb_B_24_group [add_wave_group B_24(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_we1 -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_q1 -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_d1 -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_ce1 -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_address1 -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_we0 -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_q0 -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_d0 -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_ce0 -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_address0 -into $tb_B_24_group -radix hex
set tb_B_23_group [add_wave_group B_23(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_we1 -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_q1 -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_d1 -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_ce1 -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_address1 -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_we0 -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_q0 -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_d0 -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_ce0 -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_address0 -into $tb_B_23_group -radix hex
set tb_B_22_group [add_wave_group B_22(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_we1 -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_q1 -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_d1 -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_ce1 -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_address1 -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_we0 -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_q0 -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_d0 -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_ce0 -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_address0 -into $tb_B_22_group -radix hex
set tb_B_21_group [add_wave_group B_21(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_we1 -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_q1 -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_d1 -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_ce1 -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_address1 -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_we0 -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_q0 -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_d0 -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_ce0 -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_address0 -into $tb_B_21_group -radix hex
set tb_B_20_group [add_wave_group B_20(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_we1 -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_q1 -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_d1 -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_ce1 -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_address1 -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_we0 -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_q0 -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_d0 -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_ce0 -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_address0 -into $tb_B_20_group -radix hex
set tb_B_19_group [add_wave_group B_19(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_we1 -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_q1 -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_d1 -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_ce1 -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_address1 -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_we0 -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_q0 -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_d0 -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_ce0 -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_address0 -into $tb_B_19_group -radix hex
set tb_B_18_group [add_wave_group B_18(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_we1 -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_q1 -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_d1 -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_ce1 -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_address1 -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_we0 -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_q0 -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_d0 -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_ce0 -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_address0 -into $tb_B_18_group -radix hex
set tb_B_17_group [add_wave_group B_17(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_we1 -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_q1 -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_d1 -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_ce1 -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_address1 -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_we0 -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_q0 -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_d0 -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_ce0 -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_address0 -into $tb_B_17_group -radix hex
set tb_B_16_group [add_wave_group B_16(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_we1 -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_q1 -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_d1 -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_ce1 -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_address1 -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_we0 -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_q0 -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_d0 -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_ce0 -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_address0 -into $tb_B_16_group -radix hex
set tb_B_15_group [add_wave_group B_15(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_we1 -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_q1 -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_d1 -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_ce1 -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_address1 -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_we0 -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_q0 -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_d0 -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_ce0 -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_address0 -into $tb_B_15_group -radix hex
set tb_B_14_group [add_wave_group B_14(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_we1 -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_q1 -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_d1 -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_ce1 -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_address1 -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_we0 -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_q0 -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_d0 -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_ce0 -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_address0 -into $tb_B_14_group -radix hex
set tb_B_13_group [add_wave_group B_13(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_we1 -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_q1 -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_d1 -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_ce1 -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_address1 -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_we0 -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_q0 -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_d0 -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_ce0 -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_address0 -into $tb_B_13_group -radix hex
set tb_B_12_group [add_wave_group B_12(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_we1 -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_q1 -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_d1 -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_ce1 -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_address1 -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_we0 -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_q0 -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_d0 -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_ce0 -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_address0 -into $tb_B_12_group -radix hex
set tb_B_11_group [add_wave_group B_11(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_we1 -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_q1 -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_d1 -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_ce1 -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_address1 -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_we0 -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_q0 -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_d0 -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_ce0 -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_address0 -into $tb_B_11_group -radix hex
set tb_B_10_group [add_wave_group B_10(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_we1 -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_q1 -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_d1 -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_ce1 -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_address1 -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_we0 -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_q0 -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_d0 -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_ce0 -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_address0 -into $tb_B_10_group -radix hex
set tb_B_9_group [add_wave_group B_9(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_we1 -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_q1 -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_d1 -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_ce1 -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_address1 -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_we0 -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_q0 -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_d0 -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_ce0 -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_address0 -into $tb_B_9_group -radix hex
set tb_B_8_group [add_wave_group B_8(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_we1 -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_q1 -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_d1 -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_ce1 -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_address1 -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_we0 -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_q0 -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_d0 -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_ce0 -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_address0 -into $tb_B_8_group -radix hex
set tb_B_7_group [add_wave_group B_7(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_we1 -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_q1 -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_d1 -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_ce1 -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_address1 -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_we0 -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_q0 -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_d0 -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_ce0 -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_address0 -into $tb_B_7_group -radix hex
set tb_B_6_group [add_wave_group B_6(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_we1 -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_q1 -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_d1 -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_ce1 -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_address1 -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_we0 -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_q0 -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_d0 -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_ce0 -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_address0 -into $tb_B_6_group -radix hex
set tb_B_5_group [add_wave_group B_5(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_we1 -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_q1 -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_d1 -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_ce1 -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_address1 -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_we0 -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_q0 -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_d0 -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_ce0 -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_address0 -into $tb_B_5_group -radix hex
set tb_B_4_group [add_wave_group B_4(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_we1 -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_q1 -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_d1 -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_ce1 -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_address1 -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_we0 -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_q0 -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_d0 -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_ce0 -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_address0 -into $tb_B_4_group -radix hex
set tb_B_3_group [add_wave_group B_3(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_we1 -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_q1 -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_d1 -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_ce1 -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_address1 -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_we0 -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_q0 -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_d0 -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_ce0 -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_address0 -into $tb_B_3_group -radix hex
set tb_B_2_group [add_wave_group B_2(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_we1 -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_q1 -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_d1 -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_ce1 -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_address1 -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_we0 -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_q0 -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_d0 -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_ce0 -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_address0 -into $tb_B_2_group -radix hex
set tb_B_1_group [add_wave_group B_1(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_we1 -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_q1 -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_d1 -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_ce1 -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_address1 -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_we0 -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_q0 -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_d0 -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_ce0 -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_address0 -into $tb_B_1_group -radix hex
set tb_B_0_group [add_wave_group B_0(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_we1 -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_q1 -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_d1 -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_ce1 -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_address1 -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_we0 -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_q0 -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_d0 -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_ce0 -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_address0 -into $tb_B_0_group -radix hex
set tb_A_31_group [add_wave_group A_31(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_we1 -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_q1 -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_d1 -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_ce1 -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_address1 -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_we0 -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_q0 -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_d0 -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_ce0 -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_address0 -into $tb_A_31_group -radix hex
set tb_A_30_group [add_wave_group A_30(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_we1 -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_q1 -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_d1 -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_ce1 -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_address1 -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_we0 -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_q0 -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_d0 -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_ce0 -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_address0 -into $tb_A_30_group -radix hex
set tb_A_29_group [add_wave_group A_29(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_we1 -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_q1 -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_d1 -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_ce1 -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_address1 -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_we0 -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_q0 -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_d0 -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_ce0 -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_address0 -into $tb_A_29_group -radix hex
set tb_A_28_group [add_wave_group A_28(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_we1 -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_q1 -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_d1 -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_ce1 -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_address1 -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_we0 -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_q0 -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_d0 -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_ce0 -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_address0 -into $tb_A_28_group -radix hex
set tb_A_27_group [add_wave_group A_27(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_we1 -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_q1 -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_d1 -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_ce1 -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_address1 -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_we0 -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_q0 -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_d0 -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_ce0 -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_address0 -into $tb_A_27_group -radix hex
set tb_A_26_group [add_wave_group A_26(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_we1 -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_q1 -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_d1 -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_ce1 -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_address1 -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_we0 -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_q0 -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_d0 -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_ce0 -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_address0 -into $tb_A_26_group -radix hex
set tb_A_25_group [add_wave_group A_25(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_we1 -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_q1 -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_d1 -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_ce1 -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_address1 -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_we0 -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_q0 -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_d0 -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_ce0 -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_address0 -into $tb_A_25_group -radix hex
set tb_A_24_group [add_wave_group A_24(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_we1 -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_q1 -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_d1 -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_ce1 -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_address1 -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_we0 -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_q0 -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_d0 -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_ce0 -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_address0 -into $tb_A_24_group -radix hex
set tb_A_23_group [add_wave_group A_23(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_we1 -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_q1 -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_d1 -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_ce1 -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_address1 -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_we0 -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_q0 -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_d0 -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_ce0 -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_address0 -into $tb_A_23_group -radix hex
set tb_A_22_group [add_wave_group A_22(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_we1 -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_q1 -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_d1 -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_ce1 -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_address1 -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_we0 -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_q0 -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_d0 -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_ce0 -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_address0 -into $tb_A_22_group -radix hex
set tb_A_21_group [add_wave_group A_21(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_we1 -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_q1 -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_d1 -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_ce1 -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_address1 -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_we0 -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_q0 -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_d0 -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_ce0 -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_address0 -into $tb_A_21_group -radix hex
set tb_A_20_group [add_wave_group A_20(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_we1 -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_q1 -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_d1 -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_ce1 -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_address1 -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_we0 -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_q0 -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_d0 -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_ce0 -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_address0 -into $tb_A_20_group -radix hex
set tb_A_19_group [add_wave_group A_19(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_we1 -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_q1 -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_d1 -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_ce1 -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_address1 -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_we0 -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_q0 -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_d0 -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_ce0 -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_address0 -into $tb_A_19_group -radix hex
set tb_A_18_group [add_wave_group A_18(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_we1 -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_q1 -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_d1 -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_ce1 -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_address1 -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_we0 -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_q0 -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_d0 -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_ce0 -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_address0 -into $tb_A_18_group -radix hex
set tb_A_17_group [add_wave_group A_17(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_we1 -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_q1 -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_d1 -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_ce1 -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_address1 -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_we0 -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_q0 -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_d0 -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_ce0 -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_address0 -into $tb_A_17_group -radix hex
set tb_A_16_group [add_wave_group A_16(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_we1 -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_q1 -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_d1 -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_ce1 -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_address1 -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_we0 -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_q0 -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_d0 -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_ce0 -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_address0 -into $tb_A_16_group -radix hex
set tb_A_15_group [add_wave_group A_15(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_we1 -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_q1 -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_d1 -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_ce1 -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_address1 -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_we0 -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_q0 -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_d0 -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_ce0 -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_address0 -into $tb_A_15_group -radix hex
set tb_A_14_group [add_wave_group A_14(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_we1 -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_q1 -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_d1 -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_ce1 -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_address1 -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_we0 -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_q0 -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_d0 -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_ce0 -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_address0 -into $tb_A_14_group -radix hex
set tb_A_13_group [add_wave_group A_13(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_we1 -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_q1 -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_d1 -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_ce1 -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_address1 -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_we0 -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_q0 -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_d0 -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_ce0 -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_address0 -into $tb_A_13_group -radix hex
set tb_A_12_group [add_wave_group A_12(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_we1 -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_q1 -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_d1 -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_ce1 -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_address1 -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_we0 -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_q0 -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_d0 -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_ce0 -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_address0 -into $tb_A_12_group -radix hex
set tb_A_11_group [add_wave_group A_11(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_we1 -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_q1 -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_d1 -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_ce1 -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_address1 -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_we0 -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_q0 -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_d0 -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_ce0 -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_address0 -into $tb_A_11_group -radix hex
set tb_A_10_group [add_wave_group A_10(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_we1 -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_q1 -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_d1 -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_ce1 -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_address1 -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_we0 -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_q0 -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_d0 -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_ce0 -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_address0 -into $tb_A_10_group -radix hex
set tb_A_9_group [add_wave_group A_9(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_we1 -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_q1 -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_d1 -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_ce1 -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_address1 -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_we0 -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_q0 -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_d0 -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_ce0 -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_address0 -into $tb_A_9_group -radix hex
set tb_A_8_group [add_wave_group A_8(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_we1 -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_q1 -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_d1 -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_ce1 -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_address1 -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_we0 -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_q0 -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_d0 -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_ce0 -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_address0 -into $tb_A_8_group -radix hex
set tb_A_7_group [add_wave_group A_7(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_we1 -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_q1 -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_d1 -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_ce1 -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_address1 -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_we0 -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_q0 -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_d0 -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_ce0 -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_address0 -into $tb_A_7_group -radix hex
set tb_A_6_group [add_wave_group A_6(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_we1 -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_q1 -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_d1 -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_ce1 -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_address1 -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_we0 -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_q0 -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_d0 -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_ce0 -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_address0 -into $tb_A_6_group -radix hex
set tb_A_5_group [add_wave_group A_5(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_we1 -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_q1 -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_d1 -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_ce1 -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_address1 -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_we0 -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_q0 -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_d0 -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_ce0 -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_address0 -into $tb_A_5_group -radix hex
set tb_A_4_group [add_wave_group A_4(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_we1 -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_q1 -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_d1 -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_ce1 -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_address1 -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_we0 -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_q0 -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_d0 -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_ce0 -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_address0 -into $tb_A_4_group -radix hex
set tb_A_3_group [add_wave_group A_3(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_we1 -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_q1 -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_d1 -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_ce1 -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_address1 -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_we0 -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_q0 -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_d0 -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_ce0 -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_address0 -into $tb_A_3_group -radix hex
set tb_A_2_group [add_wave_group A_2(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_we1 -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_q1 -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_d1 -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_ce1 -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_address1 -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_we0 -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_q0 -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_d0 -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_ce0 -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_address0 -into $tb_A_2_group -radix hex
set tb_A_1_group [add_wave_group A_1(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_we1 -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_q1 -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_d1 -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_ce1 -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_address1 -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_we0 -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_q0 -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_d0 -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_ce0 -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_address0 -into $tb_A_1_group -radix hex
set tb_A_0_group [add_wave_group A_0(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_we1 -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_q1 -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_d1 -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_ce1 -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_address1 -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_we0 -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_q0 -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_d0 -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_ce0 -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_address0 -into $tb_A_0_group -radix hex
save_wave_config matrix_matrix_mult_streaming.wcfg
run all
quit

