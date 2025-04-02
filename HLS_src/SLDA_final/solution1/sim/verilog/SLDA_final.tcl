
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set reset__init__ready__complete__return_group [add_wave_group reset__init__ready__complete__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/interrupt -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_BRESP -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_BREADY -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_BVALID -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_RRESP -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_RDATA -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_RREADY -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_RVALID -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_ARREADY -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_ARVALID -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_ARADDR -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_WSTRB -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_WDATA -into $reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_WREADY -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_WVALID -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_AWREADY -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_AWVALID -into $reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/s_axi_CTRL_AWADDR -into $reset__init__ready__complete__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set scores_group [add_wave_group scores(bram) -into $coutputgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_Rst_A -into $scores_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_Clk_A -into $scores_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_WEN_A -into $scores_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_Dout_A -into $scores_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_Din_A -into $scores_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_EN_A -into $scores_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/scores_Addr_A -into $scores_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set Lambda_group [add_wave_group Lambda(axis) -into $cinputgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TREADY -into $Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TVALID -into $Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TDEST -into $Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TID -into $Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TLAST -into $Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TUSER -into $Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TSTRB -into $Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TKEEP -into $Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/Lambda_TDATA -into $Lambda_group -radix hex
set feature_vector2_group [add_wave_group feature_vector2(axis) -into $cinputgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TREADY -into $feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TVALID -into $feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TDEST -into $feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TID -into $feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TLAST -into $feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TUSER -into $feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TSTRB -into $feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TKEEP -into $feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector2_TDATA -into $feature_vector2_group -radix hex
set feature_vector1_group [add_wave_group feature_vector1(axis) -into $cinputgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TREADY -into $feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TVALID -into $feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TDEST -into $feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TID -into $feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TLAST -into $feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TUSER -into $feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TSTRB -into $feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TKEEP -into $feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/feature_vector1_TDATA -into $feature_vector1_group -radix hex
set mu_in_group [add_wave_group mu_in(axis) -into $cinputgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TREADY -into $mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TVALID -into $mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TDEST -into $mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TID -into $mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TLAST -into $mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TUSER -into $mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TSTRB -into $mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TKEEP -into $mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/mu_in_TDATA -into $mu_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_done -into $blocksiggroup
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_idle -into $blocksiggroup
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_ready -into $blocksiggroup
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_SLDA_final_top/AESL_inst_SLDA_final/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_SLDA_final_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_SLDA_final_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_SLDA_final_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_mu_in_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector1_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_feature_vector2_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_Lambda_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_scores -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_reset -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_init -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_ready_r -into $tb_portdepth_group -radix hex
add_wave /apatb_SLDA_final_top/LENGTH_complete -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_reset__init__ready__complete__return_group [add_wave_group reset__init__ready__complete__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_SLDA_final_top/CTRL_INTERRUPT -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_BRESP -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_BREADY -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_BVALID -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_RRESP -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_RDATA -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_RREADY -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_RVALID -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_ARREADY -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_ARVALID -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_ARADDR -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_WSTRB -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_WDATA -into $tb_reset__init__ready__complete__return_group -radix hex
add_wave /apatb_SLDA_final_top/CTRL_WREADY -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_WVALID -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_AWREADY -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_AWVALID -into $tb_reset__init__ready__complete__return_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/CTRL_AWADDR -into $tb_reset__init__ready__complete__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_scores_group [add_wave_group scores(bram) -into $tbcoutputgroup]
add_wave /apatb_SLDA_final_top/scores_RST_A -into $tb_scores_group -radix hex
add_wave /apatb_SLDA_final_top/scores_CLK_A -into $tb_scores_group -radix hex
add_wave /apatb_SLDA_final_top/scores_WEN_A -into $tb_scores_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/scores_DOUT_A -into $tb_scores_group -radix hex
add_wave /apatb_SLDA_final_top/scores_DIN_A -into $tb_scores_group -radix hex
add_wave /apatb_SLDA_final_top/scores_EN_A -into $tb_scores_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/scores_ADDR_A -into $tb_scores_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_Lambda_group [add_wave_group Lambda(axis) -into $tbcinputgroup]
add_wave /apatb_SLDA_final_top/Lambda_TREADY -into $tb_Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TVALID -into $tb_Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TDEST -into $tb_Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TID -into $tb_Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TLAST -into $tb_Lambda_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TUSER -into $tb_Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TSTRB -into $tb_Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TKEEP -into $tb_Lambda_group -radix hex
add_wave /apatb_SLDA_final_top/Lambda_TDATA -into $tb_Lambda_group -radix hex
set tb_feature_vector2_group [add_wave_group feature_vector2(axis) -into $tbcinputgroup]
add_wave /apatb_SLDA_final_top/feature_vector2_TREADY -into $tb_feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TVALID -into $tb_feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TDEST -into $tb_feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TID -into $tb_feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TLAST -into $tb_feature_vector2_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TUSER -into $tb_feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TSTRB -into $tb_feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TKEEP -into $tb_feature_vector2_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector2_TDATA -into $tb_feature_vector2_group -radix hex
set tb_feature_vector1_group [add_wave_group feature_vector1(axis) -into $tbcinputgroup]
add_wave /apatb_SLDA_final_top/feature_vector1_TREADY -into $tb_feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TVALID -into $tb_feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TDEST -into $tb_feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TID -into $tb_feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TLAST -into $tb_feature_vector1_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TUSER -into $tb_feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TSTRB -into $tb_feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TKEEP -into $tb_feature_vector1_group -radix hex
add_wave /apatb_SLDA_final_top/feature_vector1_TDATA -into $tb_feature_vector1_group -radix hex
set tb_mu_in_group [add_wave_group mu_in(axis) -into $tbcinputgroup]
add_wave /apatb_SLDA_final_top/mu_in_TREADY -into $tb_mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TVALID -into $tb_mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TDEST -into $tb_mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TID -into $tb_mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TLAST -into $tb_mu_in_group -color #ffff00 -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TUSER -into $tb_mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TSTRB -into $tb_mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TKEEP -into $tb_mu_in_group -radix hex
add_wave /apatb_SLDA_final_top/mu_in_TDATA -into $tb_mu_in_group -radix hex
save_wave_config SLDA_final.wcfg
run all
quit

