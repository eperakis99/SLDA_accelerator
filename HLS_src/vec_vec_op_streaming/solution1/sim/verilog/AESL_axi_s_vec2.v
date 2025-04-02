// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_vec2_TDATA "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_data_V.dat"
`define INGRESS_STATUS_vec2_TDATA "../tv/stream_size/stream_ingress_status_vec2_V_data_V.dat"
`define TV_IN_vec2_TKEEP "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_keep_V.dat"
`define INGRESS_STATUS_vec2_TKEEP "../tv/stream_size/stream_ingress_status_vec2_V_keep_V.dat"
`define TV_IN_vec2_TSTRB "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_strb_V.dat"
`define INGRESS_STATUS_vec2_TSTRB "../tv/stream_size/stream_ingress_status_vec2_V_strb_V.dat"
`define TV_IN_vec2_TUSER "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_user_V.dat"
`define INGRESS_STATUS_vec2_TUSER "../tv/stream_size/stream_ingress_status_vec2_V_user_V.dat"
`define TV_IN_vec2_TLAST "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_last_V.dat"
`define INGRESS_STATUS_vec2_TLAST "../tv/stream_size/stream_ingress_status_vec2_V_last_V.dat"
`define TV_IN_vec2_TID "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_id_V.dat"
`define INGRESS_STATUS_vec2_TID "../tv/stream_size/stream_ingress_status_vec2_V_id_V.dat"
`define TV_IN_vec2_TDEST "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec2_V_dest_V.dat"
`define INGRESS_STATUS_vec2_TDEST "../tv/stream_size/stream_ingress_status_vec2_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_vec2 (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_vec2_TDATA,
    output [16 - 1:0] TRAN_vec2_TKEEP,
    output [16 - 1:0] TRAN_vec2_TSTRB,
    output [2 - 1:0] TRAN_vec2_TUSER,
    output TRAN_vec2_TLAST,
    output [5 - 1:0] TRAN_vec2_TID,
    output [6 - 1:0] TRAN_vec2_TDEST,
    output TRAN_vec2_TVALID,
    input TRAN_vec2_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_vec2_TVALID_temp;
    wire vec2_TDATA_full;
    wire vec2_TDATA_empty;
    reg vec2_TDATA_write_en;
    reg [128 - 1:0] vec2_TDATA_write_data;
    reg vec2_TDATA_read_en;
    wire [128 - 1:0] vec2_TDATA_read_data;
    
    fifo #(0, 128) fifo_vec2_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TDATA_write_en),
        .write_data(vec2_TDATA_write_data),
        .read_clock(clk),
        .read_en(vec2_TDATA_read_en),
        .read_data(vec2_TDATA_read_data),
        .full(vec2_TDATA_full),
        .empty(vec2_TDATA_empty));
    
    always @ (*) begin
        vec2_TDATA_write_en <= 0;
        vec2_TDATA_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TDATA = vec2_TDATA_read_data;
    wire vec2_TKEEP_full;
    wire vec2_TKEEP_empty;
    reg vec2_TKEEP_write_en;
    reg [16 - 1:0] vec2_TKEEP_write_data;
    reg vec2_TKEEP_read_en;
    wire [16 - 1:0] vec2_TKEEP_read_data;
    
    fifo #(0, 16) fifo_vec2_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TKEEP_write_en),
        .write_data(vec2_TKEEP_write_data),
        .read_clock(clk),
        .read_en(vec2_TKEEP_read_en),
        .read_data(vec2_TKEEP_read_data),
        .full(vec2_TKEEP_full),
        .empty(vec2_TKEEP_empty));
    
    always @ (*) begin
        vec2_TKEEP_write_en <= 0;
        vec2_TKEEP_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TKEEP = vec2_TKEEP_read_data;
    wire vec2_TSTRB_full;
    wire vec2_TSTRB_empty;
    reg vec2_TSTRB_write_en;
    reg [16 - 1:0] vec2_TSTRB_write_data;
    reg vec2_TSTRB_read_en;
    wire [16 - 1:0] vec2_TSTRB_read_data;
    
    fifo #(0, 16) fifo_vec2_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TSTRB_write_en),
        .write_data(vec2_TSTRB_write_data),
        .read_clock(clk),
        .read_en(vec2_TSTRB_read_en),
        .read_data(vec2_TSTRB_read_data),
        .full(vec2_TSTRB_full),
        .empty(vec2_TSTRB_empty));
    
    always @ (*) begin
        vec2_TSTRB_write_en <= 0;
        vec2_TSTRB_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TSTRB = vec2_TSTRB_read_data;
    wire vec2_TUSER_full;
    wire vec2_TUSER_empty;
    reg vec2_TUSER_write_en;
    reg [2 - 1:0] vec2_TUSER_write_data;
    reg vec2_TUSER_read_en;
    wire [2 - 1:0] vec2_TUSER_read_data;
    
    fifo #(0, 2) fifo_vec2_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TUSER_write_en),
        .write_data(vec2_TUSER_write_data),
        .read_clock(clk),
        .read_en(vec2_TUSER_read_en),
        .read_data(vec2_TUSER_read_data),
        .full(vec2_TUSER_full),
        .empty(vec2_TUSER_empty));
    
    always @ (*) begin
        vec2_TUSER_write_en <= 0;
        vec2_TUSER_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TUSER = vec2_TUSER_read_data;
    wire vec2_TLAST_full;
    wire vec2_TLAST_empty;
    reg vec2_TLAST_write_en;
    reg [1 - 1:0] vec2_TLAST_write_data;
    reg vec2_TLAST_read_en;
    wire [1 - 1:0] vec2_TLAST_read_data;
    
    fifo #(0, 1) fifo_vec2_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TLAST_write_en),
        .write_data(vec2_TLAST_write_data),
        .read_clock(clk),
        .read_en(vec2_TLAST_read_en),
        .read_data(vec2_TLAST_read_data),
        .full(vec2_TLAST_full),
        .empty(vec2_TLAST_empty));
    
    always @ (*) begin
        vec2_TLAST_write_en <= 0;
        vec2_TLAST_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TLAST = vec2_TLAST_read_data;
    wire vec2_TID_full;
    wire vec2_TID_empty;
    reg vec2_TID_write_en;
    reg [5 - 1:0] vec2_TID_write_data;
    reg vec2_TID_read_en;
    wire [5 - 1:0] vec2_TID_read_data;
    
    fifo #(0, 5) fifo_vec2_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TID_write_en),
        .write_data(vec2_TID_write_data),
        .read_clock(clk),
        .read_en(vec2_TID_read_en),
        .read_data(vec2_TID_read_data),
        .full(vec2_TID_full),
        .empty(vec2_TID_empty));
    
    always @ (*) begin
        vec2_TID_write_en <= 0;
        vec2_TID_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TID = vec2_TID_read_data;
    wire vec2_TDEST_full;
    wire vec2_TDEST_empty;
    reg vec2_TDEST_write_en;
    reg [6 - 1:0] vec2_TDEST_write_data;
    reg vec2_TDEST_read_en;
    wire [6 - 1:0] vec2_TDEST_read_data;
    
    fifo #(0, 6) fifo_vec2_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec2_TDEST_write_en),
        .write_data(vec2_TDEST_write_data),
        .read_clock(clk),
        .read_en(vec2_TDEST_read_en),
        .read_data(vec2_TDEST_read_data),
        .full(vec2_TDEST_full),
        .empty(vec2_TDEST_empty));
    
    always @ (*) begin
        vec2_TDEST_write_en <= 0;
        vec2_TDEST_read_en <= TRAN_vec2_TREADY & TRAN_vec2_TVALID;
    end
    
    assign TRAN_vec2_TDEST = vec2_TDEST_read_data;
    assign TRAN_vec2_TVALID = TRAN_vec2_TVALID_temp;

    
    assign TRAN_vec2_TVALID_temp = 0;
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [279:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [279:0] rm_0x(input [279:0] token);
        reg [279:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction

endmodule
