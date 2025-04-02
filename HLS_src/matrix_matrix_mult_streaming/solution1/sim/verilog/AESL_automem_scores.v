// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module AESL_automem_scores (
    clk,
    rst,
    ce0,
    we0,
    address0,
    din0,
    dout0,
    ce1,
    we1,
    address1,
    din1,
    dout1,
    ready,
    done
);

//------------------------Parameter----------------------
localparam
    TV_IN  = "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_scores.dat", 
    TV_OUT = "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_scores.dat"; 
//------------------------Local signal-------------------
parameter DATA_WIDTH = 32'd 128;
parameter ADDR_WIDTH = 32'd 4;
parameter DEPTH = 32'd 10;
parameter DLY = 0.1;

// Input and Output
input clk;
input rst;
input ce0, ce1;
//KF: byte width will be 16
input [16 -1 : 0] we0, we1;
input [ADDR_WIDTH - 1 : 0] address0, address1;
input [DATA_WIDTH - 1 : 0] din0, din1;
output reg [DATA_WIDTH - 1 : 0] dout0, dout1;
input ready;
input done;

// Inner signals
event initialed;
event dut2tb_ap_ready;
event dut2tb_ap_done;
event finished;
reg [DATA_WIDTH - 1 : 0] mem [0 : DEPTH - 1];
initial begin : initialize_mem
    integer i;
    for (i = 0; i < DEPTH; i = i + 1) begin
        mem[i] = 0;
    end
end
reg writed_flag;
event write_process_done;
//------------------------Task and function--------------
task read_token;
    input integer fp;
    output reg [279 :0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

//------------------------Read array-------------------

// Read data form file to array
initial begin : read_file_process
    integer fp;
    integer err;
    integer ret;
    reg [279 : 0] token;
    reg [ 8*5 : 1] str;
    reg [ DATA_WIDTH - 1 : 0 ] mem_tmp;
    integer transaction_idx;
    integer i;
    transaction_idx = 0;

    wait(rst === 1);
    @(write_process_done);
    fp = $fopen(TV_IN,"r");
    if (fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", TV_IN);
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin             // Illegal format
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
		  $finish;
        end
        read_token(fp, token);              // skip transaction number
        while(ready == 0) begin
            @(write_process_done);
        end
        for(i = 0; i < DEPTH; i = i + 1) begin
            read_token(fp, token);
            ret = $sscanf(token, "0x%x", mem_tmp);
            mem[i] = mem_tmp;
            if (ret != 1) begin
                $display("Failed to parse token!");
                $finish;
            end
        end
        @(write_process_done);
        read_token(fp, token);
        if (token != "[[/transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp, token);
        transaction_idx = transaction_idx + 1;
    end
    $fclose(fp);
end

// Read data from array to RTL
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[0*8+7:0*8] = 0;
    end
    else begin
        if((we0[0] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
            dout0[0*8+7:0*8] = #DLY din1[0*8+7:0*8];
        else if(ce0 == 1)
            dout0[0*8+7:0*8] = #DLY mem[address0][0*8+7:0*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[0*8+7:0*8] = 0;
    end
    else begin
        if((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 0) && (address0 == address1))
            dout1[0*8+7:0*8] = #DLY din0[0*8+7:0*8];
        else if(ce1 == 1)
            dout1[0*8+7:0*8] = #DLY mem[address1][0*8+7:0*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[1*8+7:1*8] = 0;
    end
    else begin
        if((we0[1] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 1) && (address0 == address1))
            dout0[1*8+7:1*8] = #DLY din1[1*8+7:1*8];
        else if(ce0 == 1)
            dout0[1*8+7:1*8] = #DLY mem[address0][1*8+7:1*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[1*8+7:1*8] = 0;
    end
    else begin
        if((we0[1] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 0) && (address0 == address1))
            dout1[1*8+7:1*8] = #DLY din0[1*8+7:1*8];
        else if(ce1 == 1)
            dout1[1*8+7:1*8] = #DLY mem[address1][1*8+7:1*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[2*8+7:2*8] = 0;
    end
    else begin
        if((we0[2] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 1) && (address0 == address1))
            dout0[2*8+7:2*8] = #DLY din1[2*8+7:2*8];
        else if(ce0 == 1)
            dout0[2*8+7:2*8] = #DLY mem[address0][2*8+7:2*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[2*8+7:2*8] = 0;
    end
    else begin
        if((we0[2] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 0) && (address0 == address1))
            dout1[2*8+7:2*8] = #DLY din0[2*8+7:2*8];
        else if(ce1 == 1)
            dout1[2*8+7:2*8] = #DLY mem[address1][2*8+7:2*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[3*8+7:3*8] = 0;
    end
    else begin
        if((we0[3] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 1) && (address0 == address1))
            dout0[3*8+7:3*8] = #DLY din1[3*8+7:3*8];
        else if(ce0 == 1)
            dout0[3*8+7:3*8] = #DLY mem[address0][3*8+7:3*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[3*8+7:3*8] = 0;
    end
    else begin
        if((we0[3] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 0) && (address0 == address1))
            dout1[3*8+7:3*8] = #DLY din0[3*8+7:3*8];
        else if(ce1 == 1)
            dout1[3*8+7:3*8] = #DLY mem[address1][3*8+7:3*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[4*8+7:4*8] = 0;
    end
    else begin
        if((we0[4] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 1) && (address0 == address1))
            dout0[4*8+7:4*8] = #DLY din1[4*8+7:4*8];
        else if(ce0 == 1)
            dout0[4*8+7:4*8] = #DLY mem[address0][4*8+7:4*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[4*8+7:4*8] = 0;
    end
    else begin
        if((we0[4] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 0) && (address0 == address1))
            dout1[4*8+7:4*8] = #DLY din0[4*8+7:4*8];
        else if(ce1 == 1)
            dout1[4*8+7:4*8] = #DLY mem[address1][4*8+7:4*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[5*8+7:5*8] = 0;
    end
    else begin
        if((we0[5] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 1) && (address0 == address1))
            dout0[5*8+7:5*8] = #DLY din1[5*8+7:5*8];
        else if(ce0 == 1)
            dout0[5*8+7:5*8] = #DLY mem[address0][5*8+7:5*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[5*8+7:5*8] = 0;
    end
    else begin
        if((we0[5] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 0) && (address0 == address1))
            dout1[5*8+7:5*8] = #DLY din0[5*8+7:5*8];
        else if(ce1 == 1)
            dout1[5*8+7:5*8] = #DLY mem[address1][5*8+7:5*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[6*8+7:6*8] = 0;
    end
    else begin
        if((we0[6] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 1) && (address0 == address1))
            dout0[6*8+7:6*8] = #DLY din1[6*8+7:6*8];
        else if(ce0 == 1)
            dout0[6*8+7:6*8] = #DLY mem[address0][6*8+7:6*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[6*8+7:6*8] = 0;
    end
    else begin
        if((we0[6] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 0) && (address0 == address1))
            dout1[6*8+7:6*8] = #DLY din0[6*8+7:6*8];
        else if(ce1 == 1)
            dout1[6*8+7:6*8] = #DLY mem[address1][6*8+7:6*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[7*8+7:7*8] = 0;
    end
    else begin
        if((we0[7] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 1) && (address0 == address1))
            dout0[7*8+7:7*8] = #DLY din1[7*8+7:7*8];
        else if(ce0 == 1)
            dout0[7*8+7:7*8] = #DLY mem[address0][7*8+7:7*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[7*8+7:7*8] = 0;
    end
    else begin
        if((we0[7] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 0) && (address0 == address1))
            dout1[7*8+7:7*8] = #DLY din0[7*8+7:7*8];
        else if(ce1 == 1)
            dout1[7*8+7:7*8] = #DLY mem[address1][7*8+7:7*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[8*8+7:8*8] = 0;
    end
    else begin
        if((we0[8] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 1) && (address0 == address1))
            dout0[8*8+7:8*8] = #DLY din1[8*8+7:8*8];
        else if(ce0 == 1)
            dout0[8*8+7:8*8] = #DLY mem[address0][8*8+7:8*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[8*8+7:8*8] = 0;
    end
    else begin
        if((we0[8] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 0) && (address0 == address1))
            dout1[8*8+7:8*8] = #DLY din0[8*8+7:8*8];
        else if(ce1 == 1)
            dout1[8*8+7:8*8] = #DLY mem[address1][8*8+7:8*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[9*8+7:9*8] = 0;
    end
    else begin
        if((we0[9] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 1) && (address0 == address1))
            dout0[9*8+7:9*8] = #DLY din1[9*8+7:9*8];
        else if(ce0 == 1)
            dout0[9*8+7:9*8] = #DLY mem[address0][9*8+7:9*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[9*8+7:9*8] = 0;
    end
    else begin
        if((we0[9] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 0) && (address0 == address1))
            dout1[9*8+7:9*8] = #DLY din0[9*8+7:9*8];
        else if(ce1 == 1)
            dout1[9*8+7:9*8] = #DLY mem[address1][9*8+7:9*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[10*8+7:10*8] = 0;
    end
    else begin
        if((we0[10] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 1) && (address0 == address1))
            dout0[10*8+7:10*8] = #DLY din1[10*8+7:10*8];
        else if(ce0 == 1)
            dout0[10*8+7:10*8] = #DLY mem[address0][10*8+7:10*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[10*8+7:10*8] = 0;
    end
    else begin
        if((we0[10] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 0) && (address0 == address1))
            dout1[10*8+7:10*8] = #DLY din0[10*8+7:10*8];
        else if(ce1 == 1)
            dout1[10*8+7:10*8] = #DLY mem[address1][10*8+7:10*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[11*8+7:11*8] = 0;
    end
    else begin
        if((we0[11] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 1) && (address0 == address1))
            dout0[11*8+7:11*8] = #DLY din1[11*8+7:11*8];
        else if(ce0 == 1)
            dout0[11*8+7:11*8] = #DLY mem[address0][11*8+7:11*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[11*8+7:11*8] = 0;
    end
    else begin
        if((we0[11] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 0) && (address0 == address1))
            dout1[11*8+7:11*8] = #DLY din0[11*8+7:11*8];
        else if(ce1 == 1)
            dout1[11*8+7:11*8] = #DLY mem[address1][11*8+7:11*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[12*8+7:12*8] = 0;
    end
    else begin
        if((we0[12] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 1) && (address0 == address1))
            dout0[12*8+7:12*8] = #DLY din1[12*8+7:12*8];
        else if(ce0 == 1)
            dout0[12*8+7:12*8] = #DLY mem[address0][12*8+7:12*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[12*8+7:12*8] = 0;
    end
    else begin
        if((we0[12] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 0) && (address0 == address1))
            dout1[12*8+7:12*8] = #DLY din0[12*8+7:12*8];
        else if(ce1 == 1)
            dout1[12*8+7:12*8] = #DLY mem[address1][12*8+7:12*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[13*8+7:13*8] = 0;
    end
    else begin
        if((we0[13] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 1) && (address0 == address1))
            dout0[13*8+7:13*8] = #DLY din1[13*8+7:13*8];
        else if(ce0 == 1)
            dout0[13*8+7:13*8] = #DLY mem[address0][13*8+7:13*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[13*8+7:13*8] = 0;
    end
    else begin
        if((we0[13] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 0) && (address0 == address1))
            dout1[13*8+7:13*8] = #DLY din0[13*8+7:13*8];
        else if(ce1 == 1)
            dout1[13*8+7:13*8] = #DLY mem[address1][13*8+7:13*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[14*8+7:14*8] = 0;
    end
    else begin
        if((we0[14] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 1) && (address0 == address1))
            dout0[14*8+7:14*8] = #DLY din1[14*8+7:14*8];
        else if(ce0 == 1)
            dout0[14*8+7:14*8] = #DLY mem[address0][14*8+7:14*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[14*8+7:14*8] = 0;
    end
    else begin
        if((we0[14] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 0) && (address0 == address1))
            dout1[14*8+7:14*8] = #DLY din0[14*8+7:14*8];
        else if(ce1 == 1)
            dout1[14*8+7:14*8] = #DLY mem[address1][14*8+7:14*8];
        else ;
    end
end
always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout0[15*8+7:15*8] = 0;
    end
    else begin
        if((we0[15] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 1) && (address0 == address1))
            dout0[15*8+7:15*8] = #DLY din1[15*8+7:15*8];
        else if(ce0 == 1)
            dout0[15*8+7:15*8] = #DLY mem[address0][15*8+7:15*8];
        else ;
    end
end

always @ (posedge clk or rst) begin
    if(rst === 0) begin
        dout1[15*8+7:15*8] = 0;
    end
    else begin
        if((we0[15] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 0) && (address0 == address1))
            dout1[15*8+7:15*8] = #DLY din0[15*8+7:15*8];
        else if(ce1 == 1)
            dout1[15*8+7:15*8] = #DLY mem[address1][15*8+7:15*8];
        else ;
    end
end

//------------------------Write array-------------------

// Write data from RTL to array
//write process for byte 0
always @ (posedge clk) begin
    if((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        mem[address0][0*8+7:0*8] <= #DLY din1[0*8+7:0*8];
    else if ((we0[0] == 1) && (ce0 == 1))
        mem[address0][0*8+7:0*8] <= #DLY din0[0*8+7:0*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[0] == 1))
        mem[address1][0*8+7:0*8] <= #DLY din1[0*8+7:0*8];
end
//write process for byte 1
always @ (posedge clk) begin
    if((we0[1] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 1) && (address0 == address1))
        mem[address0][1*8+7:1*8] <= #DLY din1[1*8+7:1*8];
    else if ((we0[1] == 1) && (ce0 == 1))
        mem[address0][1*8+7:1*8] <= #DLY din0[1*8+7:1*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[1] == 1))
        mem[address1][1*8+7:1*8] <= #DLY din1[1*8+7:1*8];
end
//write process for byte 2
always @ (posedge clk) begin
    if((we0[2] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 1) && (address0 == address1))
        mem[address0][2*8+7:2*8] <= #DLY din1[2*8+7:2*8];
    else if ((we0[2] == 1) && (ce0 == 1))
        mem[address0][2*8+7:2*8] <= #DLY din0[2*8+7:2*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[2] == 1))
        mem[address1][2*8+7:2*8] <= #DLY din1[2*8+7:2*8];
end
//write process for byte 3
always @ (posedge clk) begin
    if((we0[3] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 1) && (address0 == address1))
        mem[address0][3*8+7:3*8] <= #DLY din1[3*8+7:3*8];
    else if ((we0[3] == 1) && (ce0 == 1))
        mem[address0][3*8+7:3*8] <= #DLY din0[3*8+7:3*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[3] == 1))
        mem[address1][3*8+7:3*8] <= #DLY din1[3*8+7:3*8];
end
//write process for byte 4
always @ (posedge clk) begin
    if((we0[4] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 1) && (address0 == address1))
        mem[address0][4*8+7:4*8] <= #DLY din1[4*8+7:4*8];
    else if ((we0[4] == 1) && (ce0 == 1))
        mem[address0][4*8+7:4*8] <= #DLY din0[4*8+7:4*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[4] == 1))
        mem[address1][4*8+7:4*8] <= #DLY din1[4*8+7:4*8];
end
//write process for byte 5
always @ (posedge clk) begin
    if((we0[5] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 1) && (address0 == address1))
        mem[address0][5*8+7:5*8] <= #DLY din1[5*8+7:5*8];
    else if ((we0[5] == 1) && (ce0 == 1))
        mem[address0][5*8+7:5*8] <= #DLY din0[5*8+7:5*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[5] == 1))
        mem[address1][5*8+7:5*8] <= #DLY din1[5*8+7:5*8];
end
//write process for byte 6
always @ (posedge clk) begin
    if((we0[6] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 1) && (address0 == address1))
        mem[address0][6*8+7:6*8] <= #DLY din1[6*8+7:6*8];
    else if ((we0[6] == 1) && (ce0 == 1))
        mem[address0][6*8+7:6*8] <= #DLY din0[6*8+7:6*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[6] == 1))
        mem[address1][6*8+7:6*8] <= #DLY din1[6*8+7:6*8];
end
//write process for byte 7
always @ (posedge clk) begin
    if((we0[7] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 1) && (address0 == address1))
        mem[address0][7*8+7:7*8] <= #DLY din1[7*8+7:7*8];
    else if ((we0[7] == 1) && (ce0 == 1))
        mem[address0][7*8+7:7*8] <= #DLY din0[7*8+7:7*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[7] == 1))
        mem[address1][7*8+7:7*8] <= #DLY din1[7*8+7:7*8];
end
//write process for byte 8
always @ (posedge clk) begin
    if((we0[8] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 1) && (address0 == address1))
        mem[address0][8*8+7:8*8] <= #DLY din1[8*8+7:8*8];
    else if ((we0[8] == 1) && (ce0 == 1))
        mem[address0][8*8+7:8*8] <= #DLY din0[8*8+7:8*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[8] == 1))
        mem[address1][8*8+7:8*8] <= #DLY din1[8*8+7:8*8];
end
//write process for byte 9
always @ (posedge clk) begin
    if((we0[9] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 1) && (address0 == address1))
        mem[address0][9*8+7:9*8] <= #DLY din1[9*8+7:9*8];
    else if ((we0[9] == 1) && (ce0 == 1))
        mem[address0][9*8+7:9*8] <= #DLY din0[9*8+7:9*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[9] == 1))
        mem[address1][9*8+7:9*8] <= #DLY din1[9*8+7:9*8];
end
//write process for byte 10
always @ (posedge clk) begin
    if((we0[10] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 1) && (address0 == address1))
        mem[address0][10*8+7:10*8] <= #DLY din1[10*8+7:10*8];
    else if ((we0[10] == 1) && (ce0 == 1))
        mem[address0][10*8+7:10*8] <= #DLY din0[10*8+7:10*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[10] == 1))
        mem[address1][10*8+7:10*8] <= #DLY din1[10*8+7:10*8];
end
//write process for byte 11
always @ (posedge clk) begin
    if((we0[11] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 1) && (address0 == address1))
        mem[address0][11*8+7:11*8] <= #DLY din1[11*8+7:11*8];
    else if ((we0[11] == 1) && (ce0 == 1))
        mem[address0][11*8+7:11*8] <= #DLY din0[11*8+7:11*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[11] == 1))
        mem[address1][11*8+7:11*8] <= #DLY din1[11*8+7:11*8];
end
//write process for byte 12
always @ (posedge clk) begin
    if((we0[12] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 1) && (address0 == address1))
        mem[address0][12*8+7:12*8] <= #DLY din1[12*8+7:12*8];
    else if ((we0[12] == 1) && (ce0 == 1))
        mem[address0][12*8+7:12*8] <= #DLY din0[12*8+7:12*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[12] == 1))
        mem[address1][12*8+7:12*8] <= #DLY din1[12*8+7:12*8];
end
//write process for byte 13
always @ (posedge clk) begin
    if((we0[13] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 1) && (address0 == address1))
        mem[address0][13*8+7:13*8] <= #DLY din1[13*8+7:13*8];
    else if ((we0[13] == 1) && (ce0 == 1))
        mem[address0][13*8+7:13*8] <= #DLY din0[13*8+7:13*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[13] == 1))
        mem[address1][13*8+7:13*8] <= #DLY din1[13*8+7:13*8];
end
//write process for byte 14
always @ (posedge clk) begin
    if((we0[14] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 1) && (address0 == address1))
        mem[address0][14*8+7:14*8] <= #DLY din1[14*8+7:14*8];
    else if ((we0[14] == 1) && (ce0 == 1))
        mem[address0][14*8+7:14*8] <= #DLY din0[14*8+7:14*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[14] == 1))
        mem[address1][14*8+7:14*8] <= #DLY din1[14*8+7:14*8];
end
//write process for byte 15
always @ (posedge clk) begin
    if((we0[15] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 1) && (address0 == address1))
        mem[address0][15*8+7:15*8] <= #DLY din1[15*8+7:15*8];
    else if ((we0[15] == 1) && (ce0 == 1))
        mem[address0][15*8+7:15*8] <= #DLY din0[15*8+7:15*8];
end

always @ (posedge clk) begin
    if ((ce1 == 1) && (we1[15] == 1))
        mem[address1][15*8+7:15*8] <= #DLY din1[15*8+7:15*8];
end

// Write data from array to file
initial begin : write_file_proc
    integer fp;
    integer transaction_num;
    reg [ 8*5 : 1] str;
    integer i;
    transaction_num = 0;
    writed_flag = 1;
    wait(rst === 1);
    @(negedge clk);
    while (1) begin
        while(done == 0) begin
            -> write_process_done;
            @(negedge clk);
        end
        fp = $fopen(TV_OUT, "a");
        if (fp == 0) begin       // Failed to open file
            $display("Failed to open file \"%s\"!", TV_OUT);
            $finish;
        end
        $fdisplay(fp, "[[transaction]] %d", transaction_num);
	      for (i = 0; i < DEPTH; i = i + 1) begin
            $fdisplay(fp,"0x%x",mem[i]);
        end
        $fdisplay(fp, "[[/transaction]]");
        transaction_num = transaction_num + 1;
        $fclose(fp);
        writed_flag = 1;
        -> write_process_done;
        @(negedge clk);
    end
end

//------------------------conflict check-------------------
always @ (posedge clk) begin
    if ((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[0] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[0] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[0] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[1] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[1] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[1] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[1] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[2] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[2] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[2] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[2] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[3] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[3] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[3] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[3] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[4] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[4] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[4] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[4] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[5] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[5] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[5] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[5] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[6] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[6] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[6] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[6] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[7] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[7] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[7] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[7] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[8] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[8] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[8] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[8] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[9] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[9] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[9] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[9] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[10] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[10] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[10] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[10] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[11] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[11] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[11] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[11] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[12] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[12] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[12] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[12] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[13] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[13] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[13] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[13] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[14] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[14] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[14] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[14] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[15] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 1) && (address0 == address1))
        $display($time,"WARNING:write conflict----port0 and port1 write to the same address:%h at the same clock. Port1 has the high priority.",address0);
end

always @ (posedge clk) begin
    if ((we0[15] == 1) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 0) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 write and port1 read to the same address:%h at the same clock. Write first Mode.",address0);
end

always @ (posedge clk) begin
    if ((we0[15] == 0) && (ce0 == 1) && (ce1 == 1) && (we1[15] == 1) && (address0 == address1))
        $display($time,"NOTE:read & write conflict----port0 read and port1 write to the same address:%h at the same clock. Write first Mode.",address0);
end

endmodule
