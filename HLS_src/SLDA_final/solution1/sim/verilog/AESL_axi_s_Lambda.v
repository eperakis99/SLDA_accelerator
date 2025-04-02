// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_Lambda_TDATA "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_data_V.dat"
`define INGRESS_STATUS_Lambda_TDATA "../tv/stream_size/stream_ingress_status_Lambda_V_data_V.dat"
`define TV_IN_Lambda_TKEEP "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_keep_V.dat"
`define INGRESS_STATUS_Lambda_TKEEP "../tv/stream_size/stream_ingress_status_Lambda_V_keep_V.dat"
`define TV_IN_Lambda_TSTRB "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_strb_V.dat"
`define INGRESS_STATUS_Lambda_TSTRB "../tv/stream_size/stream_ingress_status_Lambda_V_strb_V.dat"
`define TV_IN_Lambda_TUSER "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_user_V.dat"
`define INGRESS_STATUS_Lambda_TUSER "../tv/stream_size/stream_ingress_status_Lambda_V_user_V.dat"
`define TV_IN_Lambda_TLAST "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_last_V.dat"
`define INGRESS_STATUS_Lambda_TLAST "../tv/stream_size/stream_ingress_status_Lambda_V_last_V.dat"
`define TV_IN_Lambda_TID "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_id_V.dat"
`define INGRESS_STATUS_Lambda_TID "../tv/stream_size/stream_ingress_status_Lambda_V_id_V.dat"
`define TV_IN_Lambda_TDEST "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_dest_V.dat"
`define INGRESS_STATUS_Lambda_TDEST "../tv/stream_size/stream_ingress_status_Lambda_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_Lambda (
    input clk,
    input reset,
    output [128 - 1:0] TRAN_Lambda_TDATA,
    output [16 - 1:0] TRAN_Lambda_TKEEP,
    output [16 - 1:0] TRAN_Lambda_TSTRB,
    output [2 - 1:0] TRAN_Lambda_TUSER,
    output TRAN_Lambda_TLAST,
    output [5 - 1:0] TRAN_Lambda_TID,
    output [6 - 1:0] TRAN_Lambda_TDEST,
    output TRAN_Lambda_TVALID,
    input TRAN_Lambda_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_Lambda_TVALID_temp;
    wire Lambda_TDATA_full;
    wire Lambda_TDATA_empty;
    reg Lambda_TDATA_write_en;
    reg [128 - 1:0] Lambda_TDATA_write_data;
    reg Lambda_TDATA_read_en;
    wire [128 - 1:0] Lambda_TDATA_read_data;
    
    fifo #(4096, 128) fifo_Lambda_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TDATA_write_en),
        .write_data(Lambda_TDATA_write_data),
        .read_clock(clk),
        .read_en(Lambda_TDATA_read_en),
        .read_data(Lambda_TDATA_read_data),
        .full(Lambda_TDATA_full),
        .empty(Lambda_TDATA_empty));
    
    always @ (*) begin
        Lambda_TDATA_write_en <= 0;
        Lambda_TDATA_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TDATA = Lambda_TDATA_read_data;
    wire Lambda_TKEEP_full;
    wire Lambda_TKEEP_empty;
    reg Lambda_TKEEP_write_en;
    reg [16 - 1:0] Lambda_TKEEP_write_data;
    reg Lambda_TKEEP_read_en;
    wire [16 - 1:0] Lambda_TKEEP_read_data;
    
    fifo #(4096, 16) fifo_Lambda_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TKEEP_write_en),
        .write_data(Lambda_TKEEP_write_data),
        .read_clock(clk),
        .read_en(Lambda_TKEEP_read_en),
        .read_data(Lambda_TKEEP_read_data),
        .full(Lambda_TKEEP_full),
        .empty(Lambda_TKEEP_empty));
    
    always @ (*) begin
        Lambda_TKEEP_write_en <= 0;
        Lambda_TKEEP_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TKEEP = Lambda_TKEEP_read_data;
    wire Lambda_TSTRB_full;
    wire Lambda_TSTRB_empty;
    reg Lambda_TSTRB_write_en;
    reg [16 - 1:0] Lambda_TSTRB_write_data;
    reg Lambda_TSTRB_read_en;
    wire [16 - 1:0] Lambda_TSTRB_read_data;
    
    fifo #(4096, 16) fifo_Lambda_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TSTRB_write_en),
        .write_data(Lambda_TSTRB_write_data),
        .read_clock(clk),
        .read_en(Lambda_TSTRB_read_en),
        .read_data(Lambda_TSTRB_read_data),
        .full(Lambda_TSTRB_full),
        .empty(Lambda_TSTRB_empty));
    
    always @ (*) begin
        Lambda_TSTRB_write_en <= 0;
        Lambda_TSTRB_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TSTRB = Lambda_TSTRB_read_data;
    wire Lambda_TUSER_full;
    wire Lambda_TUSER_empty;
    reg Lambda_TUSER_write_en;
    reg [2 - 1:0] Lambda_TUSER_write_data;
    reg Lambda_TUSER_read_en;
    wire [2 - 1:0] Lambda_TUSER_read_data;
    
    fifo #(4096, 2) fifo_Lambda_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TUSER_write_en),
        .write_data(Lambda_TUSER_write_data),
        .read_clock(clk),
        .read_en(Lambda_TUSER_read_en),
        .read_data(Lambda_TUSER_read_data),
        .full(Lambda_TUSER_full),
        .empty(Lambda_TUSER_empty));
    
    always @ (*) begin
        Lambda_TUSER_write_en <= 0;
        Lambda_TUSER_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TUSER = Lambda_TUSER_read_data;
    wire Lambda_TLAST_full;
    wire Lambda_TLAST_empty;
    reg Lambda_TLAST_write_en;
    reg [1 - 1:0] Lambda_TLAST_write_data;
    reg Lambda_TLAST_read_en;
    wire [1 - 1:0] Lambda_TLAST_read_data;
    
    fifo #(4096, 1) fifo_Lambda_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TLAST_write_en),
        .write_data(Lambda_TLAST_write_data),
        .read_clock(clk),
        .read_en(Lambda_TLAST_read_en),
        .read_data(Lambda_TLAST_read_data),
        .full(Lambda_TLAST_full),
        .empty(Lambda_TLAST_empty));
    
    always @ (*) begin
        Lambda_TLAST_write_en <= 0;
        Lambda_TLAST_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TLAST = Lambda_TLAST_read_data;
    wire Lambda_TID_full;
    wire Lambda_TID_empty;
    reg Lambda_TID_write_en;
    reg [5 - 1:0] Lambda_TID_write_data;
    reg Lambda_TID_read_en;
    wire [5 - 1:0] Lambda_TID_read_data;
    
    fifo #(4096, 5) fifo_Lambda_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TID_write_en),
        .write_data(Lambda_TID_write_data),
        .read_clock(clk),
        .read_en(Lambda_TID_read_en),
        .read_data(Lambda_TID_read_data),
        .full(Lambda_TID_full),
        .empty(Lambda_TID_empty));
    
    always @ (*) begin
        Lambda_TID_write_en <= 0;
        Lambda_TID_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TID = Lambda_TID_read_data;
    wire Lambda_TDEST_full;
    wire Lambda_TDEST_empty;
    reg Lambda_TDEST_write_en;
    reg [6 - 1:0] Lambda_TDEST_write_data;
    reg Lambda_TDEST_read_en;
    wire [6 - 1:0] Lambda_TDEST_read_data;
    
    fifo #(4096, 6) fifo_Lambda_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(Lambda_TDEST_write_en),
        .write_data(Lambda_TDEST_write_data),
        .read_clock(clk),
        .read_en(Lambda_TDEST_read_en),
        .read_data(Lambda_TDEST_read_data),
        .full(Lambda_TDEST_full),
        .empty(Lambda_TDEST_empty));
    
    always @ (*) begin
        Lambda_TDEST_write_en <= 0;
        Lambda_TDEST_read_en <= TRAN_Lambda_TREADY & TRAN_Lambda_TVALID;
    end
    
    assign TRAN_Lambda_TDEST = Lambda_TDEST_read_data;
    assign TRAN_Lambda_TVALID = TRAN_Lambda_TVALID_temp;

    
    reg Lambda_TDATA_valid = 0; // ingress buffer indicator: Lambda_TDATA
    reg Lambda_TKEEP_valid = 0; // ingress buffer indicator: Lambda_TKEEP
    reg Lambda_TSTRB_valid = 0; // ingress buffer indicator: Lambda_TSTRB
    reg Lambda_TUSER_valid = 0; // ingress buffer indicator: Lambda_TUSER
    reg Lambda_TLAST_valid = 0; // ingress buffer indicator: Lambda_TLAST
    reg Lambda_TID_valid = 0; // ingress buffer indicator: Lambda_TID
    reg Lambda_TDEST_valid = 0; // ingress buffer indicator: Lambda_TDEST
    
    assign TRAN_Lambda_TVALID_temp = ~(Lambda_TDATA_empty || Lambda_TKEEP_empty || Lambda_TSTRB_empty || Lambda_TUSER_empty || Lambda_TLAST_empty || Lambda_TID_empty || Lambda_TDEST_empty) || (Lambda_TDATA_valid && Lambda_TKEEP_valid && Lambda_TSTRB_valid && Lambda_TUSER_valid && Lambda_TLAST_valid && Lambda_TID_valid && Lambda_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_Lambda_TDATA;
    
    assign transaction = transaction_load_Lambda_TDATA;
    
    initial begin : AXI_stream_driver_Lambda_TDATA
        integer fp;
        reg [279:0] token;
        reg [128 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TDATA = 0;
        fifo_Lambda_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TDATA);
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
                    fifo_Lambda_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TDATA_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TDATA = transaction_load_Lambda_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TKEEP;
    
    initial begin : AXI_stream_driver_Lambda_TKEEP
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TKEEP = 0;
        fifo_Lambda_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TKEEP);
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
                    fifo_Lambda_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TKEEP_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TKEEP = transaction_load_Lambda_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TSTRB;
    
    initial begin : AXI_stream_driver_Lambda_TSTRB
        integer fp;
        reg [279:0] token;
        reg [16 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TSTRB = 0;
        fifo_Lambda_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TSTRB);
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
                    fifo_Lambda_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TSTRB_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TSTRB = transaction_load_Lambda_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TUSER;
    
    initial begin : AXI_stream_driver_Lambda_TUSER
        integer fp;
        reg [279:0] token;
        reg [2 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TUSER = 0;
        fifo_Lambda_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TUSER);
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
                    fifo_Lambda_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TUSER_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TUSER = transaction_load_Lambda_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TLAST;
    
    initial begin : AXI_stream_driver_Lambda_TLAST
        integer fp;
        reg [279:0] token;
        reg [1 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TLAST = 0;
        fifo_Lambda_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TLAST);
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
                    fifo_Lambda_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TLAST_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TLAST = transaction_load_Lambda_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TID;
    
    initial begin : AXI_stream_driver_Lambda_TID
        integer fp;
        reg [279:0] token;
        reg [5 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TID = 0;
        fifo_Lambda_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TID);
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
                    fifo_Lambda_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TID_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TID = transaction_load_Lambda_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_Lambda_TDEST;
    
    initial begin : AXI_stream_driver_Lambda_TDEST
        integer fp;
        reg [279:0] token;
        reg [6 - 1:0] data;
        reg [279:0] data_integer;
        integer fp_ingress_status;
        reg [279:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_Lambda_TDEST = 0;
        fifo_Lambda_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_Lambda_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_Lambda_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_Lambda_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_Lambda_TDEST);
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
                    fifo_Lambda_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_Lambda_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_Lambda_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    Lambda_TDEST_valid = (ingress_status > 0);
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
                transaction_load_Lambda_TDEST = transaction_load_Lambda_TDEST + 1;
            end
        end
    end

endmodule
