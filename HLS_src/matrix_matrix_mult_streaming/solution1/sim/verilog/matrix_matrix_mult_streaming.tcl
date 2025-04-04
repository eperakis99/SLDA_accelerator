
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set scores_group [add_wave_group scores(memory) -into $coutputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/scores_d0 -into $scores_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/scores_we0 -into $scores_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/scores_ce0 -into $scores_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/scores_address0 -into $scores_group -radix hex
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
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TDEST -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TID -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TLAST -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TUSER -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TSTRB -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TKEEP -into $feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TREADY -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TVALID -into $feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/feature_vector_TDATA -into $feature_vector_group -radix hex
set B_31_group [add_wave_group B_31(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_Rst_A -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_Clk_A -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_Dout_A -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_Din_A -into $B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_WEN_A -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_EN_A -into $B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_31_Addr_A -into $B_31_group -radix hex
set B_30_group [add_wave_group B_30(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_Rst_A -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_Clk_A -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_Dout_A -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_Din_A -into $B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_WEN_A -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_EN_A -into $B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_30_Addr_A -into $B_30_group -radix hex
set B_29_group [add_wave_group B_29(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_Rst_A -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_Clk_A -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_Dout_A -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_Din_A -into $B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_WEN_A -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_EN_A -into $B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_29_Addr_A -into $B_29_group -radix hex
set B_28_group [add_wave_group B_28(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_Rst_A -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_Clk_A -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_Dout_A -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_Din_A -into $B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_WEN_A -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_EN_A -into $B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_28_Addr_A -into $B_28_group -radix hex
set B_27_group [add_wave_group B_27(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_Rst_A -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_Clk_A -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_Dout_A -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_Din_A -into $B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_WEN_A -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_EN_A -into $B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_27_Addr_A -into $B_27_group -radix hex
set B_26_group [add_wave_group B_26(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_Rst_A -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_Clk_A -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_Dout_A -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_Din_A -into $B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_WEN_A -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_EN_A -into $B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_26_Addr_A -into $B_26_group -radix hex
set B_25_group [add_wave_group B_25(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_Rst_A -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_Clk_A -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_Dout_A -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_Din_A -into $B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_WEN_A -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_EN_A -into $B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_25_Addr_A -into $B_25_group -radix hex
set B_24_group [add_wave_group B_24(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_Rst_A -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_Clk_A -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_Dout_A -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_Din_A -into $B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_WEN_A -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_EN_A -into $B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_24_Addr_A -into $B_24_group -radix hex
set B_23_group [add_wave_group B_23(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_Rst_A -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_Clk_A -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_Dout_A -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_Din_A -into $B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_WEN_A -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_EN_A -into $B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_23_Addr_A -into $B_23_group -radix hex
set B_22_group [add_wave_group B_22(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_Rst_A -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_Clk_A -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_Dout_A -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_Din_A -into $B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_WEN_A -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_EN_A -into $B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_22_Addr_A -into $B_22_group -radix hex
set B_21_group [add_wave_group B_21(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_Rst_A -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_Clk_A -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_Dout_A -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_Din_A -into $B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_WEN_A -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_EN_A -into $B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_21_Addr_A -into $B_21_group -radix hex
set B_20_group [add_wave_group B_20(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_Rst_A -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_Clk_A -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_Dout_A -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_Din_A -into $B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_WEN_A -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_EN_A -into $B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_20_Addr_A -into $B_20_group -radix hex
set B_19_group [add_wave_group B_19(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_Rst_A -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_Clk_A -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_Dout_A -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_Din_A -into $B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_WEN_A -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_EN_A -into $B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_19_Addr_A -into $B_19_group -radix hex
set B_18_group [add_wave_group B_18(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_Rst_A -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_Clk_A -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_Dout_A -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_Din_A -into $B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_WEN_A -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_EN_A -into $B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_18_Addr_A -into $B_18_group -radix hex
set B_17_group [add_wave_group B_17(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_Rst_A -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_Clk_A -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_Dout_A -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_Din_A -into $B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_WEN_A -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_EN_A -into $B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_17_Addr_A -into $B_17_group -radix hex
set B_16_group [add_wave_group B_16(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_Rst_A -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_Clk_A -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_Dout_A -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_Din_A -into $B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_WEN_A -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_EN_A -into $B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_16_Addr_A -into $B_16_group -radix hex
set B_15_group [add_wave_group B_15(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_Rst_A -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_Clk_A -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_Dout_A -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_Din_A -into $B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_WEN_A -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_EN_A -into $B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_15_Addr_A -into $B_15_group -radix hex
set B_14_group [add_wave_group B_14(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_Rst_A -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_Clk_A -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_Dout_A -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_Din_A -into $B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_WEN_A -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_EN_A -into $B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_14_Addr_A -into $B_14_group -radix hex
set B_13_group [add_wave_group B_13(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_Rst_A -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_Clk_A -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_Dout_A -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_Din_A -into $B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_WEN_A -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_EN_A -into $B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_13_Addr_A -into $B_13_group -radix hex
set B_12_group [add_wave_group B_12(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_Rst_A -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_Clk_A -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_Dout_A -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_Din_A -into $B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_WEN_A -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_EN_A -into $B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_12_Addr_A -into $B_12_group -radix hex
set B_11_group [add_wave_group B_11(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_Rst_A -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_Clk_A -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_Dout_A -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_Din_A -into $B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_WEN_A -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_EN_A -into $B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_11_Addr_A -into $B_11_group -radix hex
set B_10_group [add_wave_group B_10(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_Rst_A -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_Clk_A -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_Dout_A -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_Din_A -into $B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_WEN_A -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_EN_A -into $B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_10_Addr_A -into $B_10_group -radix hex
set B_9_group [add_wave_group B_9(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_Rst_A -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_Clk_A -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_Dout_A -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_Din_A -into $B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_WEN_A -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_EN_A -into $B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_9_Addr_A -into $B_9_group -radix hex
set B_8_group [add_wave_group B_8(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_Rst_A -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_Clk_A -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_Dout_A -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_Din_A -into $B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_WEN_A -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_EN_A -into $B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_8_Addr_A -into $B_8_group -radix hex
set B_7_group [add_wave_group B_7(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_Rst_A -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_Clk_A -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_Dout_A -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_Din_A -into $B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_WEN_A -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_EN_A -into $B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_7_Addr_A -into $B_7_group -radix hex
set B_6_group [add_wave_group B_6(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_Rst_A -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_Clk_A -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_Dout_A -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_Din_A -into $B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_WEN_A -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_EN_A -into $B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_6_Addr_A -into $B_6_group -radix hex
set B_5_group [add_wave_group B_5(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_Rst_A -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_Clk_A -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_Dout_A -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_Din_A -into $B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_WEN_A -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_EN_A -into $B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_5_Addr_A -into $B_5_group -radix hex
set B_4_group [add_wave_group B_4(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_Rst_A -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_Clk_A -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_Dout_A -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_Din_A -into $B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_WEN_A -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_EN_A -into $B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_4_Addr_A -into $B_4_group -radix hex
set B_3_group [add_wave_group B_3(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_Rst_A -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_Clk_A -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_Dout_A -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_Din_A -into $B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_WEN_A -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_EN_A -into $B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_3_Addr_A -into $B_3_group -radix hex
set B_2_group [add_wave_group B_2(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_Rst_A -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_Clk_A -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_Dout_A -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_Din_A -into $B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_WEN_A -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_EN_A -into $B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_2_Addr_A -into $B_2_group -radix hex
set B_1_group [add_wave_group B_1(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_Rst_A -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_Clk_A -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_Dout_A -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_Din_A -into $B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_WEN_A -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_EN_A -into $B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_1_Addr_A -into $B_1_group -radix hex
set B_0_group [add_wave_group B_0(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_Rst_A -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_Clk_A -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_Dout_A -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_Din_A -into $B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_WEN_A -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_EN_A -into $B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/B_0_Addr_A -into $B_0_group -radix hex
set A_31_group [add_wave_group A_31(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_Rst_A -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_Clk_A -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_Dout_A -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_Din_A -into $A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_WEN_A -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_EN_A -into $A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_31_Addr_A -into $A_31_group -radix hex
set A_30_group [add_wave_group A_30(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_Rst_A -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_Clk_A -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_Dout_A -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_Din_A -into $A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_WEN_A -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_EN_A -into $A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_30_Addr_A -into $A_30_group -radix hex
set A_29_group [add_wave_group A_29(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_Rst_A -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_Clk_A -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_Dout_A -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_Din_A -into $A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_WEN_A -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_EN_A -into $A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_29_Addr_A -into $A_29_group -radix hex
set A_28_group [add_wave_group A_28(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_Rst_A -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_Clk_A -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_Dout_A -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_Din_A -into $A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_WEN_A -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_EN_A -into $A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_28_Addr_A -into $A_28_group -radix hex
set A_27_group [add_wave_group A_27(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_Rst_A -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_Clk_A -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_Dout_A -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_Din_A -into $A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_WEN_A -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_EN_A -into $A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_27_Addr_A -into $A_27_group -radix hex
set A_26_group [add_wave_group A_26(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_Rst_A -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_Clk_A -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_Dout_A -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_Din_A -into $A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_WEN_A -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_EN_A -into $A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_26_Addr_A -into $A_26_group -radix hex
set A_25_group [add_wave_group A_25(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_Rst_A -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_Clk_A -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_Dout_A -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_Din_A -into $A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_WEN_A -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_EN_A -into $A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_25_Addr_A -into $A_25_group -radix hex
set A_24_group [add_wave_group A_24(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_Rst_A -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_Clk_A -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_Dout_A -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_Din_A -into $A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_WEN_A -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_EN_A -into $A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_24_Addr_A -into $A_24_group -radix hex
set A_23_group [add_wave_group A_23(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_Rst_A -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_Clk_A -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_Dout_A -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_Din_A -into $A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_WEN_A -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_EN_A -into $A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_23_Addr_A -into $A_23_group -radix hex
set A_22_group [add_wave_group A_22(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_Rst_A -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_Clk_A -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_Dout_A -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_Din_A -into $A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_WEN_A -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_EN_A -into $A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_22_Addr_A -into $A_22_group -radix hex
set A_21_group [add_wave_group A_21(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_Rst_A -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_Clk_A -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_Dout_A -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_Din_A -into $A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_WEN_A -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_EN_A -into $A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_21_Addr_A -into $A_21_group -radix hex
set A_20_group [add_wave_group A_20(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_Rst_A -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_Clk_A -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_Dout_A -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_Din_A -into $A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_WEN_A -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_EN_A -into $A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_20_Addr_A -into $A_20_group -radix hex
set A_19_group [add_wave_group A_19(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_Rst_A -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_Clk_A -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_Dout_A -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_Din_A -into $A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_WEN_A -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_EN_A -into $A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_19_Addr_A -into $A_19_group -radix hex
set A_18_group [add_wave_group A_18(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_Rst_A -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_Clk_A -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_Dout_A -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_Din_A -into $A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_WEN_A -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_EN_A -into $A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_18_Addr_A -into $A_18_group -radix hex
set A_17_group [add_wave_group A_17(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_Rst_A -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_Clk_A -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_Dout_A -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_Din_A -into $A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_WEN_A -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_EN_A -into $A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_17_Addr_A -into $A_17_group -radix hex
set A_16_group [add_wave_group A_16(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_Rst_A -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_Clk_A -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_Dout_A -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_Din_A -into $A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_WEN_A -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_EN_A -into $A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_16_Addr_A -into $A_16_group -radix hex
set A_15_group [add_wave_group A_15(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_Rst_A -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_Clk_A -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_Dout_A -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_Din_A -into $A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_WEN_A -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_EN_A -into $A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_15_Addr_A -into $A_15_group -radix hex
set A_14_group [add_wave_group A_14(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_Rst_A -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_Clk_A -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_Dout_A -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_Din_A -into $A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_WEN_A -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_EN_A -into $A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_14_Addr_A -into $A_14_group -radix hex
set A_13_group [add_wave_group A_13(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_Rst_A -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_Clk_A -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_Dout_A -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_Din_A -into $A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_WEN_A -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_EN_A -into $A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_13_Addr_A -into $A_13_group -radix hex
set A_12_group [add_wave_group A_12(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_Rst_A -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_Clk_A -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_Dout_A -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_Din_A -into $A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_WEN_A -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_EN_A -into $A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_12_Addr_A -into $A_12_group -radix hex
set A_11_group [add_wave_group A_11(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_Rst_A -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_Clk_A -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_Dout_A -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_Din_A -into $A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_WEN_A -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_EN_A -into $A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_11_Addr_A -into $A_11_group -radix hex
set A_10_group [add_wave_group A_10(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_Rst_A -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_Clk_A -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_Dout_A -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_Din_A -into $A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_WEN_A -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_EN_A -into $A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_10_Addr_A -into $A_10_group -radix hex
set A_9_group [add_wave_group A_9(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_Rst_A -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_Clk_A -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_Dout_A -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_Din_A -into $A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_WEN_A -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_EN_A -into $A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_9_Addr_A -into $A_9_group -radix hex
set A_8_group [add_wave_group A_8(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_Rst_A -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_Clk_A -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_Dout_A -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_Din_A -into $A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_WEN_A -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_EN_A -into $A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_8_Addr_A -into $A_8_group -radix hex
set A_7_group [add_wave_group A_7(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_Rst_A -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_Clk_A -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_Dout_A -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_Din_A -into $A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_WEN_A -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_EN_A -into $A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_7_Addr_A -into $A_7_group -radix hex
set A_6_group [add_wave_group A_6(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_Rst_A -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_Clk_A -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_Dout_A -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_Din_A -into $A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_WEN_A -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_EN_A -into $A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_6_Addr_A -into $A_6_group -radix hex
set A_5_group [add_wave_group A_5(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_Rst_A -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_Clk_A -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_Dout_A -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_Din_A -into $A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_WEN_A -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_EN_A -into $A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_5_Addr_A -into $A_5_group -radix hex
set A_4_group [add_wave_group A_4(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_Rst_A -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_Clk_A -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_Dout_A -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_Din_A -into $A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_WEN_A -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_EN_A -into $A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_4_Addr_A -into $A_4_group -radix hex
set A_3_group [add_wave_group A_3(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_Rst_A -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_Clk_A -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_Dout_A -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_Din_A -into $A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_WEN_A -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_EN_A -into $A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_3_Addr_A -into $A_3_group -radix hex
set A_2_group [add_wave_group A_2(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_Rst_A -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_Clk_A -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_Dout_A -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_Din_A -into $A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_WEN_A -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_EN_A -into $A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_2_Addr_A -into $A_2_group -radix hex
set A_1_group [add_wave_group A_1(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_Rst_A -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_Clk_A -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_Dout_A -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_Din_A -into $A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_WEN_A -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_EN_A -into $A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_1_Addr_A -into $A_1_group -radix hex
set A_0_group [add_wave_group A_0(bram) -into $cinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_Rst_A -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_Clk_A -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_Dout_A -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_Din_A -into $A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_WEN_A -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_EN_A -into $A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/AESL_inst_matrix_matrix_mult_streaming/A_0_Addr_A -into $A_0_group -radix hex
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
add_wave /apatb_matrix_matrix_mult_streaming_top/LENGTH_scores -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_scores_group [add_wave_group scores(memory) -into $tbcoutputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/scores_d0 -into $tb_scores_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/scores_we0 -into $tb_scores_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/scores_ce0 -into $tb_scores_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/scores_address0 -into $tb_scores_group -radix hex
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
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TDEST -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TID -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TLAST -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TUSER -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TSTRB -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TKEEP -into $tb_feature_vector_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TREADY -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TVALID -into $tb_feature_vector_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/feature_vector_TDATA -into $tb_feature_vector_group -radix hex
set tb_B_31_group [add_wave_group B_31(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_RST_A -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_CLK_A -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_DOUT_A -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_DIN_A -into $tb_B_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_WEN_A -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_EN_A -into $tb_B_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_31_ADDR_A -into $tb_B_31_group -radix hex
set tb_B_30_group [add_wave_group B_30(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_RST_A -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_CLK_A -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_DOUT_A -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_DIN_A -into $tb_B_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_WEN_A -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_EN_A -into $tb_B_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_30_ADDR_A -into $tb_B_30_group -radix hex
set tb_B_29_group [add_wave_group B_29(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_RST_A -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_CLK_A -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_DOUT_A -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_DIN_A -into $tb_B_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_WEN_A -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_EN_A -into $tb_B_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_29_ADDR_A -into $tb_B_29_group -radix hex
set tb_B_28_group [add_wave_group B_28(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_RST_A -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_CLK_A -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_DOUT_A -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_DIN_A -into $tb_B_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_WEN_A -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_EN_A -into $tb_B_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_28_ADDR_A -into $tb_B_28_group -radix hex
set tb_B_27_group [add_wave_group B_27(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_RST_A -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_CLK_A -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_DOUT_A -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_DIN_A -into $tb_B_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_WEN_A -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_EN_A -into $tb_B_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_27_ADDR_A -into $tb_B_27_group -radix hex
set tb_B_26_group [add_wave_group B_26(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_RST_A -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_CLK_A -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_DOUT_A -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_DIN_A -into $tb_B_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_WEN_A -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_EN_A -into $tb_B_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_26_ADDR_A -into $tb_B_26_group -radix hex
set tb_B_25_group [add_wave_group B_25(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_RST_A -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_CLK_A -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_DOUT_A -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_DIN_A -into $tb_B_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_WEN_A -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_EN_A -into $tb_B_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_25_ADDR_A -into $tb_B_25_group -radix hex
set tb_B_24_group [add_wave_group B_24(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_RST_A -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_CLK_A -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_DOUT_A -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_DIN_A -into $tb_B_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_WEN_A -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_EN_A -into $tb_B_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_24_ADDR_A -into $tb_B_24_group -radix hex
set tb_B_23_group [add_wave_group B_23(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_RST_A -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_CLK_A -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_DOUT_A -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_DIN_A -into $tb_B_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_WEN_A -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_EN_A -into $tb_B_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_23_ADDR_A -into $tb_B_23_group -radix hex
set tb_B_22_group [add_wave_group B_22(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_RST_A -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_CLK_A -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_DOUT_A -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_DIN_A -into $tb_B_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_WEN_A -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_EN_A -into $tb_B_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_22_ADDR_A -into $tb_B_22_group -radix hex
set tb_B_21_group [add_wave_group B_21(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_RST_A -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_CLK_A -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_DOUT_A -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_DIN_A -into $tb_B_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_WEN_A -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_EN_A -into $tb_B_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_21_ADDR_A -into $tb_B_21_group -radix hex
set tb_B_20_group [add_wave_group B_20(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_RST_A -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_CLK_A -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_DOUT_A -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_DIN_A -into $tb_B_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_WEN_A -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_EN_A -into $tb_B_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_20_ADDR_A -into $tb_B_20_group -radix hex
set tb_B_19_group [add_wave_group B_19(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_RST_A -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_CLK_A -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_DOUT_A -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_DIN_A -into $tb_B_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_WEN_A -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_EN_A -into $tb_B_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_19_ADDR_A -into $tb_B_19_group -radix hex
set tb_B_18_group [add_wave_group B_18(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_RST_A -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_CLK_A -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_DOUT_A -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_DIN_A -into $tb_B_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_WEN_A -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_EN_A -into $tb_B_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_18_ADDR_A -into $tb_B_18_group -radix hex
set tb_B_17_group [add_wave_group B_17(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_RST_A -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_CLK_A -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_DOUT_A -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_DIN_A -into $tb_B_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_WEN_A -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_EN_A -into $tb_B_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_17_ADDR_A -into $tb_B_17_group -radix hex
set tb_B_16_group [add_wave_group B_16(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_RST_A -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_CLK_A -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_DOUT_A -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_DIN_A -into $tb_B_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_WEN_A -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_EN_A -into $tb_B_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_16_ADDR_A -into $tb_B_16_group -radix hex
set tb_B_15_group [add_wave_group B_15(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_RST_A -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_CLK_A -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_DOUT_A -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_DIN_A -into $tb_B_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_WEN_A -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_EN_A -into $tb_B_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_15_ADDR_A -into $tb_B_15_group -radix hex
set tb_B_14_group [add_wave_group B_14(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_RST_A -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_CLK_A -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_DOUT_A -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_DIN_A -into $tb_B_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_WEN_A -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_EN_A -into $tb_B_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_14_ADDR_A -into $tb_B_14_group -radix hex
set tb_B_13_group [add_wave_group B_13(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_RST_A -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_CLK_A -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_DOUT_A -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_DIN_A -into $tb_B_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_WEN_A -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_EN_A -into $tb_B_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_13_ADDR_A -into $tb_B_13_group -radix hex
set tb_B_12_group [add_wave_group B_12(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_RST_A -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_CLK_A -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_DOUT_A -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_DIN_A -into $tb_B_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_WEN_A -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_EN_A -into $tb_B_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_12_ADDR_A -into $tb_B_12_group -radix hex
set tb_B_11_group [add_wave_group B_11(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_RST_A -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_CLK_A -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_DOUT_A -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_DIN_A -into $tb_B_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_WEN_A -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_EN_A -into $tb_B_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_11_ADDR_A -into $tb_B_11_group -radix hex
set tb_B_10_group [add_wave_group B_10(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_RST_A -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_CLK_A -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_DOUT_A -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_DIN_A -into $tb_B_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_WEN_A -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_EN_A -into $tb_B_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_10_ADDR_A -into $tb_B_10_group -radix hex
set tb_B_9_group [add_wave_group B_9(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_RST_A -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_CLK_A -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_DOUT_A -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_DIN_A -into $tb_B_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_WEN_A -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_EN_A -into $tb_B_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_9_ADDR_A -into $tb_B_9_group -radix hex
set tb_B_8_group [add_wave_group B_8(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_RST_A -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_CLK_A -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_DOUT_A -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_DIN_A -into $tb_B_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_WEN_A -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_EN_A -into $tb_B_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_8_ADDR_A -into $tb_B_8_group -radix hex
set tb_B_7_group [add_wave_group B_7(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_RST_A -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_CLK_A -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_DOUT_A -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_DIN_A -into $tb_B_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_WEN_A -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_EN_A -into $tb_B_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_7_ADDR_A -into $tb_B_7_group -radix hex
set tb_B_6_group [add_wave_group B_6(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_RST_A -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_CLK_A -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_DOUT_A -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_DIN_A -into $tb_B_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_WEN_A -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_EN_A -into $tb_B_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_6_ADDR_A -into $tb_B_6_group -radix hex
set tb_B_5_group [add_wave_group B_5(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_RST_A -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_CLK_A -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_DOUT_A -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_DIN_A -into $tb_B_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_WEN_A -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_EN_A -into $tb_B_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_5_ADDR_A -into $tb_B_5_group -radix hex
set tb_B_4_group [add_wave_group B_4(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_RST_A -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_CLK_A -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_DOUT_A -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_DIN_A -into $tb_B_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_WEN_A -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_EN_A -into $tb_B_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_4_ADDR_A -into $tb_B_4_group -radix hex
set tb_B_3_group [add_wave_group B_3(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_RST_A -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_CLK_A -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_DOUT_A -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_DIN_A -into $tb_B_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_WEN_A -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_EN_A -into $tb_B_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_3_ADDR_A -into $tb_B_3_group -radix hex
set tb_B_2_group [add_wave_group B_2(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_RST_A -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_CLK_A -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_DOUT_A -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_DIN_A -into $tb_B_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_WEN_A -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_EN_A -into $tb_B_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_2_ADDR_A -into $tb_B_2_group -radix hex
set tb_B_1_group [add_wave_group B_1(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_RST_A -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_CLK_A -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_DOUT_A -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_DIN_A -into $tb_B_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_WEN_A -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_EN_A -into $tb_B_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_1_ADDR_A -into $tb_B_1_group -radix hex
set tb_B_0_group [add_wave_group B_0(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_RST_A -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_CLK_A -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_DOUT_A -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_DIN_A -into $tb_B_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_WEN_A -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_EN_A -into $tb_B_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/B_0_ADDR_A -into $tb_B_0_group -radix hex
set tb_A_31_group [add_wave_group A_31(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_RST_A -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_CLK_A -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_DOUT_A -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_DIN_A -into $tb_A_31_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_WEN_A -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_EN_A -into $tb_A_31_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_31_ADDR_A -into $tb_A_31_group -radix hex
set tb_A_30_group [add_wave_group A_30(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_RST_A -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_CLK_A -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_DOUT_A -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_DIN_A -into $tb_A_30_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_WEN_A -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_EN_A -into $tb_A_30_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_30_ADDR_A -into $tb_A_30_group -radix hex
set tb_A_29_group [add_wave_group A_29(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_RST_A -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_CLK_A -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_DOUT_A -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_DIN_A -into $tb_A_29_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_WEN_A -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_EN_A -into $tb_A_29_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_29_ADDR_A -into $tb_A_29_group -radix hex
set tb_A_28_group [add_wave_group A_28(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_RST_A -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_CLK_A -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_DOUT_A -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_DIN_A -into $tb_A_28_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_WEN_A -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_EN_A -into $tb_A_28_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_28_ADDR_A -into $tb_A_28_group -radix hex
set tb_A_27_group [add_wave_group A_27(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_RST_A -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_CLK_A -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_DOUT_A -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_DIN_A -into $tb_A_27_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_WEN_A -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_EN_A -into $tb_A_27_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_27_ADDR_A -into $tb_A_27_group -radix hex
set tb_A_26_group [add_wave_group A_26(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_RST_A -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_CLK_A -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_DOUT_A -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_DIN_A -into $tb_A_26_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_WEN_A -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_EN_A -into $tb_A_26_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_26_ADDR_A -into $tb_A_26_group -radix hex
set tb_A_25_group [add_wave_group A_25(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_RST_A -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_CLK_A -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_DOUT_A -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_DIN_A -into $tb_A_25_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_WEN_A -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_EN_A -into $tb_A_25_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_25_ADDR_A -into $tb_A_25_group -radix hex
set tb_A_24_group [add_wave_group A_24(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_RST_A -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_CLK_A -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_DOUT_A -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_DIN_A -into $tb_A_24_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_WEN_A -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_EN_A -into $tb_A_24_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_24_ADDR_A -into $tb_A_24_group -radix hex
set tb_A_23_group [add_wave_group A_23(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_RST_A -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_CLK_A -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_DOUT_A -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_DIN_A -into $tb_A_23_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_WEN_A -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_EN_A -into $tb_A_23_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_23_ADDR_A -into $tb_A_23_group -radix hex
set tb_A_22_group [add_wave_group A_22(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_RST_A -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_CLK_A -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_DOUT_A -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_DIN_A -into $tb_A_22_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_WEN_A -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_EN_A -into $tb_A_22_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_22_ADDR_A -into $tb_A_22_group -radix hex
set tb_A_21_group [add_wave_group A_21(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_RST_A -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_CLK_A -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_DOUT_A -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_DIN_A -into $tb_A_21_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_WEN_A -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_EN_A -into $tb_A_21_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_21_ADDR_A -into $tb_A_21_group -radix hex
set tb_A_20_group [add_wave_group A_20(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_RST_A -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_CLK_A -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_DOUT_A -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_DIN_A -into $tb_A_20_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_WEN_A -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_EN_A -into $tb_A_20_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_20_ADDR_A -into $tb_A_20_group -radix hex
set tb_A_19_group [add_wave_group A_19(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_RST_A -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_CLK_A -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_DOUT_A -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_DIN_A -into $tb_A_19_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_WEN_A -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_EN_A -into $tb_A_19_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_19_ADDR_A -into $tb_A_19_group -radix hex
set tb_A_18_group [add_wave_group A_18(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_RST_A -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_CLK_A -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_DOUT_A -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_DIN_A -into $tb_A_18_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_WEN_A -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_EN_A -into $tb_A_18_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_18_ADDR_A -into $tb_A_18_group -radix hex
set tb_A_17_group [add_wave_group A_17(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_RST_A -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_CLK_A -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_DOUT_A -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_DIN_A -into $tb_A_17_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_WEN_A -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_EN_A -into $tb_A_17_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_17_ADDR_A -into $tb_A_17_group -radix hex
set tb_A_16_group [add_wave_group A_16(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_RST_A -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_CLK_A -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_DOUT_A -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_DIN_A -into $tb_A_16_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_WEN_A -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_EN_A -into $tb_A_16_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_16_ADDR_A -into $tb_A_16_group -radix hex
set tb_A_15_group [add_wave_group A_15(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_RST_A -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_CLK_A -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_DOUT_A -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_DIN_A -into $tb_A_15_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_WEN_A -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_EN_A -into $tb_A_15_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_15_ADDR_A -into $tb_A_15_group -radix hex
set tb_A_14_group [add_wave_group A_14(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_RST_A -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_CLK_A -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_DOUT_A -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_DIN_A -into $tb_A_14_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_WEN_A -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_EN_A -into $tb_A_14_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_14_ADDR_A -into $tb_A_14_group -radix hex
set tb_A_13_group [add_wave_group A_13(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_RST_A -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_CLK_A -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_DOUT_A -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_DIN_A -into $tb_A_13_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_WEN_A -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_EN_A -into $tb_A_13_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_13_ADDR_A -into $tb_A_13_group -radix hex
set tb_A_12_group [add_wave_group A_12(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_RST_A -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_CLK_A -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_DOUT_A -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_DIN_A -into $tb_A_12_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_WEN_A -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_EN_A -into $tb_A_12_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_12_ADDR_A -into $tb_A_12_group -radix hex
set tb_A_11_group [add_wave_group A_11(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_RST_A -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_CLK_A -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_DOUT_A -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_DIN_A -into $tb_A_11_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_WEN_A -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_EN_A -into $tb_A_11_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_11_ADDR_A -into $tb_A_11_group -radix hex
set tb_A_10_group [add_wave_group A_10(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_RST_A -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_CLK_A -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_DOUT_A -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_DIN_A -into $tb_A_10_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_WEN_A -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_EN_A -into $tb_A_10_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_10_ADDR_A -into $tb_A_10_group -radix hex
set tb_A_9_group [add_wave_group A_9(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_RST_A -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_CLK_A -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_DOUT_A -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_DIN_A -into $tb_A_9_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_WEN_A -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_EN_A -into $tb_A_9_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_9_ADDR_A -into $tb_A_9_group -radix hex
set tb_A_8_group [add_wave_group A_8(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_RST_A -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_CLK_A -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_DOUT_A -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_DIN_A -into $tb_A_8_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_WEN_A -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_EN_A -into $tb_A_8_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_8_ADDR_A -into $tb_A_8_group -radix hex
set tb_A_7_group [add_wave_group A_7(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_RST_A -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_CLK_A -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_DOUT_A -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_DIN_A -into $tb_A_7_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_WEN_A -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_EN_A -into $tb_A_7_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_7_ADDR_A -into $tb_A_7_group -radix hex
set tb_A_6_group [add_wave_group A_6(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_RST_A -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_CLK_A -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_DOUT_A -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_DIN_A -into $tb_A_6_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_WEN_A -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_EN_A -into $tb_A_6_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_6_ADDR_A -into $tb_A_6_group -radix hex
set tb_A_5_group [add_wave_group A_5(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_RST_A -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_CLK_A -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_DOUT_A -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_DIN_A -into $tb_A_5_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_WEN_A -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_EN_A -into $tb_A_5_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_5_ADDR_A -into $tb_A_5_group -radix hex
set tb_A_4_group [add_wave_group A_4(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_RST_A -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_CLK_A -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_DOUT_A -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_DIN_A -into $tb_A_4_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_WEN_A -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_EN_A -into $tb_A_4_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_4_ADDR_A -into $tb_A_4_group -radix hex
set tb_A_3_group [add_wave_group A_3(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_RST_A -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_CLK_A -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_DOUT_A -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_DIN_A -into $tb_A_3_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_WEN_A -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_EN_A -into $tb_A_3_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_3_ADDR_A -into $tb_A_3_group -radix hex
set tb_A_2_group [add_wave_group A_2(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_RST_A -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_CLK_A -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_DOUT_A -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_DIN_A -into $tb_A_2_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_WEN_A -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_EN_A -into $tb_A_2_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_2_ADDR_A -into $tb_A_2_group -radix hex
set tb_A_1_group [add_wave_group A_1(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_RST_A -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_CLK_A -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_DOUT_A -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_DIN_A -into $tb_A_1_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_WEN_A -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_EN_A -into $tb_A_1_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_1_ADDR_A -into $tb_A_1_group -radix hex
set tb_A_0_group [add_wave_group A_0(bram) -into $tbcinputgroup]
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_RST_A -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_CLK_A -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_DOUT_A -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_DIN_A -into $tb_A_0_group -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_WEN_A -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_EN_A -into $tb_A_0_group -color #ffff00 -radix hex
add_wave /apatb_matrix_matrix_mult_streaming_top/A_0_ADDR_A -into $tb_A_0_group -radix hex
save_wave_config matrix_matrix_mult_streaming.wcfg
run all
quit

