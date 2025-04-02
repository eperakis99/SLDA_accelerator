
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set op__return_group [add_wave_group op__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/interrupt -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_BRESP -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_BREADY -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_BVALID -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_RRESP -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_RDATA -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_RREADY -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_RVALID -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_ARREADY -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_ARVALID -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_ARADDR -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_WSTRB -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_WDATA -into $op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_WREADY -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_WVALID -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_AWREADY -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_AWVALID -into $op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/s_axi_BUS_A_AWADDR -into $op__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set vec_out_group [add_wave_group vec_out(axis) -into $coutputgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TDEST -into $vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TID -into $vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TLAST -into $vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TUSER -into $vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TSTRB -into $vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TKEEP -into $vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TREADY -into $vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TVALID -into $vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec_out_TDATA -into $vec_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set vec2_group [add_wave_group vec2(axis) -into $cinputgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TDEST -into $vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TID -into $vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TLAST -into $vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TUSER -into $vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TSTRB -into $vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TKEEP -into $vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TREADY -into $vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TVALID -into $vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec2_TDATA -into $vec2_group -radix hex
set vec1_group [add_wave_group vec1(axis) -into $cinputgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TDEST -into $vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TID -into $vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TLAST -into $vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TUSER -into $vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TSTRB -into $vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TKEEP -into $vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TREADY -into $vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TVALID -into $vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/vec1_TDATA -into $vec1_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_done -into $blocksiggroup
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_idle -into $blocksiggroup
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_ready -into $blocksiggroup
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_vec_vec_op_streaming_top/AESL_inst_vec_vec_op_streaming/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_vec_vec_op_streaming_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_op -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec1_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec2_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/LENGTH_vec_out_V_dest_V -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_op__return_group [add_wave_group op__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_INTERRUPT -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_BRESP -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_BREADY -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_BVALID -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_RRESP -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_RDATA -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_RREADY -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_RVALID -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_ARREADY -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_ARVALID -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_ARADDR -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_WSTRB -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_WDATA -into $tb_op__return_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_WREADY -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_WVALID -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_AWREADY -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_AWVALID -into $tb_op__return_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/BUS_A_AWADDR -into $tb_op__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_vec_out_group [add_wave_group vec_out(axis) -into $tbcoutputgroup]
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TDEST -into $tb_vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TID -into $tb_vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TLAST -into $tb_vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TUSER -into $tb_vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TSTRB -into $tb_vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TKEEP -into $tb_vec_out_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TREADY -into $tb_vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TVALID -into $tb_vec_out_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec_out_TDATA -into $tb_vec_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_vec2_group [add_wave_group vec2(axis) -into $tbcinputgroup]
add_wave /apatb_vec_vec_op_streaming_top/vec2_TDEST -into $tb_vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TID -into $tb_vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TLAST -into $tb_vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TUSER -into $tb_vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TSTRB -into $tb_vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TKEEP -into $tb_vec2_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TREADY -into $tb_vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TVALID -into $tb_vec2_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec2_TDATA -into $tb_vec2_group -radix hex
set tb_vec1_group [add_wave_group vec1(axis) -into $tbcinputgroup]
add_wave /apatb_vec_vec_op_streaming_top/vec1_TDEST -into $tb_vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TID -into $tb_vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TLAST -into $tb_vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TUSER -into $tb_vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TSTRB -into $tb_vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TKEEP -into $tb_vec1_group -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TREADY -into $tb_vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TVALID -into $tb_vec1_group -color #ffff00 -radix hex
add_wave /apatb_vec_vec_op_streaming_top/vec1_TDATA -into $tb_vec1_group -radix hex
save_wave_config vec_vec_op_streaming.wcfg
run all
quit

