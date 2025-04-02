// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      vec_vec_op_streaming
`define AUTOTB_DUT_INST AESL_inst_vec_vec_op_streaming
`define AUTOTB_TOP      apatb_vec_vec_op_streaming_top
`define AUTOTB_LAT_RESULT_FILE "vec_vec_op_streaming.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "vec_vec_op_streaming.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_vec_vec_op_streaming_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_op 1
`define AESL_DEPTH_vec1_V_data_V 1
`define AESL_DEPTH_vec1_V_keep_V 1
`define AESL_DEPTH_vec1_V_strb_V 1
`define AESL_DEPTH_vec1_V_user_V 1
`define AESL_DEPTH_vec1_V_last_V 1
`define AESL_DEPTH_vec1_V_id_V 1
`define AESL_DEPTH_vec1_V_dest_V 1
`define AESL_DEPTH_vec2_V_data_V 1
`define AESL_DEPTH_vec2_V_keep_V 1
`define AESL_DEPTH_vec2_V_strb_V 1
`define AESL_DEPTH_vec2_V_user_V 1
`define AESL_DEPTH_vec2_V_last_V 1
`define AESL_DEPTH_vec2_V_id_V 1
`define AESL_DEPTH_vec2_V_dest_V 1
`define AESL_DEPTH_vec_out_V_data_V 1
`define AESL_DEPTH_vec_out_V_keep_V 1
`define AESL_DEPTH_vec_out_V_strb_V 1
`define AESL_DEPTH_vec_out_V_user_V 1
`define AESL_DEPTH_vec_out_V_last_V 1
`define AESL_DEPTH_vec_out_V_id_V 1
`define AESL_DEPTH_vec_out_V_dest_V 1
`define AUTOTB_TVIN_op  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_op.dat"
`define AUTOTB_TVIN_vec1_V_data_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_data_V.dat"
`define AUTOTB_TVIN_vec1_V_keep_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_keep_V.dat"
`define AUTOTB_TVIN_vec1_V_strb_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_strb_V.dat"
`define AUTOTB_TVIN_vec1_V_user_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_user_V.dat"
`define AUTOTB_TVIN_vec1_V_last_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_last_V.dat"
`define AUTOTB_TVIN_vec1_V_id_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_id_V.dat"
`define AUTOTB_TVIN_vec1_V_dest_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_dest_V.dat"
`define AUTOTB_TVIN_vec2_V_data_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_data_V.dat"
`define AUTOTB_TVIN_vec2_V_keep_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_keep_V.dat"
`define AUTOTB_TVIN_vec2_V_strb_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_strb_V.dat"
`define AUTOTB_TVIN_vec2_V_user_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_user_V.dat"
`define AUTOTB_TVIN_vec2_V_last_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_last_V.dat"
`define AUTOTB_TVIN_vec2_V_id_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_id_V.dat"
`define AUTOTB_TVIN_vec2_V_dest_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_dest_V.dat"
`define AUTOTB_TVIN_vec_out_V_data_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_data_V.dat"
`define AUTOTB_TVIN_vec_out_V_keep_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_keep_V.dat"
`define AUTOTB_TVIN_vec_out_V_strb_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_strb_V.dat"
`define AUTOTB_TVIN_vec_out_V_user_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_user_V.dat"
`define AUTOTB_TVIN_vec_out_V_last_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_last_V.dat"
`define AUTOTB_TVIN_vec_out_V_id_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_id_V.dat"
`define AUTOTB_TVIN_vec_out_V_dest_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec_out_V_dest_V.dat"
`define AUTOTB_TVIN_op_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_op.dat"
`define AUTOTB_TVIN_vec1_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_data_V.dat"
`define AUTOTB_TVIN_vec1_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_keep_V.dat"
`define AUTOTB_TVIN_vec1_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_strb_V.dat"
`define AUTOTB_TVIN_vec1_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_user_V.dat"
`define AUTOTB_TVIN_vec1_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_last_V.dat"
`define AUTOTB_TVIN_vec1_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_id_V.dat"
`define AUTOTB_TVIN_vec1_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec1_V_dest_V.dat"
`define AUTOTB_TVIN_vec2_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_data_V.dat"
`define AUTOTB_TVIN_vec2_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_keep_V.dat"
`define AUTOTB_TVIN_vec2_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_strb_V.dat"
`define AUTOTB_TVIN_vec2_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_user_V.dat"
`define AUTOTB_TVIN_vec2_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_last_V.dat"
`define AUTOTB_TVIN_vec2_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_id_V.dat"
`define AUTOTB_TVIN_vec2_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec2_V_dest_V.dat"
`define AUTOTB_TVIN_vec_out_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_data_V.dat"
`define AUTOTB_TVIN_vec_out_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_keep_V.dat"
`define AUTOTB_TVIN_vec_out_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_strb_V.dat"
`define AUTOTB_TVIN_vec_out_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_user_V.dat"
`define AUTOTB_TVIN_vec_out_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_last_V.dat"
`define AUTOTB_TVIN_vec_out_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_id_V.dat"
`define AUTOTB_TVIN_vec_out_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvin_vec_out_V_dest_V.dat"
`define AUTOTB_TVOUT_vec_out_V_data_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_data_V.dat"
`define AUTOTB_TVOUT_vec_out_V_keep_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_keep_V.dat"
`define AUTOTB_TVOUT_vec_out_V_strb_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_strb_V.dat"
`define AUTOTB_TVOUT_vec_out_V_user_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_user_V.dat"
`define AUTOTB_TVOUT_vec_out_V_last_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_last_V.dat"
`define AUTOTB_TVOUT_vec_out_V_id_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_id_V.dat"
`define AUTOTB_TVOUT_vec_out_V_dest_V  "../tv/cdatafile/c.vec_vec_op_streaming.autotvout_vec_out_V_dest_V.dat"
`define AUTOTB_TVOUT_vec_out_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_data_V.dat"
`define AUTOTB_TVOUT_vec_out_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_keep_V.dat"
`define AUTOTB_TVOUT_vec_out_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_strb_V.dat"
`define AUTOTB_TVOUT_vec_out_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_user_V.dat"
`define AUTOTB_TVOUT_vec_out_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_last_V.dat"
`define AUTOTB_TVOUT_vec_out_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_id_V.dat"
`define AUTOTB_TVOUT_vec_out_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.vec_vec_op_streaming.autotvout_vec_out_V_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 12;
parameter LENGTH_op = 1;
parameter LENGTH_vec1_V_data_V = 8;
parameter LENGTH_vec1_V_keep_V = 8;
parameter LENGTH_vec1_V_strb_V = 8;
parameter LENGTH_vec1_V_user_V = 8;
parameter LENGTH_vec1_V_last_V = 8;
parameter LENGTH_vec1_V_id_V = 8;
parameter LENGTH_vec1_V_dest_V = 8;
parameter LENGTH_vec2_V_data_V = 0;
parameter LENGTH_vec2_V_keep_V = 0;
parameter LENGTH_vec2_V_strb_V = 0;
parameter LENGTH_vec2_V_user_V = 0;
parameter LENGTH_vec2_V_last_V = 0;
parameter LENGTH_vec2_V_id_V = 0;
parameter LENGTH_vec2_V_dest_V = 0;
parameter LENGTH_vec_out_V_data_V = 8;
parameter LENGTH_vec_out_V_keep_V = 8;
parameter LENGTH_vec_out_V_strb_V = 8;
parameter LENGTH_vec_out_V_user_V = 8;
parameter LENGTH_vec_out_V_last_V = 8;
parameter LENGTH_vec_out_V_id_V = 8;
parameter LENGTH_vec_out_V_dest_V = 8;

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
wire [4 : 0] BUS_A_AWADDR;
wire  BUS_A_AWVALID;
wire  BUS_A_AWREADY;
wire  BUS_A_WVALID;
wire  BUS_A_WREADY;
wire [31 : 0] BUS_A_WDATA;
wire [3 : 0] BUS_A_WSTRB;
wire [4 : 0] BUS_A_ARADDR;
wire  BUS_A_ARVALID;
wire  BUS_A_ARREADY;
wire  BUS_A_RVALID;
wire  BUS_A_RREADY;
wire [31 : 0] BUS_A_RDATA;
wire [1 : 0] BUS_A_RRESP;
wire  BUS_A_BVALID;
wire  BUS_A_BREADY;
wire [1 : 0] BUS_A_BRESP;
wire  BUS_A_INTERRUPT;
wire [127 : 0] vec1_TDATA;
wire  vec1_TVALID;
wire  vec1_TREADY;
wire [15 : 0] vec1_TKEEP;
wire [15 : 0] vec1_TSTRB;
wire [1 : 0] vec1_TUSER;
wire [0 : 0] vec1_TLAST;
wire [4 : 0] vec1_TID;
wire [5 : 0] vec1_TDEST;
wire [127 : 0] vec2_TDATA;
wire  vec2_TVALID;
wire  vec2_TREADY;
wire [15 : 0] vec2_TKEEP;
wire [15 : 0] vec2_TSTRB;
wire [1 : 0] vec2_TUSER;
wire [0 : 0] vec2_TLAST;
wire [4 : 0] vec2_TID;
wire [5 : 0] vec2_TDEST;
wire [127 : 0] vec_out_TDATA;
wire  vec_out_TVALID;
wire  vec_out_TREADY;
wire [15 : 0] vec_out_TKEEP;
wire [15 : 0] vec_out_TSTRB;
wire [1 : 0] vec_out_TUSER;
wire [0 : 0] vec_out_TLAST;
wire [4 : 0] vec_out_TID;
wire [5 : 0] vec_out_TDEST;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire BUS_A_write_data_finish;
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
    .s_axi_BUS_A_AWADDR(BUS_A_AWADDR),
    .s_axi_BUS_A_AWVALID(BUS_A_AWVALID),
    .s_axi_BUS_A_AWREADY(BUS_A_AWREADY),
    .s_axi_BUS_A_WVALID(BUS_A_WVALID),
    .s_axi_BUS_A_WREADY(BUS_A_WREADY),
    .s_axi_BUS_A_WDATA(BUS_A_WDATA),
    .s_axi_BUS_A_WSTRB(BUS_A_WSTRB),
    .s_axi_BUS_A_ARADDR(BUS_A_ARADDR),
    .s_axi_BUS_A_ARVALID(BUS_A_ARVALID),
    .s_axi_BUS_A_ARREADY(BUS_A_ARREADY),
    .s_axi_BUS_A_RVALID(BUS_A_RVALID),
    .s_axi_BUS_A_RREADY(BUS_A_RREADY),
    .s_axi_BUS_A_RDATA(BUS_A_RDATA),
    .s_axi_BUS_A_RRESP(BUS_A_RRESP),
    .s_axi_BUS_A_BVALID(BUS_A_BVALID),
    .s_axi_BUS_A_BREADY(BUS_A_BREADY),
    .s_axi_BUS_A_BRESP(BUS_A_BRESP),
    .interrupt(BUS_A_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .vec1_TDATA(vec1_TDATA),
    .vec1_TVALID(vec1_TVALID),
    .vec1_TREADY(vec1_TREADY),
    .vec1_TKEEP(vec1_TKEEP),
    .vec1_TSTRB(vec1_TSTRB),
    .vec1_TUSER(vec1_TUSER),
    .vec1_TLAST(vec1_TLAST),
    .vec1_TID(vec1_TID),
    .vec1_TDEST(vec1_TDEST),
    .vec2_TDATA(vec2_TDATA),
    .vec2_TVALID(vec2_TVALID),
    .vec2_TREADY(vec2_TREADY),
    .vec2_TKEEP(vec2_TKEEP),
    .vec2_TSTRB(vec2_TSTRB),
    .vec2_TUSER(vec2_TUSER),
    .vec2_TLAST(vec2_TLAST),
    .vec2_TID(vec2_TID),
    .vec2_TDEST(vec2_TDEST),
    .vec_out_TDATA(vec_out_TDATA),
    .vec_out_TVALID(vec_out_TVALID),
    .vec_out_TREADY(vec_out_TREADY),
    .vec_out_TKEEP(vec_out_TKEEP),
    .vec_out_TSTRB(vec_out_TSTRB),
    .vec_out_TUSER(vec_out_TUSER),
    .vec_out_TLAST(vec_out_TLAST),
    .vec_out_TID(vec_out_TID),
    .vec_out_TDEST(vec_out_TDEST));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & BUS_A_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

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






















reg [31:0] ap_c_n_tvin_trans_num_vec1_V_data_V;

reg vec1_ready_reg; // for self-sync

wire vec1_ready;
wire vec1_done;
wire [31:0] vec1_transaction;
wire axi_s_vec1_TVALID;
wire axi_s_vec1_TREADY;

AESL_axi_s_vec1 AESL_AXI_S_vec1(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_vec1_TDATA(vec1_TDATA),
    .TRAN_vec1_TKEEP(vec1_TKEEP),
    .TRAN_vec1_TSTRB(vec1_TSTRB),
    .TRAN_vec1_TUSER(vec1_TUSER),
    .TRAN_vec1_TLAST(vec1_TLAST),
    .TRAN_vec1_TID(vec1_TID),
    .TRAN_vec1_TDEST(vec1_TDEST),
    .TRAN_vec1_TVALID(axi_s_vec1_TVALID),
    .TRAN_vec1_TREADY(axi_s_vec1_TREADY),
    .ready(vec1_ready),
    .done(vec1_done),
    .transaction(vec1_transaction));

assign vec1_ready = vec1_ready_reg | ready_initial;
assign vec1_done = 0;

assign vec1_TVALID = axi_s_vec1_TVALID;

assign axi_s_vec1_TREADY = vec1_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_vec2_V_data_V;

reg vec2_ready_reg; // for self-sync

wire vec2_ready;
wire vec2_done;
wire [31:0] vec2_transaction;
wire axi_s_vec2_TVALID;
wire axi_s_vec2_TREADY;

AESL_axi_s_vec2 AESL_AXI_S_vec2(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_vec2_TDATA(vec2_TDATA),
    .TRAN_vec2_TKEEP(vec2_TKEEP),
    .TRAN_vec2_TSTRB(vec2_TSTRB),
    .TRAN_vec2_TUSER(vec2_TUSER),
    .TRAN_vec2_TLAST(vec2_TLAST),
    .TRAN_vec2_TID(vec2_TID),
    .TRAN_vec2_TDEST(vec2_TDEST),
    .TRAN_vec2_TVALID(axi_s_vec2_TVALID),
    .TRAN_vec2_TREADY(axi_s_vec2_TREADY),
    .ready(vec2_ready),
    .done(vec2_done),
    .transaction(vec2_transaction));

assign vec2_ready = vec2_ready_reg | ready_initial;
assign vec2_done = 0;

assign vec2_TVALID = axi_s_vec2_TVALID;

assign axi_s_vec2_TREADY = vec2_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_vec_out_V_data_V;

reg vec_out_ready_reg; // for self-sync

wire vec_out_ready;
wire vec_out_done;
wire [31:0] vec_out_transaction;
wire axi_s_vec_out_TVALID;
wire axi_s_vec_out_TREADY;

AESL_axi_s_vec_out AESL_AXI_S_vec_out(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_vec_out_TDATA(vec_out_TDATA),
    .TRAN_vec_out_TKEEP(vec_out_TKEEP),
    .TRAN_vec_out_TSTRB(vec_out_TSTRB),
    .TRAN_vec_out_TUSER(vec_out_TUSER),
    .TRAN_vec_out_TLAST(vec_out_TLAST),
    .TRAN_vec_out_TID(vec_out_TID),
    .TRAN_vec_out_TDEST(vec_out_TDEST),
    .TRAN_vec_out_TVALID(axi_s_vec_out_TVALID),
    .TRAN_vec_out_TREADY(axi_s_vec_out_TREADY),
    .ready(vec_out_ready),
    .done(vec_out_done),
    .transaction(vec_out_transaction));

assign vec_out_ready = 0;
assign vec_out_done = AESL_done;

assign axi_s_vec_out_TVALID = vec_out_TVALID;

reg reg_vec_out_TREADY;
initial begin : gen_reg_vec_out_TREADY_process
    integer proc_rand;
    reg_vec_out_TREADY = axi_s_vec_out_TREADY;
    while(1)
    begin
        @(axi_s_vec_out_TREADY);
        reg_vec_out_TREADY = axi_s_vec_out_TREADY;
    end
end


assign vec_out_TREADY = reg_vec_out_TREADY;

AESL_axi_slave_BUS_A AESL_AXI_SLAVE_BUS_A(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_BUS_A_AWADDR (BUS_A_AWADDR),
    .TRAN_s_axi_BUS_A_AWVALID (BUS_A_AWVALID),
    .TRAN_s_axi_BUS_A_AWREADY (BUS_A_AWREADY),
    .TRAN_s_axi_BUS_A_WVALID (BUS_A_WVALID),
    .TRAN_s_axi_BUS_A_WREADY (BUS_A_WREADY),
    .TRAN_s_axi_BUS_A_WDATA (BUS_A_WDATA),
    .TRAN_s_axi_BUS_A_WSTRB (BUS_A_WSTRB),
    .TRAN_s_axi_BUS_A_ARADDR (BUS_A_ARADDR),
    .TRAN_s_axi_BUS_A_ARVALID (BUS_A_ARVALID),
    .TRAN_s_axi_BUS_A_ARREADY (BUS_A_ARREADY),
    .TRAN_s_axi_BUS_A_RVALID (BUS_A_RVALID),
    .TRAN_s_axi_BUS_A_RREADY (BUS_A_RREADY),
    .TRAN_s_axi_BUS_A_RDATA (BUS_A_RDATA),
    .TRAN_s_axi_BUS_A_RRESP (BUS_A_RRESP),
    .TRAN_s_axi_BUS_A_BVALID (BUS_A_BVALID),
    .TRAN_s_axi_BUS_A_BREADY (BUS_A_BREADY),
    .TRAN_s_axi_BUS_A_BRESP (BUS_A_BRESP),
    .TRAN_BUS_A_interrupt (BUS_A_INTERRUPT),
    .TRAN_BUS_A_write_data_finish(BUS_A_write_data_finish),
    .TRAN_BUS_A_ready_out (AESL_ready),
    .TRAN_BUS_A_ready_in (AESL_slave_ready),
    .TRAN_BUS_A_done_out (AESL_slave_output_done),
    .TRAN_BUS_A_idle_out (AESL_idle),
    .TRAN_BUS_A_write_start_in     (AESL_slave_write_start_in),
    .TRAN_BUS_A_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_BUS_A_transaction_done_in (AESL_done_delay),
    .TRAN_BUS_A_start_in  (AESL_slave_start)
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


reg end_op;
reg [31:0] size_op;
reg [31:0] size_op_backup;
reg end_vec1_V_data_V;
reg [31:0] size_vec1_V_data_V;
reg [31:0] size_vec1_V_data_V_backup;
reg end_vec1_V_keep_V;
reg [31:0] size_vec1_V_keep_V;
reg [31:0] size_vec1_V_keep_V_backup;
reg end_vec1_V_strb_V;
reg [31:0] size_vec1_V_strb_V;
reg [31:0] size_vec1_V_strb_V_backup;
reg end_vec1_V_user_V;
reg [31:0] size_vec1_V_user_V;
reg [31:0] size_vec1_V_user_V_backup;
reg end_vec1_V_last_V;
reg [31:0] size_vec1_V_last_V;
reg [31:0] size_vec1_V_last_V_backup;
reg end_vec1_V_id_V;
reg [31:0] size_vec1_V_id_V;
reg [31:0] size_vec1_V_id_V_backup;
reg end_vec1_V_dest_V;
reg [31:0] size_vec1_V_dest_V;
reg [31:0] size_vec1_V_dest_V_backup;
reg end_vec2_V_data_V;
reg [31:0] size_vec2_V_data_V;
reg [31:0] size_vec2_V_data_V_backup;
reg end_vec2_V_keep_V;
reg [31:0] size_vec2_V_keep_V;
reg [31:0] size_vec2_V_keep_V_backup;
reg end_vec2_V_strb_V;
reg [31:0] size_vec2_V_strb_V;
reg [31:0] size_vec2_V_strb_V_backup;
reg end_vec2_V_user_V;
reg [31:0] size_vec2_V_user_V;
reg [31:0] size_vec2_V_user_V_backup;
reg end_vec2_V_last_V;
reg [31:0] size_vec2_V_last_V;
reg [31:0] size_vec2_V_last_V_backup;
reg end_vec2_V_id_V;
reg [31:0] size_vec2_V_id_V;
reg [31:0] size_vec2_V_id_V_backup;
reg end_vec2_V_dest_V;
reg [31:0] size_vec2_V_dest_V;
reg [31:0] size_vec2_V_dest_V_backup;
reg end_vec_out_V_data_V;
reg [31:0] size_vec_out_V_data_V;
reg [31:0] size_vec_out_V_data_V_backup;
reg end_vec_out_V_keep_V;
reg [31:0] size_vec_out_V_keep_V;
reg [31:0] size_vec_out_V_keep_V_backup;
reg end_vec_out_V_strb_V;
reg [31:0] size_vec_out_V_strb_V;
reg [31:0] size_vec_out_V_strb_V_backup;
reg end_vec_out_V_user_V;
reg [31:0] size_vec_out_V_user_V;
reg [31:0] size_vec_out_V_user_V_backup;
reg end_vec_out_V_last_V;
reg [31:0] size_vec_out_V_last_V;
reg [31:0] size_vec_out_V_last_V_backup;
reg end_vec_out_V_id_V;
reg [31:0] size_vec_out_V_id_V;
reg [31:0] size_vec_out_V_id_V_backup;
reg end_vec_out_V_dest_V;
reg [31:0] size_vec_out_V_dest_V;
reg [31:0] size_vec_out_V_dest_V_backup;

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
    
    initial begin : proc_gen_axis_internal_ready_vec1
        vec1_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_vec1_V_data_V or vec1_transaction);
            if (ap_c_n_tvin_trans_num_vec1_V_data_V > vec1_transaction) begin
                vec1_ready_reg = 1;
            end else begin
                vec1_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_vec2
        vec2_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_vec2_V_data_V or vec2_transaction);
            if (ap_c_n_tvin_trans_num_vec2_V_data_V > vec2_transaction) begin
                vec2_ready_reg = 1;
            end else begin
                vec2_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_vec1_V_data_V "../tv/stream_size/stream_size_in_vec1_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_vec1_V_data_V
        integer fp_vec1_V_data_V;
        reg [127:0] token_vec1_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_vec1_V_data_V = 0;
        end_vec1_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_vec1_V_data_V = $fopen(`STREAM_SIZE_IN_vec1_V_data_V, "r");
        if(fp_vec1_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_vec1_V_data_V);
            $finish;
        end
        read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be [[[runtime]]]
        if (token_vec1_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_vec1_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_vec1_V_data_V = 0;
        size_vec1_V_data_V_backup = 0;
        while (size_vec1_V_data_V == 0 && end_vec1_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_vec1_V_data_V = ap_c_n_tvin_trans_num_vec1_V_data_V + 1;
            read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_vec1_V_data_V == "[[transaction]]") begin
                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be transaction number
                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_vec1_V_data_V, "%d", size_vec1_V_data_V);
                if (size_vec1_V_data_V > 0) begin
                    size_vec1_V_data_V_backup = size_vec1_V_data_V;
                end
                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be [[/transaction]]
            end else if (token_vec1_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_vec1_V_data_V);
                end_vec1_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_vec1_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_vec1_V_data_V == 0) begin
                if ((vec1_TREADY & vec1_TVALID) == 1) begin
                    if (size_vec1_V_data_V > 0) begin
                        size_vec1_V_data_V = size_vec1_V_data_V - 1;
                        while (size_vec1_V_data_V == 0 && end_vec1_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_vec1_V_data_V = ap_c_n_tvin_trans_num_vec1_V_data_V + 1;
                            read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_vec1_V_data_V == "[[transaction]]") begin
                                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be transaction number
                                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_vec1_V_data_V, "%d", size_vec1_V_data_V);
                                if (size_vec1_V_data_V > 0) begin
                                    size_vec1_V_data_V_backup = size_vec1_V_data_V;
                                end
                                read_token(fp_vec1_V_data_V, token_vec1_V_data_V); // should be [[/transaction]]
                            end else if (token_vec1_V_data_V == "[[[/runtime]]]") begin
                                size_vec1_V_data_V = size_vec1_V_data_V_backup;
                                $fclose(fp_vec1_V_data_V);
                                end_vec1_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_vec1_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((vec1_TREADY & vec1_TVALID) == 1) begin
                    if (size_vec1_V_data_V > 0) begin
                        size_vec1_V_data_V = size_vec1_V_data_V - 1;
                        if (size_vec1_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_vec1_V_data_V = ap_c_n_tvin_trans_num_vec1_V_data_V + 1;
                            size_vec1_V_data_V = size_vec1_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_vec2_V_data_V "../tv/stream_size/stream_size_in_vec2_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_vec2_V_data_V
        integer fp_vec2_V_data_V;
        reg [127:0] token_vec2_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_vec2_V_data_V = 0;
        end_vec2_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_vec2_V_data_V = $fopen(`STREAM_SIZE_IN_vec2_V_data_V, "r");
        if(fp_vec2_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_vec2_V_data_V);
            $finish;
        end
        read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be [[[runtime]]]
        if (token_vec2_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_vec2_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_vec2_V_data_V = 0;
        size_vec2_V_data_V_backup = 0;
        while (size_vec2_V_data_V == 0 && end_vec2_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_vec2_V_data_V = ap_c_n_tvin_trans_num_vec2_V_data_V + 1;
            read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_vec2_V_data_V == "[[transaction]]") begin
                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be transaction number
                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_vec2_V_data_V, "%d", size_vec2_V_data_V);
                if (size_vec2_V_data_V > 0) begin
                    size_vec2_V_data_V_backup = size_vec2_V_data_V;
                end
                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be [[/transaction]]
            end else if (token_vec2_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_vec2_V_data_V);
                end_vec2_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_vec2_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_vec2_V_data_V == 0) begin
                if ((vec2_TREADY & vec2_TVALID) == 1) begin
                    if (size_vec2_V_data_V > 0) begin
                        size_vec2_V_data_V = size_vec2_V_data_V - 1;
                        while (size_vec2_V_data_V == 0 && end_vec2_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_vec2_V_data_V = ap_c_n_tvin_trans_num_vec2_V_data_V + 1;
                            read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_vec2_V_data_V == "[[transaction]]") begin
                                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be transaction number
                                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_vec2_V_data_V, "%d", size_vec2_V_data_V);
                                if (size_vec2_V_data_V > 0) begin
                                    size_vec2_V_data_V_backup = size_vec2_V_data_V;
                                end
                                read_token(fp_vec2_V_data_V, token_vec2_V_data_V); // should be [[/transaction]]
                            end else if (token_vec2_V_data_V == "[[[/runtime]]]") begin
                                size_vec2_V_data_V = size_vec2_V_data_V_backup;
                                $fclose(fp_vec2_V_data_V);
                                end_vec2_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_vec2_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((vec2_TREADY & vec2_TVALID) == 1) begin
                    if (size_vec2_V_data_V > 0) begin
                        size_vec2_V_data_V = size_vec2_V_data_V - 1;
                        if (size_vec2_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_vec2_V_data_V = ap_c_n_tvin_trans_num_vec2_V_data_V + 1;
                            size_vec2_V_data_V = size_vec2_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_vec_out_V_data_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_data_V
    integer fp;
    dump_tvout_finish_vec_out_V_data_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_data_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_data_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_data_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_data_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_data_V = 1;
end


reg dump_tvout_finish_vec_out_V_keep_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_keep_V
    integer fp;
    dump_tvout_finish_vec_out_V_keep_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_keep_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_keep_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_keep_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_keep_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_keep_V = 1;
end


reg dump_tvout_finish_vec_out_V_strb_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_strb_V
    integer fp;
    dump_tvout_finish_vec_out_V_strb_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_strb_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_strb_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_strb_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_strb_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_strb_V = 1;
end


reg dump_tvout_finish_vec_out_V_user_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_user_V
    integer fp;
    dump_tvout_finish_vec_out_V_user_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_user_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_user_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_user_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_user_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_user_V = 1;
end


reg dump_tvout_finish_vec_out_V_last_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_last_V
    integer fp;
    dump_tvout_finish_vec_out_V_last_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_last_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_last_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_last_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_last_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_last_V = 1;
end


reg dump_tvout_finish_vec_out_V_id_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_id_V
    integer fp;
    dump_tvout_finish_vec_out_V_id_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_id_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_id_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_id_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_id_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_id_V = 1;
end


reg dump_tvout_finish_vec_out_V_dest_V;

initial begin : dump_tvout_runtime_sign_vec_out_V_dest_V
    integer fp;
    dump_tvout_finish_vec_out_V_dest_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_dest_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_dest_V_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_vec_out_V_dest_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vec_out_V_dest_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vec_out_V_dest_V = 1;
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
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
