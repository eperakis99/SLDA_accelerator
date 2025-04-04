// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      SLDA_final
`define AUTOTB_DUT_INST AESL_inst_SLDA_final
`define AUTOTB_TOP      apatb_SLDA_final_top
`define AUTOTB_LAT_RESULT_FILE "SLDA_final.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "SLDA_final.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_SLDA_final_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_mu_in_V_data_V 1
`define AESL_DEPTH_mu_in_V_keep_V 1
`define AESL_DEPTH_mu_in_V_strb_V 1
`define AESL_DEPTH_mu_in_V_user_V 1
`define AESL_DEPTH_mu_in_V_last_V 1
`define AESL_DEPTH_mu_in_V_id_V 1
`define AESL_DEPTH_mu_in_V_dest_V 1
`define AESL_DEPTH_feature_vector1_V_data_V 1
`define AESL_DEPTH_feature_vector1_V_keep_V 1
`define AESL_DEPTH_feature_vector1_V_strb_V 1
`define AESL_DEPTH_feature_vector1_V_user_V 1
`define AESL_DEPTH_feature_vector1_V_last_V 1
`define AESL_DEPTH_feature_vector1_V_id_V 1
`define AESL_DEPTH_feature_vector1_V_dest_V 1
`define AESL_DEPTH_feature_vector2_V_data_V 1
`define AESL_DEPTH_feature_vector2_V_keep_V 1
`define AESL_DEPTH_feature_vector2_V_strb_V 1
`define AESL_DEPTH_feature_vector2_V_user_V 1
`define AESL_DEPTH_feature_vector2_V_last_V 1
`define AESL_DEPTH_feature_vector2_V_id_V 1
`define AESL_DEPTH_feature_vector2_V_dest_V 1
`define AESL_DEPTH_Lambda_V_data_V 1
`define AESL_DEPTH_Lambda_V_keep_V 1
`define AESL_DEPTH_Lambda_V_strb_V 1
`define AESL_DEPTH_Lambda_V_user_V 1
`define AESL_DEPTH_Lambda_V_last_V 1
`define AESL_DEPTH_Lambda_V_id_V 1
`define AESL_DEPTH_Lambda_V_dest_V 1
`define AESL_BRAM_scores AESL_autobram_scores
`define AESL_BRAM_INST_scores bram_inst_scores
`define AESL_DEPTH_reset 1
`define AESL_DEPTH_init 1
`define AESL_DEPTH_ready_r 1
`define AESL_DEPTH_complete 1
`define AUTOTB_TVIN_mu_in_V_data_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_data_V.dat"
`define AUTOTB_TVIN_mu_in_V_keep_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_keep_V.dat"
`define AUTOTB_TVIN_mu_in_V_strb_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_strb_V.dat"
`define AUTOTB_TVIN_mu_in_V_user_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_user_V.dat"
`define AUTOTB_TVIN_mu_in_V_last_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_last_V.dat"
`define AUTOTB_TVIN_mu_in_V_id_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_id_V.dat"
`define AUTOTB_TVIN_mu_in_V_dest_V  "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_dest_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_data_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_keep_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_strb_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_user_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_last_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_id_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_dest_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_dest_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_data_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_keep_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_strb_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_user_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_last_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_id_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_dest_V  "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_dest_V.dat"
`define AUTOTB_TVIN_Lambda_V_data_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_data_V.dat"
`define AUTOTB_TVIN_Lambda_V_keep_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_keep_V.dat"
`define AUTOTB_TVIN_Lambda_V_strb_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_strb_V.dat"
`define AUTOTB_TVIN_Lambda_V_user_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_user_V.dat"
`define AUTOTB_TVIN_Lambda_V_last_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_last_V.dat"
`define AUTOTB_TVIN_Lambda_V_id_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_id_V.dat"
`define AUTOTB_TVIN_Lambda_V_dest_V  "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_dest_V.dat"
`define AUTOTB_TVIN_scores  "../tv/cdatafile/c.SLDA_final.autotvin_scores.dat"
`define AUTOTB_TVIN_mu_in_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_data_V.dat"
`define AUTOTB_TVIN_mu_in_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_keep_V.dat"
`define AUTOTB_TVIN_mu_in_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_strb_V.dat"
`define AUTOTB_TVIN_mu_in_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_user_V.dat"
`define AUTOTB_TVIN_mu_in_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_last_V.dat"
`define AUTOTB_TVIN_mu_in_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_id_V.dat"
`define AUTOTB_TVIN_mu_in_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_mu_in_V_dest_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector1_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector1_V_dest_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector2_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_feature_vector2_V_dest_V.dat"
`define AUTOTB_TVIN_Lambda_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_data_V.dat"
`define AUTOTB_TVIN_Lambda_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_keep_V.dat"
`define AUTOTB_TVIN_Lambda_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_strb_V.dat"
`define AUTOTB_TVIN_Lambda_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_user_V.dat"
`define AUTOTB_TVIN_Lambda_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_last_V.dat"
`define AUTOTB_TVIN_Lambda_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_id_V.dat"
`define AUTOTB_TVIN_Lambda_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_Lambda_V_dest_V.dat"
`define AUTOTB_TVIN_scores_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvin_scores.dat"
`define AUTOTB_TVOUT_scores  "../tv/cdatafile/c.SLDA_final.autotvout_scores.dat"
`define AUTOTB_TVOUT_ready_r  "../tv/cdatafile/c.SLDA_final.autotvout_ready_r.dat"
`define AUTOTB_TVOUT_scores_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvout_scores.dat"
`define AUTOTB_TVOUT_ready_r_out_wrapc  "../tv/rtldatafile/rtl.SLDA_final.autotvout_ready_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 5610;
parameter LENGTH_mu_in_V_data_V = 640;
parameter LENGTH_mu_in_V_keep_V = 640;
parameter LENGTH_mu_in_V_strb_V = 640;
parameter LENGTH_mu_in_V_user_V = 640;
parameter LENGTH_mu_in_V_last_V = 640;
parameter LENGTH_mu_in_V_id_V = 640;
parameter LENGTH_mu_in_V_dest_V = 640;
parameter LENGTH_feature_vector1_V_data_V = 64;
parameter LENGTH_feature_vector1_V_keep_V = 64;
parameter LENGTH_feature_vector1_V_strb_V = 64;
parameter LENGTH_feature_vector1_V_user_V = 64;
parameter LENGTH_feature_vector1_V_last_V = 64;
parameter LENGTH_feature_vector1_V_id_V = 64;
parameter LENGTH_feature_vector1_V_dest_V = 64;
parameter LENGTH_feature_vector2_V_data_V = 64;
parameter LENGTH_feature_vector2_V_keep_V = 64;
parameter LENGTH_feature_vector2_V_strb_V = 64;
parameter LENGTH_feature_vector2_V_user_V = 64;
parameter LENGTH_feature_vector2_V_last_V = 64;
parameter LENGTH_feature_vector2_V_id_V = 64;
parameter LENGTH_feature_vector2_V_dest_V = 64;
parameter LENGTH_Lambda_V_data_V = 4096;
parameter LENGTH_Lambda_V_keep_V = 4096;
parameter LENGTH_Lambda_V_strb_V = 4096;
parameter LENGTH_Lambda_V_user_V = 4096;
parameter LENGTH_Lambda_V_last_V = 4096;
parameter LENGTH_Lambda_V_id_V = 4096;
parameter LENGTH_Lambda_V_dest_V = 4096;
parameter LENGTH_scores = 10;
parameter LENGTH_reset = 1;
parameter LENGTH_init = 1;
parameter LENGTH_ready_r = 1;
parameter LENGTH_complete = 1;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] CTRL_AWADDR;
wire  CTRL_AWVALID;
wire  CTRL_AWREADY;
wire  CTRL_WVALID;
wire  CTRL_WREADY;
wire [31 : 0] CTRL_WDATA;
wire [3 : 0] CTRL_WSTRB;
wire [5 : 0] CTRL_ARADDR;
wire  CTRL_ARVALID;
wire  CTRL_ARREADY;
wire  CTRL_RVALID;
wire  CTRL_RREADY;
wire [31 : 0] CTRL_RDATA;
wire [1 : 0] CTRL_RRESP;
wire  CTRL_BVALID;
wire  CTRL_BREADY;
wire [1 : 0] CTRL_BRESP;
wire  CTRL_INTERRUPT;
wire [127 : 0] mu_in_TDATA;
wire [15 : 0] mu_in_TKEEP;
wire [15 : 0] mu_in_TSTRB;
wire [1 : 0] mu_in_TUSER;
wire [0 : 0] mu_in_TLAST;
wire [4 : 0] mu_in_TID;
wire [5 : 0] mu_in_TDEST;
wire [127 : 0] feature_vector1_TDATA;
wire [15 : 0] feature_vector1_TKEEP;
wire [15 : 0] feature_vector1_TSTRB;
wire [1 : 0] feature_vector1_TUSER;
wire [0 : 0] feature_vector1_TLAST;
wire [4 : 0] feature_vector1_TID;
wire [5 : 0] feature_vector1_TDEST;
wire [127 : 0] feature_vector2_TDATA;
wire [15 : 0] feature_vector2_TKEEP;
wire [15 : 0] feature_vector2_TSTRB;
wire [1 : 0] feature_vector2_TUSER;
wire [0 : 0] feature_vector2_TLAST;
wire [4 : 0] feature_vector2_TID;
wire [5 : 0] feature_vector2_TDEST;
wire [127 : 0] Lambda_TDATA;
wire [15 : 0] Lambda_TKEEP;
wire [15 : 0] Lambda_TSTRB;
wire [1 : 0] Lambda_TUSER;
wire [0 : 0] Lambda_TLAST;
wire [4 : 0] Lambda_TID;
wire [5 : 0] Lambda_TDEST;
wire [31 : 0] scores_ADDR_A;
wire  scores_EN_A;
wire [31 : 0] scores_DIN_A;
wire [31 : 0] scores_DOUT_A;
wire [3 : 0] scores_WEN_A;
wire  scores_CLK_A;
wire  scores_RST_A;
wire  Lambda_TVALID;
wire  Lambda_TREADY;
wire  mu_in_TVALID;
wire  mu_in_TREADY;
wire  feature_vector1_TVALID;
wire  feature_vector1_TREADY;
wire  feature_vector2_TVALID;
wire  feature_vector2_TREADY;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire CTRL_read_data_finish;
wire CTRL_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_AWADDR(CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(CTRL_AWREADY),
    .s_axi_CTRL_WVALID(CTRL_WVALID),
    .s_axi_CTRL_WREADY(CTRL_WREADY),
    .s_axi_CTRL_WDATA(CTRL_WDATA),
    .s_axi_CTRL_WSTRB(CTRL_WSTRB),
    .s_axi_CTRL_ARADDR(CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(CTRL_ARREADY),
    .s_axi_CTRL_RVALID(CTRL_RVALID),
    .s_axi_CTRL_RREADY(CTRL_RREADY),
    .s_axi_CTRL_RDATA(CTRL_RDATA),
    .s_axi_CTRL_RRESP(CTRL_RRESP),
    .s_axi_CTRL_BVALID(CTRL_BVALID),
    .s_axi_CTRL_BREADY(CTRL_BREADY),
    .s_axi_CTRL_BRESP(CTRL_BRESP),
    .interrupt(CTRL_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .mu_in_TDATA(mu_in_TDATA),
    .mu_in_TKEEP(mu_in_TKEEP),
    .mu_in_TSTRB(mu_in_TSTRB),
    .mu_in_TUSER(mu_in_TUSER),
    .mu_in_TLAST(mu_in_TLAST),
    .mu_in_TID(mu_in_TID),
    .mu_in_TDEST(mu_in_TDEST),
    .feature_vector1_TDATA(feature_vector1_TDATA),
    .feature_vector1_TKEEP(feature_vector1_TKEEP),
    .feature_vector1_TSTRB(feature_vector1_TSTRB),
    .feature_vector1_TUSER(feature_vector1_TUSER),
    .feature_vector1_TLAST(feature_vector1_TLAST),
    .feature_vector1_TID(feature_vector1_TID),
    .feature_vector1_TDEST(feature_vector1_TDEST),
    .feature_vector2_TDATA(feature_vector2_TDATA),
    .feature_vector2_TKEEP(feature_vector2_TKEEP),
    .feature_vector2_TSTRB(feature_vector2_TSTRB),
    .feature_vector2_TUSER(feature_vector2_TUSER),
    .feature_vector2_TLAST(feature_vector2_TLAST),
    .feature_vector2_TID(feature_vector2_TID),
    .feature_vector2_TDEST(feature_vector2_TDEST),
    .Lambda_TDATA(Lambda_TDATA),
    .Lambda_TKEEP(Lambda_TKEEP),
    .Lambda_TSTRB(Lambda_TSTRB),
    .Lambda_TUSER(Lambda_TUSER),
    .Lambda_TLAST(Lambda_TLAST),
    .Lambda_TID(Lambda_TID),
    .Lambda_TDEST(Lambda_TDEST),
    .scores_Addr_A(scores_ADDR_A),
    .scores_EN_A(scores_EN_A),
    .scores_Din_A(scores_DIN_A),
    .scores_Dout_A(scores_DOUT_A),
    .scores_WEN_A(scores_WEN_A),
    .scores_Clk_A(scores_CLK_A),
    .scores_Rst_A(scores_RST_A),
    .Lambda_TVALID(Lambda_TVALID),
    .Lambda_TREADY(Lambda_TREADY),
    .mu_in_TVALID(mu_in_TVALID),
    .mu_in_TREADY(mu_in_TREADY),
    .feature_vector1_TVALID(feature_vector1_TVALID),
    .feature_vector1_TREADY(feature_vector1_TREADY),
    .feature_vector2_TVALID(feature_vector2_TVALID),
    .feature_vector2_TREADY(feature_vector2_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & CTRL_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & CTRL_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end




























//------------------------bramscores Instantiation--------------

// The input and output of bramscores
wire  bramscores_Clk_A, bramscores_Clk_B;
wire  bramscores_EN_A, bramscores_EN_B;
wire  [4 - 1 : 0] bramscores_WEN_A, bramscores_WEN_B;
wire    [31 : 0]    bramscores_Addr_A, bramscores_Addr_B;
wire    [31 : 0]    bramscores_Din_A, bramscores_Din_B;
wire    [31 : 0]    bramscores_Dout_A, bramscores_Dout_B;
wire    bramscores_ready;
wire    bramscores_done;

`AESL_BRAM_scores `AESL_BRAM_INST_scores(
    .Clk_A    (bramscores_Clk_A),
    .Rst_A    (bramscores_Rst_A),
    .EN_A     (bramscores_EN_A),
    .WEN_A    (bramscores_WEN_A),
    .Addr_A   (bramscores_Addr_A),
    .Din_A    (bramscores_Din_A),
    .Dout_A   (bramscores_Dout_A),
    .Clk_B    (bramscores_Clk_B),
    .Rst_B    (bramscores_Rst_B),
    .EN_B     (bramscores_EN_B),
    .WEN_B    (bramscores_WEN_B),
    .Addr_B   (bramscores_Addr_B),
    .Din_B    (bramscores_Din_B),
    .Dout_B   (bramscores_Dout_B),
    .ready    (bramscores_ready),
    .done        (bramscores_done)
);

// Assignment between dut and bramscores
assign bramscores_Clk_A = scores_CLK_A;
assign bramscores_Rst_A = scores_RST_A;
assign bramscores_Addr_A = scores_ADDR_A;
assign bramscores_EN_A = scores_EN_A;
assign bramscores_WEN_A = scores_WEN_A;
assign bramscores_Din_A = scores_DIN_A;
assign bramscores_ready= ready_initial | bramscores_done;
assign bramscores_done =    AESL_done_delay;






reg [31:0] ap_c_n_tvin_trans_num_mu_in_V_data_V;

reg mu_in_ready_reg; // for self-sync

wire mu_in_ready;
wire mu_in_done;
wire [31:0] mu_in_transaction;
wire axi_s_mu_in_TVALID;
wire axi_s_mu_in_TREADY;

AESL_axi_s_mu_in AESL_AXI_S_mu_in(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_mu_in_TDATA(mu_in_TDATA),
    .TRAN_mu_in_TKEEP(mu_in_TKEEP),
    .TRAN_mu_in_TSTRB(mu_in_TSTRB),
    .TRAN_mu_in_TUSER(mu_in_TUSER),
    .TRAN_mu_in_TLAST(mu_in_TLAST),
    .TRAN_mu_in_TID(mu_in_TID),
    .TRAN_mu_in_TDEST(mu_in_TDEST),
    .TRAN_mu_in_TVALID(axi_s_mu_in_TVALID),
    .TRAN_mu_in_TREADY(axi_s_mu_in_TREADY),
    .ready(mu_in_ready),
    .done(mu_in_done),
    .transaction(mu_in_transaction));

assign mu_in_ready = mu_in_ready_reg | ready_initial;
assign mu_in_done = 0;

assign mu_in_TVALID = axi_s_mu_in_TVALID;

assign axi_s_mu_in_TREADY = mu_in_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_feature_vector1_V_data_V;

reg feature_vector1_ready_reg; // for self-sync

wire feature_vector1_ready;
wire feature_vector1_done;
wire [31:0] feature_vector1_transaction;
wire axi_s_feature_vector1_TVALID;
wire axi_s_feature_vector1_TREADY;

AESL_axi_s_feature_vector1 AESL_AXI_S_feature_vector1(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_feature_vector1_TDATA(feature_vector1_TDATA),
    .TRAN_feature_vector1_TKEEP(feature_vector1_TKEEP),
    .TRAN_feature_vector1_TSTRB(feature_vector1_TSTRB),
    .TRAN_feature_vector1_TUSER(feature_vector1_TUSER),
    .TRAN_feature_vector1_TLAST(feature_vector1_TLAST),
    .TRAN_feature_vector1_TID(feature_vector1_TID),
    .TRAN_feature_vector1_TDEST(feature_vector1_TDEST),
    .TRAN_feature_vector1_TVALID(axi_s_feature_vector1_TVALID),
    .TRAN_feature_vector1_TREADY(axi_s_feature_vector1_TREADY),
    .ready(feature_vector1_ready),
    .done(feature_vector1_done),
    .transaction(feature_vector1_transaction));

assign feature_vector1_ready = feature_vector1_ready_reg | ready_initial;
assign feature_vector1_done = 0;

assign feature_vector1_TVALID = axi_s_feature_vector1_TVALID;

assign axi_s_feature_vector1_TREADY = feature_vector1_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_feature_vector2_V_data_V;

reg feature_vector2_ready_reg; // for self-sync

wire feature_vector2_ready;
wire feature_vector2_done;
wire [31:0] feature_vector2_transaction;
wire axi_s_feature_vector2_TVALID;
wire axi_s_feature_vector2_TREADY;

AESL_axi_s_feature_vector2 AESL_AXI_S_feature_vector2(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_feature_vector2_TDATA(feature_vector2_TDATA),
    .TRAN_feature_vector2_TKEEP(feature_vector2_TKEEP),
    .TRAN_feature_vector2_TSTRB(feature_vector2_TSTRB),
    .TRAN_feature_vector2_TUSER(feature_vector2_TUSER),
    .TRAN_feature_vector2_TLAST(feature_vector2_TLAST),
    .TRAN_feature_vector2_TID(feature_vector2_TID),
    .TRAN_feature_vector2_TDEST(feature_vector2_TDEST),
    .TRAN_feature_vector2_TVALID(axi_s_feature_vector2_TVALID),
    .TRAN_feature_vector2_TREADY(axi_s_feature_vector2_TREADY),
    .ready(feature_vector2_ready),
    .done(feature_vector2_done),
    .transaction(feature_vector2_transaction));

assign feature_vector2_ready = feature_vector2_ready_reg | ready_initial;
assign feature_vector2_done = 0;

assign feature_vector2_TVALID = axi_s_feature_vector2_TVALID;

assign axi_s_feature_vector2_TREADY = feature_vector2_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_Lambda_V_data_V;

reg Lambda_ready_reg; // for self-sync

wire Lambda_ready;
wire Lambda_done;
wire [31:0] Lambda_transaction;
wire axi_s_Lambda_TVALID;
wire axi_s_Lambda_TREADY;

AESL_axi_s_Lambda AESL_AXI_S_Lambda(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_Lambda_TDATA(Lambda_TDATA),
    .TRAN_Lambda_TKEEP(Lambda_TKEEP),
    .TRAN_Lambda_TSTRB(Lambda_TSTRB),
    .TRAN_Lambda_TUSER(Lambda_TUSER),
    .TRAN_Lambda_TLAST(Lambda_TLAST),
    .TRAN_Lambda_TID(Lambda_TID),
    .TRAN_Lambda_TDEST(Lambda_TDEST),
    .TRAN_Lambda_TVALID(axi_s_Lambda_TVALID),
    .TRAN_Lambda_TREADY(axi_s_Lambda_TREADY),
    .ready(Lambda_ready),
    .done(Lambda_done),
    .transaction(Lambda_transaction));

assign Lambda_ready = Lambda_ready_reg | ready_initial;
assign Lambda_done = 0;

assign Lambda_TVALID = axi_s_Lambda_TVALID;

assign axi_s_Lambda_TREADY = Lambda_TREADY;

AESL_axi_slave_CTRL AESL_AXI_SLAVE_CTRL(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_AWADDR (CTRL_AWADDR),
    .TRAN_s_axi_CTRL_AWVALID (CTRL_AWVALID),
    .TRAN_s_axi_CTRL_AWREADY (CTRL_AWREADY),
    .TRAN_s_axi_CTRL_WVALID (CTRL_WVALID),
    .TRAN_s_axi_CTRL_WREADY (CTRL_WREADY),
    .TRAN_s_axi_CTRL_WDATA (CTRL_WDATA),
    .TRAN_s_axi_CTRL_WSTRB (CTRL_WSTRB),
    .TRAN_s_axi_CTRL_ARADDR (CTRL_ARADDR),
    .TRAN_s_axi_CTRL_ARVALID (CTRL_ARVALID),
    .TRAN_s_axi_CTRL_ARREADY (CTRL_ARREADY),
    .TRAN_s_axi_CTRL_RVALID (CTRL_RVALID),
    .TRAN_s_axi_CTRL_RREADY (CTRL_RREADY),
    .TRAN_s_axi_CTRL_RDATA (CTRL_RDATA),
    .TRAN_s_axi_CTRL_RRESP (CTRL_RRESP),
    .TRAN_s_axi_CTRL_BVALID (CTRL_BVALID),
    .TRAN_s_axi_CTRL_BREADY (CTRL_BREADY),
    .TRAN_s_axi_CTRL_BRESP (CTRL_BRESP),
    .TRAN_CTRL_interrupt (CTRL_INTERRUPT),
    .TRAN_CTRL_read_data_finish(CTRL_read_data_finish),
    .TRAN_CTRL_write_data_finish(CTRL_write_data_finish),
    .TRAN_CTRL_ready_out (AESL_ready),
    .TRAN_CTRL_ready_in (AESL_slave_ready),
    .TRAN_CTRL_done_out (AESL_slave_output_done),
    .TRAN_CTRL_idle_out (AESL_idle),
    .TRAN_CTRL_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_mu_in_V_data_V;
reg [31:0] size_mu_in_V_data_V;
reg [31:0] size_mu_in_V_data_V_backup;
reg end_mu_in_V_keep_V;
reg [31:0] size_mu_in_V_keep_V;
reg [31:0] size_mu_in_V_keep_V_backup;
reg end_mu_in_V_strb_V;
reg [31:0] size_mu_in_V_strb_V;
reg [31:0] size_mu_in_V_strb_V_backup;
reg end_mu_in_V_user_V;
reg [31:0] size_mu_in_V_user_V;
reg [31:0] size_mu_in_V_user_V_backup;
reg end_mu_in_V_last_V;
reg [31:0] size_mu_in_V_last_V;
reg [31:0] size_mu_in_V_last_V_backup;
reg end_mu_in_V_id_V;
reg [31:0] size_mu_in_V_id_V;
reg [31:0] size_mu_in_V_id_V_backup;
reg end_mu_in_V_dest_V;
reg [31:0] size_mu_in_V_dest_V;
reg [31:0] size_mu_in_V_dest_V_backup;
reg end_feature_vector1_V_data_V;
reg [31:0] size_feature_vector1_V_data_V;
reg [31:0] size_feature_vector1_V_data_V_backup;
reg end_feature_vector1_V_keep_V;
reg [31:0] size_feature_vector1_V_keep_V;
reg [31:0] size_feature_vector1_V_keep_V_backup;
reg end_feature_vector1_V_strb_V;
reg [31:0] size_feature_vector1_V_strb_V;
reg [31:0] size_feature_vector1_V_strb_V_backup;
reg end_feature_vector1_V_user_V;
reg [31:0] size_feature_vector1_V_user_V;
reg [31:0] size_feature_vector1_V_user_V_backup;
reg end_feature_vector1_V_last_V;
reg [31:0] size_feature_vector1_V_last_V;
reg [31:0] size_feature_vector1_V_last_V_backup;
reg end_feature_vector1_V_id_V;
reg [31:0] size_feature_vector1_V_id_V;
reg [31:0] size_feature_vector1_V_id_V_backup;
reg end_feature_vector1_V_dest_V;
reg [31:0] size_feature_vector1_V_dest_V;
reg [31:0] size_feature_vector1_V_dest_V_backup;
reg end_feature_vector2_V_data_V;
reg [31:0] size_feature_vector2_V_data_V;
reg [31:0] size_feature_vector2_V_data_V_backup;
reg end_feature_vector2_V_keep_V;
reg [31:0] size_feature_vector2_V_keep_V;
reg [31:0] size_feature_vector2_V_keep_V_backup;
reg end_feature_vector2_V_strb_V;
reg [31:0] size_feature_vector2_V_strb_V;
reg [31:0] size_feature_vector2_V_strb_V_backup;
reg end_feature_vector2_V_user_V;
reg [31:0] size_feature_vector2_V_user_V;
reg [31:0] size_feature_vector2_V_user_V_backup;
reg end_feature_vector2_V_last_V;
reg [31:0] size_feature_vector2_V_last_V;
reg [31:0] size_feature_vector2_V_last_V_backup;
reg end_feature_vector2_V_id_V;
reg [31:0] size_feature_vector2_V_id_V;
reg [31:0] size_feature_vector2_V_id_V_backup;
reg end_feature_vector2_V_dest_V;
reg [31:0] size_feature_vector2_V_dest_V;
reg [31:0] size_feature_vector2_V_dest_V_backup;
reg end_Lambda_V_data_V;
reg [31:0] size_Lambda_V_data_V;
reg [31:0] size_Lambda_V_data_V_backup;
reg end_Lambda_V_keep_V;
reg [31:0] size_Lambda_V_keep_V;
reg [31:0] size_Lambda_V_keep_V_backup;
reg end_Lambda_V_strb_V;
reg [31:0] size_Lambda_V_strb_V;
reg [31:0] size_Lambda_V_strb_V_backup;
reg end_Lambda_V_user_V;
reg [31:0] size_Lambda_V_user_V;
reg [31:0] size_Lambda_V_user_V_backup;
reg end_Lambda_V_last_V;
reg [31:0] size_Lambda_V_last_V;
reg [31:0] size_Lambda_V_last_V_backup;
reg end_Lambda_V_id_V;
reg [31:0] size_Lambda_V_id_V;
reg [31:0] size_Lambda_V_id_V_backup;
reg end_Lambda_V_dest_V;
reg [31:0] size_Lambda_V_dest_V;
reg [31:0] size_Lambda_V_dest_V_backup;
reg end_scores;
reg [31:0] size_scores;
reg [31:0] size_scores_backup;
reg end_ready_r;
reg [31:0] size_ready_r;
reg [31:0] size_ready_r_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_mu_in
        mu_in_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_mu_in_V_data_V or mu_in_transaction);
            if (ap_c_n_tvin_trans_num_mu_in_V_data_V > mu_in_transaction) begin
                mu_in_ready_reg = 1;
            end else begin
                mu_in_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_feature_vector1
        feature_vector1_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_feature_vector1_V_data_V or feature_vector1_transaction);
            if (ap_c_n_tvin_trans_num_feature_vector1_V_data_V > feature_vector1_transaction) begin
                feature_vector1_ready_reg = 1;
            end else begin
                feature_vector1_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_feature_vector2
        feature_vector2_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_feature_vector2_V_data_V or feature_vector2_transaction);
            if (ap_c_n_tvin_trans_num_feature_vector2_V_data_V > feature_vector2_transaction) begin
                feature_vector2_ready_reg = 1;
            end else begin
                feature_vector2_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_Lambda
        Lambda_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_Lambda_V_data_V or Lambda_transaction);
            if (ap_c_n_tvin_trans_num_Lambda_V_data_V > Lambda_transaction) begin
                Lambda_ready_reg = 1;
            end else begin
                Lambda_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_mu_in_V_data_V "../tv/stream_size/stream_size_in_mu_in_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_mu_in_V_data_V
        integer fp_mu_in_V_data_V;
        reg [127:0] token_mu_in_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_mu_in_V_data_V = 0;
        end_mu_in_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_mu_in_V_data_V = $fopen(`STREAM_SIZE_IN_mu_in_V_data_V, "r");
        if(fp_mu_in_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_mu_in_V_data_V);
            $finish;
        end
        read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be [[[runtime]]]
        if (token_mu_in_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_mu_in_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_mu_in_V_data_V = 0;
        size_mu_in_V_data_V_backup = 0;
        while (size_mu_in_V_data_V == 0 && end_mu_in_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_mu_in_V_data_V = ap_c_n_tvin_trans_num_mu_in_V_data_V + 1;
            read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_mu_in_V_data_V == "[[transaction]]") begin
                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be transaction number
                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_mu_in_V_data_V, "%d", size_mu_in_V_data_V);
                if (size_mu_in_V_data_V > 0) begin
                    size_mu_in_V_data_V_backup = size_mu_in_V_data_V;
                end
                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be [[/transaction]]
            end else if (token_mu_in_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_mu_in_V_data_V);
                end_mu_in_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_mu_in_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_mu_in_V_data_V == 0) begin
                if ((mu_in_TREADY & mu_in_TVALID) == 1) begin
                    if (size_mu_in_V_data_V > 0) begin
                        size_mu_in_V_data_V = size_mu_in_V_data_V - 1;
                        while (size_mu_in_V_data_V == 0 && end_mu_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_mu_in_V_data_V = ap_c_n_tvin_trans_num_mu_in_V_data_V + 1;
                            read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_mu_in_V_data_V == "[[transaction]]") begin
                                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be transaction number
                                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_mu_in_V_data_V, "%d", size_mu_in_V_data_V);
                                if (size_mu_in_V_data_V > 0) begin
                                    size_mu_in_V_data_V_backup = size_mu_in_V_data_V;
                                end
                                read_token(fp_mu_in_V_data_V, token_mu_in_V_data_V); // should be [[/transaction]]
                            end else if (token_mu_in_V_data_V == "[[[/runtime]]]") begin
                                size_mu_in_V_data_V = size_mu_in_V_data_V_backup;
                                $fclose(fp_mu_in_V_data_V);
                                end_mu_in_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_mu_in_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((mu_in_TREADY & mu_in_TVALID) == 1) begin
                    if (size_mu_in_V_data_V > 0) begin
                        size_mu_in_V_data_V = size_mu_in_V_data_V - 1;
                        if (size_mu_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_mu_in_V_data_V = ap_c_n_tvin_trans_num_mu_in_V_data_V + 1;
                            size_mu_in_V_data_V = size_mu_in_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_feature_vector1_V_data_V "../tv/stream_size/stream_size_in_feature_vector1_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_feature_vector1_V_data_V
        integer fp_feature_vector1_V_data_V;
        reg [127:0] token_feature_vector1_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_feature_vector1_V_data_V = 0;
        end_feature_vector1_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_feature_vector1_V_data_V = $fopen(`STREAM_SIZE_IN_feature_vector1_V_data_V, "r");
        if(fp_feature_vector1_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_feature_vector1_V_data_V);
            $finish;
        end
        read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be [[[runtime]]]
        if (token_feature_vector1_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_feature_vector1_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_feature_vector1_V_data_V = 0;
        size_feature_vector1_V_data_V_backup = 0;
        while (size_feature_vector1_V_data_V == 0 && end_feature_vector1_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_feature_vector1_V_data_V = ap_c_n_tvin_trans_num_feature_vector1_V_data_V + 1;
            read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_feature_vector1_V_data_V == "[[transaction]]") begin
                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be transaction number
                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_feature_vector1_V_data_V, "%d", size_feature_vector1_V_data_V);
                if (size_feature_vector1_V_data_V > 0) begin
                    size_feature_vector1_V_data_V_backup = size_feature_vector1_V_data_V;
                end
                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be [[/transaction]]
            end else if (token_feature_vector1_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_feature_vector1_V_data_V);
                end_feature_vector1_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_feature_vector1_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_feature_vector1_V_data_V == 0) begin
                if ((feature_vector1_TREADY & feature_vector1_TVALID) == 1) begin
                    if (size_feature_vector1_V_data_V > 0) begin
                        size_feature_vector1_V_data_V = size_feature_vector1_V_data_V - 1;
                        while (size_feature_vector1_V_data_V == 0 && end_feature_vector1_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector1_V_data_V = ap_c_n_tvin_trans_num_feature_vector1_V_data_V + 1;
                            read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_feature_vector1_V_data_V == "[[transaction]]") begin
                                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be transaction number
                                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_feature_vector1_V_data_V, "%d", size_feature_vector1_V_data_V);
                                if (size_feature_vector1_V_data_V > 0) begin
                                    size_feature_vector1_V_data_V_backup = size_feature_vector1_V_data_V;
                                end
                                read_token(fp_feature_vector1_V_data_V, token_feature_vector1_V_data_V); // should be [[/transaction]]
                            end else if (token_feature_vector1_V_data_V == "[[[/runtime]]]") begin
                                size_feature_vector1_V_data_V = size_feature_vector1_V_data_V_backup;
                                $fclose(fp_feature_vector1_V_data_V);
                                end_feature_vector1_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_feature_vector1_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((feature_vector1_TREADY & feature_vector1_TVALID) == 1) begin
                    if (size_feature_vector1_V_data_V > 0) begin
                        size_feature_vector1_V_data_V = size_feature_vector1_V_data_V - 1;
                        if (size_feature_vector1_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector1_V_data_V = ap_c_n_tvin_trans_num_feature_vector1_V_data_V + 1;
                            size_feature_vector1_V_data_V = size_feature_vector1_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_feature_vector2_V_data_V "../tv/stream_size/stream_size_in_feature_vector2_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_feature_vector2_V_data_V
        integer fp_feature_vector2_V_data_V;
        reg [127:0] token_feature_vector2_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_feature_vector2_V_data_V = 0;
        end_feature_vector2_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_feature_vector2_V_data_V = $fopen(`STREAM_SIZE_IN_feature_vector2_V_data_V, "r");
        if(fp_feature_vector2_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_feature_vector2_V_data_V);
            $finish;
        end
        read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be [[[runtime]]]
        if (token_feature_vector2_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_feature_vector2_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_feature_vector2_V_data_V = 0;
        size_feature_vector2_V_data_V_backup = 0;
        while (size_feature_vector2_V_data_V == 0 && end_feature_vector2_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_feature_vector2_V_data_V = ap_c_n_tvin_trans_num_feature_vector2_V_data_V + 1;
            read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_feature_vector2_V_data_V == "[[transaction]]") begin
                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be transaction number
                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_feature_vector2_V_data_V, "%d", size_feature_vector2_V_data_V);
                if (size_feature_vector2_V_data_V > 0) begin
                    size_feature_vector2_V_data_V_backup = size_feature_vector2_V_data_V;
                end
                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be [[/transaction]]
            end else if (token_feature_vector2_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_feature_vector2_V_data_V);
                end_feature_vector2_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_feature_vector2_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_feature_vector2_V_data_V == 0) begin
                if ((feature_vector2_TREADY & feature_vector2_TVALID) == 1) begin
                    if (size_feature_vector2_V_data_V > 0) begin
                        size_feature_vector2_V_data_V = size_feature_vector2_V_data_V - 1;
                        while (size_feature_vector2_V_data_V == 0 && end_feature_vector2_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector2_V_data_V = ap_c_n_tvin_trans_num_feature_vector2_V_data_V + 1;
                            read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_feature_vector2_V_data_V == "[[transaction]]") begin
                                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be transaction number
                                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_feature_vector2_V_data_V, "%d", size_feature_vector2_V_data_V);
                                if (size_feature_vector2_V_data_V > 0) begin
                                    size_feature_vector2_V_data_V_backup = size_feature_vector2_V_data_V;
                                end
                                read_token(fp_feature_vector2_V_data_V, token_feature_vector2_V_data_V); // should be [[/transaction]]
                            end else if (token_feature_vector2_V_data_V == "[[[/runtime]]]") begin
                                size_feature_vector2_V_data_V = size_feature_vector2_V_data_V_backup;
                                $fclose(fp_feature_vector2_V_data_V);
                                end_feature_vector2_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_feature_vector2_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((feature_vector2_TREADY & feature_vector2_TVALID) == 1) begin
                    if (size_feature_vector2_V_data_V > 0) begin
                        size_feature_vector2_V_data_V = size_feature_vector2_V_data_V - 1;
                        if (size_feature_vector2_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector2_V_data_V = ap_c_n_tvin_trans_num_feature_vector2_V_data_V + 1;
                            size_feature_vector2_V_data_V = size_feature_vector2_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_Lambda_V_data_V "../tv/stream_size/stream_size_in_Lambda_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_Lambda_V_data_V
        integer fp_Lambda_V_data_V;
        reg [127:0] token_Lambda_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_Lambda_V_data_V = 0;
        end_Lambda_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_Lambda_V_data_V = $fopen(`STREAM_SIZE_IN_Lambda_V_data_V, "r");
        if(fp_Lambda_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_Lambda_V_data_V);
            $finish;
        end
        read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be [[[runtime]]]
        if (token_Lambda_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_Lambda_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_Lambda_V_data_V = 0;
        size_Lambda_V_data_V_backup = 0;
        while (size_Lambda_V_data_V == 0 && end_Lambda_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_Lambda_V_data_V = ap_c_n_tvin_trans_num_Lambda_V_data_V + 1;
            read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_Lambda_V_data_V == "[[transaction]]") begin
                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be transaction number
                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_Lambda_V_data_V, "%d", size_Lambda_V_data_V);
                if (size_Lambda_V_data_V > 0) begin
                    size_Lambda_V_data_V_backup = size_Lambda_V_data_V;
                end
                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be [[/transaction]]
            end else if (token_Lambda_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_Lambda_V_data_V);
                end_Lambda_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_Lambda_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_Lambda_V_data_V == 0) begin
                if ((Lambda_TREADY & Lambda_TVALID) == 1) begin
                    if (size_Lambda_V_data_V > 0) begin
                        size_Lambda_V_data_V = size_Lambda_V_data_V - 1;
                        while (size_Lambda_V_data_V == 0 && end_Lambda_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_Lambda_V_data_V = ap_c_n_tvin_trans_num_Lambda_V_data_V + 1;
                            read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_Lambda_V_data_V == "[[transaction]]") begin
                                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be transaction number
                                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_Lambda_V_data_V, "%d", size_Lambda_V_data_V);
                                if (size_Lambda_V_data_V > 0) begin
                                    size_Lambda_V_data_V_backup = size_Lambda_V_data_V;
                                end
                                read_token(fp_Lambda_V_data_V, token_Lambda_V_data_V); // should be [[/transaction]]
                            end else if (token_Lambda_V_data_V == "[[[/runtime]]]") begin
                                size_Lambda_V_data_V = size_Lambda_V_data_V_backup;
                                $fclose(fp_Lambda_V_data_V);
                                end_Lambda_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_Lambda_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((Lambda_TREADY & Lambda_TVALID) == 1) begin
                    if (size_Lambda_V_data_V > 0) begin
                        size_Lambda_V_data_V = size_Lambda_V_data_V - 1;
                        if (size_Lambda_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_Lambda_V_data_V = ap_c_n_tvin_trans_num_Lambda_V_data_V + 1;
                            size_Lambda_V_data_V = size_Lambda_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_scores;

initial begin : dump_tvout_runtime_sign_scores
    integer fp;
    dump_tvout_finish_scores = 0;
    fp = $fopen(`AUTOTB_TVOUT_scores_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_scores_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_scores_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_scores_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_scores = 1;
end


reg dump_tvout_finish_ready_r;

initial begin : dump_tvout_runtime_sign_ready_r
    integer fp;
    dump_tvout_finish_ready_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_ready_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ready_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ready_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ready_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_ready_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(AESL_reset),
    .all_finish(all_finish),
    .clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
