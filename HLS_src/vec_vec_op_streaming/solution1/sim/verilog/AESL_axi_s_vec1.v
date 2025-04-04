// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_vec1_TDATA "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_data_V.dat"
`define INGRESS_STATUS_vec1_TDATA "../tv/stream_size/stream_ingress_status_vec1_V_data_V.dat"
`define TV_IN_vec1_TKEEP "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_keep_V.dat"
`define INGRESS_STATUS_vec1_TKEEP "../tv/stream_size/stream_ingress_status_vec1_V_keep_V.dat"
`define TV_IN_vec1_TSTRB "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_strb_V.dat"
`define INGRESS_STATUS_vec1_TSTRB "../tv/stream_size/stream_ingress_status_vec1_V_strb_V.dat"
`define TV_IN_vec1_TUSER "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_user_V.dat"
`define INGRESS_STATUS_vec1_TUSER "../tv/stream_size/stream_ingress_status_vec1_V_user_V.dat"
`define TV_IN_vec1_TLAST "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_last_V.dat"
`define INGRESS_STATUS_vec1_TLAST "../tv/stream_size/stream_ingress_status_vec1_V_last_V.dat"
`define TV_IN_vec1_TID "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_id_V.dat"
`define INGRESS_STATUS_vec1_TID "../tv/stream_size/stream_ingress_status_vec1_V_id_V.dat"
`define TV_IN_vec1_TDEST "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_vec1_V_dest_V.dat"
`define INGRESS_STATUS_vec1_TDEST "../tv/stream_size/stream_ingress_status_vec1_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_vec1 (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_vec1_TDATA,
    output [16 - 1:0] TRAN_vec1_TKEEP,
    output [16 - 1:0] TRAN_vec1_TSTRB,
    output [2 - 1:0] TRAN_vec1_TUSER,
    output TRAN_vec1_TLAST,
    output [5 - 1:0] TRAN_vec1_TID,
    output [6 - 1:0] TRAN_vec1_TDEST,
    output TRAN_vec1_TVALID,
    input TRAN_vec1_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_vec1_TVALID_temp;
    wire vec1_TDATA_full;
    wire vec1_TDATA_empty;
    reg vec1_TDATA_write_en;
    reg [128 - 1:0] vec1_TDATA_write_data;
    reg vec1_TDATA_read_en;
    wire [128 - 1:0] vec1_TDATA_read_data;
    
    fifo #(8, 128) fifo_vec1_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TDATA_write_en),
        .write_data(vec1_TDATA_write_data),
        .read_clock(clk),
        .read_en(vec1_TDATA_read_en),
        .read_data(vec1_TDATA_read_data),
        .full(vec1_TDATA_full),
        .empty(vec1_TDATA_empty));
    
    always @ (*) begin
        vec1_TDATA_write_en <= 0;
        vec1_TDATA_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TDATA = vec1_TDATA_read_data;
    wire vec1_TKEEP_full;
    wire vec1_TKEEP_empty;
    reg vec1_TKEEP_write_en;
    reg [16 - 1:0] vec1_TKEEP_write_data;
    reg vec1_TKEEP_read_en;
    wire [16 - 1:0] vec1_TKEEP_read_data;
    
    fifo #(8, 16) fifo_vec1_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TKEEP_write_en),
        .write_data(vec1_TKEEP_write_data),
        .read_clock(clk),
        .read_en(vec1_TKEEP_read_en),
        .read_data(vec1_TKEEP_read_data),
        .full(vec1_TKEEP_full),
        .empty(vec1_TKEEP_empty));
    
    always @ (*) begin
        vec1_TKEEP_write_en <= 0;
        vec1_TKEEP_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TKEEP = vec1_TKEEP_read_data;
    wire vec1_TSTRB_full;
    wire vec1_TSTRB_empty;
    reg vec1_TSTRB_write_en;
    reg [16 - 1:0] vec1_TSTRB_write_data;
    reg vec1_TSTRB_read_en;
    wire [16 - 1:0] vec1_TSTRB_read_data;
    
    fifo #(8, 16) fifo_vec1_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TSTRB_write_en),
        .write_data(vec1_TSTRB_write_data),
        .read_clock(clk),
        .read_en(vec1_TSTRB_read_en),
        .read_data(vec1_TSTRB_read_data),
        .full(vec1_TSTRB_full),
        .empty(vec1_TSTRB_empty));
    
    always @ (*) begin
        vec1_TSTRB_write_en <= 0;
        vec1_TSTRB_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TSTRB = vec1_TSTRB_read_data;
    wire vec1_TUSER_full;
    wire vec1_TUSER_empty;
    reg vec1_TUSER_write_en;
    reg [2 - 1:0] vec1_TUSER_write_data;
    reg vec1_TUSER_read_en;
    wire [2 - 1:0] vec1_TUSER_read_data;
    
    fifo #(8, 2) fifo_vec1_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TUSER_write_en),
        .write_data(vec1_TUSER_write_data),
        .read_clock(clk),
        .read_en(vec1_TUSER_read_en),
        .read_data(vec1_TUSER_read_data),
        .full(vec1_TUSER_full),
        .empty(vec1_TUSER_empty));
    
    always @ (*) begin
        vec1_TUSER_write_en <= 0;
        vec1_TUSER_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TUSER = vec1_TUSER_read_data;
    wire vec1_TLAST_full;
    wire vec1_TLAST_empty;
    reg vec1_TLAST_write_en;
    reg [1 - 1:0] vec1_TLAST_write_data;
    reg vec1_TLAST_read_en;
    wire [1 - 1:0] vec1_TLAST_read_data;
    
    fifo #(8, 1) fifo_vec1_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TLAST_write_en),
        .write_data(vec1_TLAST_write_data),
        .read_clock(clk),
        .read_en(vec1_TLAST_read_en),
        .read_data(vec1_TLAST_read_data),
        .full(vec1_TLAST_full),
        .empty(vec1_TLAST_empty));
    
    always @ (*) begin
        vec1_TLAST_write_en <= 0;
        vec1_TLAST_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TLAST = vec1_TLAST_read_data;
    wire vec1_TID_full;
    wire vec1_TID_empty;
    reg vec1_TID_write_en;
    reg [5 - 1:0] vec1_TID_write_data;
    reg vec1_TID_read_en;
    wire [5 - 1:0] vec1_TID_read_data;
    
    fifo #(8, 5) fifo_vec1_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TID_write_en),
        .write_data(vec1_TID_write_data),
        .read_clock(clk),
        .read_en(vec1_TID_read_en),
        .read_data(vec1_TID_read_data),
        .full(vec1_TID_full),
        .empty(vec1_TID_empty));
    
    always @ (*) begin
        vec1_TID_write_en <= 0;
        vec1_TID_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TID = vec1_TID_read_data;
    wire vec1_TDEST_full;
    wire vec1_TDEST_empty;
    reg vec1_TDEST_write_en;
    reg [6 - 1:0] vec1_TDEST_write_data;
    reg vec1_TDEST_read_en;
    wire [6 - 1:0] vec1_TDEST_read_data;
    
    fifo #(8, 6) fifo_vec1_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(vec1_TDEST_write_en),
        .write_data(vec1_TDEST_write_data),
        .read_clock(clk),
        .read_en(vec1_TDEST_read_en),
        .read_data(vec1_TDEST_read_data),
        .full(vec1_TDEST_full),
        .empty(vec1_TDEST_empty));
    
    always @ (*) begin
        vec1_TDEST_write_en <= 0;
        vec1_TDEST_read_en <= TRAN_vec1_TREADY & TRAN_vec1_TVALID;
    end
    
    assign TRAN_vec1_TDEST = vec1_TDEST_read_data;
    assign TRAN_vec1_TVALID = TRAN_vec1_TVALID_temp;

    
    reg vec1_TDATA_valid = 0; // ingress buffer indicator: vec1_TDATA
    reg vec1_TKEEP_valid = 0; // ingress buffer indicator: vec1_TKEEP
    reg vec1_TSTRB_valid = 0; // ingress buffer indicator: vec1_TSTRB
    reg vec1_TUSER_valid = 0; // ingress buffer indicator: vec1_TUSER
    reg vec1_TLAST_valid = 0; // ingress buffer indicator: vec1_TLAST
    reg vec1_TID_valid = 0; // ingress buffer indicator: vec1_TID
    reg vec1_TDEST_valid = 0; // ingress buffer indicator: vec1_TDEST
    
    assign TRAN_vec1_TVALID_temp = ~(vec1_TDATA_empty || vec1_TKEEP_empty || vec1_TSTRB_empty || vec1_TUSER_empty || vec1_TLAST_empty || vec1_TID_empty || vec1_TDEST_empty) || (vec1_TDATA_valid && vec1_TKEEP_valid && vec1_TSTRB_valid && vec1_TUSER_valid && vec1_TLAST_valid && vec1_TID_valid && vec1_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_vec1_TDATA;
    
    assign transaction = transaction_load_vec1_TDATA;
    
    initial begin : AXI_stream_driver_vec1_TDATA
        integer fp;
        reg [279:0] token;
        reg [128 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TDATA = 0;
        fifo_vec1_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TDATA = transaction_load_vec1_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TKEEP;
    
    initial begin : AXI_stream_driver_vec1_TKEEP
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TKEEP = 0;
        fifo_vec1_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TKEEP = transaction_load_vec1_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TSTRB;
    
    initial begin : AXI_stream_driver_vec1_TSTRB
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TSTRB = 0;
        fifo_vec1_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TSTRB = transaction_load_vec1_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TUSER;
    
    initial begin : AXI_stream_driver_vec1_TUSER
        integer fp;
        reg [279:0] token;
        reg [2 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TUSER = 0;
        fifo_vec1_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TUSER = transaction_load_vec1_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TLAST;
    
    initial begin : AXI_stream_driver_vec1_TLAST
        integer fp;
        reg [279:0] token;
        reg [1 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TLAST = 0;
        fifo_vec1_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TLAST = transaction_load_vec1_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TID;
    
    initial begin : AXI_stream_driver_vec1_TID
        integer fp;
        reg [279:0] token;
        reg [5 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TID = 0;
        fifo_vec1_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TID = transaction_load_vec1_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_vec1_TDEST;
    
    initial begin : AXI_stream_driver_vec1_TDEST
        integer fp;
        reg [279:0] token;
        reg [6 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_vec1_TDEST = 0;
        fifo_vec1_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_vec1_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_vec1_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_vec1_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_vec1_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_vec1_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_vec1_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_vec1_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    vec1_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_vec1_TDEST = transaction_load_vec1_TDEST + 1;
            end
        end
    end

endmodule
