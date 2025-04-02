// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_feature_vector1_TDATA "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_data_V.dat"
`define INGRESS_STATUS_feature_vector1_TDATA "../tv/stream_size/stream_ingress_status_feature_vector1_V_data_V.dat"
`define TV_IN_feature_vector1_TKEEP "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_keep_V.dat"
`define INGRESS_STATUS_feature_vector1_TKEEP "../tv/stream_size/stream_ingress_status_feature_vector1_V_keep_V.dat"
`define TV_IN_feature_vector1_TSTRB "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_strb_V.dat"
`define INGRESS_STATUS_feature_vector1_TSTRB "../tv/stream_size/stream_ingress_status_feature_vector1_V_strb_V.dat"
`define TV_IN_feature_vector1_TUSER "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_user_V.dat"
`define INGRESS_STATUS_feature_vector1_TUSER "../tv/stream_size/stream_ingress_status_feature_vector1_V_user_V.dat"
`define TV_IN_feature_vector1_TLAST "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_last_V.dat"
`define INGRESS_STATUS_feature_vector1_TLAST "../tv/stream_size/stream_ingress_status_feature_vector1_V_last_V.dat"
`define TV_IN_feature_vector1_TID "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_id_V.dat"
`define INGRESS_STATUS_feature_vector1_TID "../tv/stream_size/stream_ingress_status_feature_vector1_V_id_V.dat"
`define TV_IN_feature_vector1_TDEST "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_dest_V.dat"
`define INGRESS_STATUS_feature_vector1_TDEST "../tv/stream_size/stream_ingress_status_feature_vector1_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_feature_vector1 (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_feature_vector1_TDATA,
    output [16 - 1:0] TRAN_feature_vector1_TKEEP,
    output [16 - 1:0] TRAN_feature_vector1_TSTRB,
    output [2 - 1:0] TRAN_feature_vector1_TUSER,
    output TRAN_feature_vector1_TLAST,
    output [5 - 1:0] TRAN_feature_vector1_TID,
    output [6 - 1:0] TRAN_feature_vector1_TDEST,
    output TRAN_feature_vector1_TVALID,
    input TRAN_feature_vector1_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_feature_vector1_TVALID_temp;
    wire feature_vector1_TDATA_full;
    wire feature_vector1_TDATA_empty;
    reg feature_vector1_TDATA_write_en;
    reg [128 - 1:0] feature_vector1_TDATA_write_data;
    reg feature_vector1_TDATA_read_en;
    wire [128 - 1:0] feature_vector1_TDATA_read_data;
    
    fifo #(64, 128) fifo_feature_vector1_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TDATA_write_en),
        .write_data(feature_vector1_TDATA_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TDATA_read_en),
        .read_data(feature_vector1_TDATA_read_data),
        .full(feature_vector1_TDATA_full),
        .empty(feature_vector1_TDATA_empty));
    
    always @ (*) begin
        feature_vector1_TDATA_write_en <= 0;
        feature_vector1_TDATA_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TDATA = feature_vector1_TDATA_read_data;
    wire feature_vector1_TKEEP_full;
    wire feature_vector1_TKEEP_empty;
    reg feature_vector1_TKEEP_write_en;
    reg [16 - 1:0] feature_vector1_TKEEP_write_data;
    reg feature_vector1_TKEEP_read_en;
    wire [16 - 1:0] feature_vector1_TKEEP_read_data;
    
    fifo #(64, 16) fifo_feature_vector1_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TKEEP_write_en),
        .write_data(feature_vector1_TKEEP_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TKEEP_read_en),
        .read_data(feature_vector1_TKEEP_read_data),
        .full(feature_vector1_TKEEP_full),
        .empty(feature_vector1_TKEEP_empty));
    
    always @ (*) begin
        feature_vector1_TKEEP_write_en <= 0;
        feature_vector1_TKEEP_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TKEEP = feature_vector1_TKEEP_read_data;
    wire feature_vector1_TSTRB_full;
    wire feature_vector1_TSTRB_empty;
    reg feature_vector1_TSTRB_write_en;
    reg [16 - 1:0] feature_vector1_TSTRB_write_data;
    reg feature_vector1_TSTRB_read_en;
    wire [16 - 1:0] feature_vector1_TSTRB_read_data;
    
    fifo #(64, 16) fifo_feature_vector1_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TSTRB_write_en),
        .write_data(feature_vector1_TSTRB_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TSTRB_read_en),
        .read_data(feature_vector1_TSTRB_read_data),
        .full(feature_vector1_TSTRB_full),
        .empty(feature_vector1_TSTRB_empty));
    
    always @ (*) begin
        feature_vector1_TSTRB_write_en <= 0;
        feature_vector1_TSTRB_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TSTRB = feature_vector1_TSTRB_read_data;
    wire feature_vector1_TUSER_full;
    wire feature_vector1_TUSER_empty;
    reg feature_vector1_TUSER_write_en;
    reg [2 - 1:0] feature_vector1_TUSER_write_data;
    reg feature_vector1_TUSER_read_en;
    wire [2 - 1:0] feature_vector1_TUSER_read_data;
    
    fifo #(64, 2) fifo_feature_vector1_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TUSER_write_en),
        .write_data(feature_vector1_TUSER_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TUSER_read_en),
        .read_data(feature_vector1_TUSER_read_data),
        .full(feature_vector1_TUSER_full),
        .empty(feature_vector1_TUSER_empty));
    
    always @ (*) begin
        feature_vector1_TUSER_write_en <= 0;
        feature_vector1_TUSER_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TUSER = feature_vector1_TUSER_read_data;
    wire feature_vector1_TLAST_full;
    wire feature_vector1_TLAST_empty;
    reg feature_vector1_TLAST_write_en;
    reg [1 - 1:0] feature_vector1_TLAST_write_data;
    reg feature_vector1_TLAST_read_en;
    wire [1 - 1:0] feature_vector1_TLAST_read_data;
    
    fifo #(64, 1) fifo_feature_vector1_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TLAST_write_en),
        .write_data(feature_vector1_TLAST_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TLAST_read_en),
        .read_data(feature_vector1_TLAST_read_data),
        .full(feature_vector1_TLAST_full),
        .empty(feature_vector1_TLAST_empty));
    
    always @ (*) begin
        feature_vector1_TLAST_write_en <= 0;
        feature_vector1_TLAST_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TLAST = feature_vector1_TLAST_read_data;
    wire feature_vector1_TID_full;
    wire feature_vector1_TID_empty;
    reg feature_vector1_TID_write_en;
    reg [5 - 1:0] feature_vector1_TID_write_data;
    reg feature_vector1_TID_read_en;
    wire [5 - 1:0] feature_vector1_TID_read_data;
    
    fifo #(64, 5) fifo_feature_vector1_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TID_write_en),
        .write_data(feature_vector1_TID_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TID_read_en),
        .read_data(feature_vector1_TID_read_data),
        .full(feature_vector1_TID_full),
        .empty(feature_vector1_TID_empty));
    
    always @ (*) begin
        feature_vector1_TID_write_en <= 0;
        feature_vector1_TID_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TID = feature_vector1_TID_read_data;
    wire feature_vector1_TDEST_full;
    wire feature_vector1_TDEST_empty;
    reg feature_vector1_TDEST_write_en;
    reg [6 - 1:0] feature_vector1_TDEST_write_data;
    reg feature_vector1_TDEST_read_en;
    wire [6 - 1:0] feature_vector1_TDEST_read_data;
    
    fifo #(64, 6) fifo_feature_vector1_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(feature_vector1_TDEST_write_en),
        .write_data(feature_vector1_TDEST_write_data),
        .read_clock(clk),
        .read_en(feature_vector1_TDEST_read_en),
        .read_data(feature_vector1_TDEST_read_data),
        .full(feature_vector1_TDEST_full),
        .empty(feature_vector1_TDEST_empty));
    
    always @ (*) begin
        feature_vector1_TDEST_write_en <= 0;
        feature_vector1_TDEST_read_en <= TRAN_feature_vector1_TREADY & TRAN_feature_vector1_TVALID;
    end
    
    assign TRAN_feature_vector1_TDEST = feature_vector1_TDEST_read_data;
    assign TRAN_feature_vector1_TVALID = TRAN_feature_vector1_TVALID_temp;

    
    reg feature_vector1_TDATA_valid = 0; // ingress buffer indicator: feature_vector1_TDATA
    reg feature_vector1_TKEEP_valid = 0; // ingress buffer indicator: feature_vector1_TKEEP
    reg feature_vector1_TSTRB_valid = 0; // ingress buffer indicator: feature_vector1_TSTRB
    reg feature_vector1_TUSER_valid = 0; // ingress buffer indicator: feature_vector1_TUSER
    reg feature_vector1_TLAST_valid = 0; // ingress buffer indicator: feature_vector1_TLAST
    reg feature_vector1_TID_valid = 0; // ingress buffer indicator: feature_vector1_TID
    reg feature_vector1_TDEST_valid = 0; // ingress buffer indicator: feature_vector1_TDEST
    
    assign TRAN_feature_vector1_TVALID_temp = ~(feature_vector1_TDATA_empty || feature_vector1_TKEEP_empty || feature_vector1_TSTRB_empty || feature_vector1_TUSER_empty || feature_vector1_TLAST_empty || feature_vector1_TID_empty || feature_vector1_TDEST_empty) || (feature_vector1_TDATA_valid && feature_vector1_TKEEP_valid && feature_vector1_TSTRB_valid && feature_vector1_TUSER_valid && feature_vector1_TLAST_valid && feature_vector1_TID_valid && feature_vector1_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_feature_vector1_TDATA;
    
    assign transaction = transaction_load_feature_vector1_TDATA;
    
    initial begin : AXI_stream_driver_feature_vector1_TDATA
        integer fp;
        reg [279:0] token;
        reg [128 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TDATA = 0;
        fifo_feature_vector1_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TDATA);
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
                    fifo_feature_vector1_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TDATA_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TDATA = transaction_load_feature_vector1_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TKEEP;
    
    initial begin : AXI_stream_driver_feature_vector1_TKEEP
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TKEEP = 0;
        fifo_feature_vector1_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TKEEP);
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
                    fifo_feature_vector1_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TKEEP_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TKEEP = transaction_load_feature_vector1_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TSTRB;
    
    initial begin : AXI_stream_driver_feature_vector1_TSTRB
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TSTRB = 0;
        fifo_feature_vector1_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TSTRB);
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
                    fifo_feature_vector1_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TSTRB_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TSTRB = transaction_load_feature_vector1_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TUSER;
    
    initial begin : AXI_stream_driver_feature_vector1_TUSER
        integer fp;
        reg [279:0] token;
        reg [2 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TUSER = 0;
        fifo_feature_vector1_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TUSER);
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
                    fifo_feature_vector1_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TUSER_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TUSER = transaction_load_feature_vector1_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TLAST;
    
    initial begin : AXI_stream_driver_feature_vector1_TLAST
        integer fp;
        reg [279:0] token;
        reg [1 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TLAST = 0;
        fifo_feature_vector1_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TLAST);
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
                    fifo_feature_vector1_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TLAST_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TLAST = transaction_load_feature_vector1_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TID;
    
    initial begin : AXI_stream_driver_feature_vector1_TID
        integer fp;
        reg [279:0] token;
        reg [5 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TID = 0;
        fifo_feature_vector1_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TID);
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
                    fifo_feature_vector1_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TID_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TID = transaction_load_feature_vector1_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_feature_vector1_TDEST;
    
    initial begin : AXI_stream_driver_feature_vector1_TDEST
        integer fp;
        reg [279:0] token;
        reg [6 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_feature_vector1_TDEST = 0;
        fifo_feature_vector1_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_feature_vector1_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_feature_vector1_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_feature_vector1_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_feature_vector1_TDEST);
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
                    fifo_feature_vector1_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_feature_vector1_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_feature_vector1_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    feature_vector1_TDEST_valid = (ingress_status > 0);
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
                transaction_load_feature_vector1_TDEST = transaction_load_feature_vector1_TDEST + 1;
            end
        end
    end

endmodule
