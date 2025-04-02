// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_feature_vector_TDATA "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat"
`define INGRESS_STATUS_feature_vector_TDATA "../tv/stream_size/stream_ingress_status_feature_vector_V_data_V.dat"
`define TV_IN_feature_vector_TKEEP "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat"
`define INGRESS_STATUS_feature_vector_TKEEP "../tv/stream_size/stream_ingress_status_feature_vector_V_keep_V.dat"
`define TV_IN_feature_vector_TSTRB "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat"
`define INGRESS_STATUS_feature_vector_TSTRB "../tv/stream_size/stream_ingress_status_feature_vector_V_strb_V.dat"
`define TV_IN_feature_vector_TUSER "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat"
`define INGRESS_STATUS_feature_vector_TUSER "../tv/stream_size/stream_ingress_status_feature_vector_V_user_V.dat"
`define TV_IN_feature_vector_TLAST "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat"
`define INGRESS_STATUS_feature_vector_TLAST "../tv/stream_size/stream_ingress_status_feature_vector_V_last_V.dat"
`define TV_IN_feature_vector_TID "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat"
`define INGRESS_STATUS_feature_vector_TID "../tv/stream_size/stream_ingress_status_feature_vector_V_id_V.dat"
`define TV_IN_feature_vector_TDEST "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat"
`define INGRESS_STATUS_feature_vector_TDEST "../tv/stream_size/stream_ingress_status_feature_vector_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 2

module AESL_axi_s_feature_vector (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_feature_vector_TDATA,
    output [16 - 1:0] TRAN_feature_vector_TKEEP,
    output [16 - 1:0] TRAN_feature_vector_TSTRB,
    output [2 - 1:0] TRAN_feature_vector_TUSER,
    output TRAN_feature_vector_TLAST,
    output [5 - 1:0] TRAN_feature_vector_TID,
    output [6 - 1:0] TRAN_feature_vector_TDEST,
    output TRAN_feature_vector_TVALID,
    input TRAN_feature_vector_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_feature_vector_TVALID_temp;
    wire feature_vector_TDATA_full;
    wire feature_vector_TDATA_empty;
    reg feature_vector_TDATA_write_en;
    reg [128 - 1:0] feature_vector_TDATA_write_data;
    reg feature_vector_TDATA_read_en;
    wire [128 - 1:0] feature_vector_TDATA_read_data;
    
    fifo #(32, 128) fifo_feature_vector_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TDATA_write_en),
        .write_data(feature_vector_TDATA_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TDATA_read_en),
        .read_data(feature_vector_TDATA_read_data),
        .full(feature_vector_TDATA_full),
        .empty(feature_vector_TDATA_empty));
    
    always @ (*) begin
        feature_vector_TDATA_write_en <= 0;
        feature_vector_TDATA_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TDATA = feature_vector_TDATA_read_data;
    wire feature_vector_TKEEP_full;
    wire feature_vector_TKEEP_empty;
    reg feature_vector_TKEEP_write_en;
    reg [16 - 1:0] feature_vector_TKEEP_write_data;
    reg feature_vector_TKEEP_read_en;
    wire [16 - 1:0] feature_vector_TKEEP_read_data;
    
    fifo #(32, 16) fifo_feature_vector_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TKEEP_write_en),
        .write_data(feature_vector_TKEEP_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TKEEP_read_en),
        .read_data(feature_vector_TKEEP_read_data),
        .full(feature_vector_TKEEP_full),
        .empty(feature_vector_TKEEP_empty));
    
    always @ (*) begin
        feature_vector_TKEEP_write_en <= 0;
        feature_vector_TKEEP_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TKEEP = feature_vector_TKEEP_read_data;
    wire feature_vector_TSTRB_full;
    wire feature_vector_TSTRB_empty;
    reg feature_vector_TSTRB_write_en;
    reg [16 - 1:0] feature_vector_TSTRB_write_data;
    reg feature_vector_TSTRB_read_en;
    wire [16 - 1:0] feature_vector_TSTRB_read_data;
    
    fifo #(32, 16) fifo_feature_vector_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TSTRB_write_en),
        .write_data(feature_vector_TSTRB_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TSTRB_read_en),
        .read_data(feature_vector_TSTRB_read_data),
        .full(feature_vector_TSTRB_full),
        .empty(feature_vector_TSTRB_empty));
    
    always @ (*) begin
        feature_vector_TSTRB_write_en <= 0;
        feature_vector_TSTRB_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TSTRB = feature_vector_TSTRB_read_data;
    wire feature_vector_TUSER_full;
    wire feature_vector_TUSER_empty;
    reg feature_vector_TUSER_write_en;
    reg [2 - 1:0] feature_vector_TUSER_write_data;
    reg feature_vector_TUSER_read_en;
    wire [2 - 1:0] feature_vector_TUSER_read_data;
    
    fifo #(32, 2) fifo_feature_vector_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TUSER_write_en),
        .write_data(feature_vector_TUSER_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TUSER_read_en),
        .read_data(feature_vector_TUSER_read_data),
        .full(feature_vector_TUSER_full),
        .empty(feature_vector_TUSER_empty));
    
    always @ (*) begin
        feature_vector_TUSER_write_en <= 0;
        feature_vector_TUSER_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TUSER = feature_vector_TUSER_read_data;
    wire feature_vector_TLAST_full;
    wire feature_vector_TLAST_empty;
    reg feature_vector_TLAST_write_en;
    reg [1 - 1:0] feature_vector_TLAST_write_data;
    reg feature_vector_TLAST_read_en;
    wire [1 - 1:0] feature_vector_TLAST_read_data;
    
    fifo #(32, 1) fifo_feature_vector_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TLAST_write_en),
        .write_data(feature_vector_TLAST_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TLAST_read_en),
        .read_data(feature_vector_TLAST_read_data),
        .full(feature_vector_TLAST_full),
        .empty(feature_vector_TLAST_empty));
    
    always @ (*) begin
        feature_vector_TLAST_write_en <= 0;
        feature_vector_TLAST_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TLAST = feature_vector_TLAST_read_data;
    wire feature_vector_TID_full;
    wire feature_vector_TID_empty;
    reg feature_vector_TID_write_en;
    reg [5 - 1:0] feature_vector_TID_write_data;
    reg feature_vector_TID_read_en;
    wire [5 - 1:0] feature_vector_TID_read_data;
    
    fifo #(32, 5) fifo_feature_vector_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TID_write_en),
        .write_data(feature_vector_TID_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TID_read_en),
        .read_data(feature_vector_TID_read_data),
        .full(feature_vector_TID_full),
        .empty(feature_vector_TID_empty));
    
    always @ (*) begin
        feature_vector_TID_write_en <= 0;
        feature_vector_TID_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TID = feature_vector_TID_read_data;
    wire feature_vector_TDEST_full;
    wire feature_vector_TDEST_empty;
    reg feature_vector_TDEST_write_en;
    reg [6 - 1:0] feature_vector_TDEST_write_data;
    reg feature_vector_TDEST_read_en;
    wire [6 - 1:0] feature_vector_TDEST_read_data;
    
    fifo #(32, 6) fifo_feature_vector_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector_TDEST_write_en),
        .write_data(feature_vector_TDEST_write_data),
        .read_clock(clk),
        .read_en(feature_vector_TDEST_read_en),
        .read_data(feature_vector_TDEST_read_data),
        .full(feature_vector_TDEST_full),
        .empty(feature_vector_TDEST_empty));
    
    always @ (*) begin
        feature_vector_TDEST_write_en <= 0;
        feature_vector_TDEST_read_en <= TRAN_feature_vector_TREADY & TRAN_feature_vector_TVALID;
    end
    
    assign TRAN_feature_vector_TDEST = feature_vector_TDEST_read_data;
    assign TRAN_feature_vector_TVALID = TRAN_feature_vector_TVALID_temp;

    
    reg feature_vector_TDATA_valid = 0; // ingress buffer indicator: feature_vector_TDATA
    reg feature_vector_TKEEP_valid = 0; // ingress buffer indicator: feature_vector_TKEEP
    reg feature_vector_TSTRB_valid = 0; // ingress buffer indicator: feature_vector_TSTRB
    reg feature_vector_TUSER_valid = 0; // ingress buffer indicator: feature_vector_TUSER
    reg feature_vector_TLAST_valid = 0; // ingress buffer indicator: feature_vector_TLAST
    reg feature_vector_TID_valid = 0; // ingress buffer indicator: feature_vector_TID
    reg feature_vector_TDEST_valid = 0; // ingress buffer indicator: feature_vector_TDEST
    
    assign TRAN_feature_vector_TVALID_temp = ~(feature_vector_TDATA_empty || feature_vector_TKEEP_empty || feature_vector_TSTRB_empty || feature_vector_TUSER_empty || feature_vector_TLAST_empty || feature_vector_TID_empty || feature_vector_TDEST_empty) || (feature_vector_TDATA_valid && feature_vector_TKEEP_valid && feature_vector_TSTRB_valid && feature_vector_TUSER_valid && feature_vector_TLAST_valid && feature_vector_TID_valid && feature_vector_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_feature_vector_TDATA;
    
    assign transaction = transaction_load_feature_vector_TDATA;
    
    initial begin : AXI_stream_driver_feature_vector_TDATA
        integer fp;
        reg [279:0] token;
        reg [128 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TDATA = 0;
        fifo_feature_vector_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TDATA);
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
                    fifo_feature_vector_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TDATA_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TDATA = transaction_load_feature_vector_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TKEEP;
    
    initial begin : AXI_stream_driver_feature_vector_TKEEP
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TKEEP = 0;
        fifo_feature_vector_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TKEEP);
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
                    fifo_feature_vector_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TKEEP_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TKEEP = transaction_load_feature_vector_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TSTRB;
    
    initial begin : AXI_stream_driver_feature_vector_TSTRB
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TSTRB = 0;
        fifo_feature_vector_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TSTRB);
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
                    fifo_feature_vector_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TSTRB_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TSTRB = transaction_load_feature_vector_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TUSER;
    
    initial begin : AXI_stream_driver_feature_vector_TUSER
        integer fp;
        reg [279:0] token;
        reg [2 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TUSER = 0;
        fifo_feature_vector_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TUSER);
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
                    fifo_feature_vector_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TUSER_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TUSER = transaction_load_feature_vector_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TLAST;
    
    initial begin : AXI_stream_driver_feature_vector_TLAST
        integer fp;
        reg [279:0] token;
        reg [1 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TLAST = 0;
        fifo_feature_vector_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TLAST);
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
                    fifo_feature_vector_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TLAST_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TLAST = transaction_load_feature_vector_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TID;
    
    initial begin : AXI_stream_driver_feature_vector_TID
        integer fp;
        reg [279:0] token;
        reg [5 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TID = 0;
        fifo_feature_vector_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TID);
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
                    fifo_feature_vector_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TID_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TID = transaction_load_feature_vector_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector_TDEST;
    
    initial begin : AXI_stream_driver_feature_vector_TDEST
        integer fp;
        reg [279:0] token;
        reg [6 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector_TDEST = 0;
        fifo_feature_vector_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector_TDEST);
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
                    fifo_feature_vector_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector_TDEST_valid = (ingress_status > 0);
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
                transaction_load_feature_vector_TDEST = transaction_load_feature_vector_TDEST + 1;
            end
        end
    end

endmodule
