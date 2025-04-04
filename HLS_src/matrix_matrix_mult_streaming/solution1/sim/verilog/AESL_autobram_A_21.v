// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module AESL_autobram_A_21 (
    Clk_A,
    Rst_A,
    EN_A,
    WEN_A,
    Addr_A,
    Din_A,
    Dout_A,
    Clk_B,
    Rst_B,
    EN_B,
    WEN_B,
    Addr_B,
    Din_B,
    Dout_B,
    ready,
    done
);

//------------------------Parameter----------------------
localparam
    TV_IN  = "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_21.dat", 
    TV_OUT = "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_21.dat"; 
//------------------------Local signal-------------------
parameter DATA_WIDTH = 32'd 128;
parameter ADDR_WIDTH = 32'd 32;
parameter DEPTH = 32'd 32;

// Input and Output
input Clk_A,Clk_B;
input Rst_A,Rst_B;
input EN_A, EN_B;
input [DATA_WIDTH/8 -1 : 0] WEN_A, WEN_B;
input [ADDR_WIDTH - 1 : 0] Addr_A, Addr_B;
input [DATA_WIDTH - 1 : 0] Din_A, Din_B;
output reg [DATA_WIDTH - 1 : 0] Dout_A, Dout_B;
input ready;
input done;
event initialed;
event dut2tb_ap_ready;
event dut2tb_ap_done;
event finished;

// Inner signals
reg [DATA_WIDTH - 1 : 0] mem [0 : DEPTH - 1];
initial begin : initialize_mem
  integer i;
  for (i = 0; i < DEPTH; i = i + 1) begin
      mem[i] = 0;
  end
end
reg writed_flag;
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
  reg [ DATA_WIDTH - 1 : 0] mem_tmp;
  integer transaction_idx;
  integer i;
  transaction_idx = 0;

  wait(Rst_A === 0);
  fp = $fopen(TV_IN,"r");
  if(fp == 0) begin       // Failed to open file
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
      # 0.2;
	    while(ready !== 1) begin
	        @(posedge Clk_A);
          # 0.2;
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
	    read_token(fp, token);
	    if(token != "[[/transaction]]") begin
          $display("ERROR: Simulation using HLS TB failed.");
		    $finish;
	    end
	    read_token(fp, token);
      transaction_idx = transaction_idx + 1;
      @(posedge Clk_A);
  end
  $fclose(fp);
end

// Read data from array to RTL
always @ (posedge Clk_A or Rst_A) begin
  if(Rst_A === 1) begin
	    Dout_A = 0;
  end
  else begin
	    if(EN_A)
		    Dout_A <= mem[Addr_A*8/128];
	end
end
always @ (posedge Clk_B or Rst_B) begin
  if(Rst_B === 1) begin
	    Dout_B = 0;
  end
  else begin
	    if(EN_B)
		    Dout_B <= mem[Addr_B*8/128];
	end
end

//------------------------Write array-------------------

// Write data from RTL to array
always @ (posedge Clk_A) begin : write_data_A
  if(EN_A) begin
          if(WEN_A[0]) begin
              mem[Addr_A*8/DATA_WIDTH][0*8+7 : 0*8] <= Din_A[0*8+7 : 0*8];
          end
          if(WEN_A[1]) begin
              mem[Addr_A*8/DATA_WIDTH][1*8+7 : 1*8] <= Din_A[1*8+7 : 1*8];
          end
          if(WEN_A[2]) begin
              mem[Addr_A*8/DATA_WIDTH][2*8+7 : 2*8] <= Din_A[2*8+7 : 2*8];
          end
          if(WEN_A[3]) begin
              mem[Addr_A*8/DATA_WIDTH][3*8+7 : 3*8] <= Din_A[3*8+7 : 3*8];
          end
          if(WEN_A[4]) begin
              mem[Addr_A*8/DATA_WIDTH][4*8+7 : 4*8] <= Din_A[4*8+7 : 4*8];
          end
          if(WEN_A[5]) begin
              mem[Addr_A*8/DATA_WIDTH][5*8+7 : 5*8] <= Din_A[5*8+7 : 5*8];
          end
          if(WEN_A[6]) begin
              mem[Addr_A*8/DATA_WIDTH][6*8+7 : 6*8] <= Din_A[6*8+7 : 6*8];
          end
          if(WEN_A[7]) begin
              mem[Addr_A*8/DATA_WIDTH][7*8+7 : 7*8] <= Din_A[7*8+7 : 7*8];
          end
          if(WEN_A[8]) begin
              mem[Addr_A*8/DATA_WIDTH][8*8+7 : 8*8] <= Din_A[8*8+7 : 8*8];
          end
          if(WEN_A[9]) begin
              mem[Addr_A*8/DATA_WIDTH][9*8+7 : 9*8] <= Din_A[9*8+7 : 9*8];
          end
          if(WEN_A[10]) begin
              mem[Addr_A*8/DATA_WIDTH][10*8+7 : 10*8] <= Din_A[10*8+7 : 10*8];
          end
          if(WEN_A[11]) begin
              mem[Addr_A*8/DATA_WIDTH][11*8+7 : 11*8] <= Din_A[11*8+7 : 11*8];
          end
          if(WEN_A[12]) begin
              mem[Addr_A*8/DATA_WIDTH][12*8+7 : 12*8] <= Din_A[12*8+7 : 12*8];
          end
          if(WEN_A[13]) begin
              mem[Addr_A*8/DATA_WIDTH][13*8+7 : 13*8] <= Din_A[13*8+7 : 13*8];
          end
          if(WEN_A[14]) begin
              mem[Addr_A*8/DATA_WIDTH][14*8+7 : 14*8] <= Din_A[14*8+7 : 14*8];
          end
          if(WEN_A[15]) begin
              mem[Addr_A*8/DATA_WIDTH][15*8+7 : 15*8] <= Din_A[15*8+7 : 15*8];
          end
  end
end
always @ (posedge Clk_B) begin : write_data_B
  if(EN_B) begin
          if(WEN_B[0]) begin
              mem[Addr_B*8/DATA_WIDTH][0*8+7 : 0*8] <= Din_B[0*8+7 : 0*8];
          end
          if(WEN_B[1]) begin
              mem[Addr_B*8/DATA_WIDTH][1*8+7 : 1*8] <= Din_B[1*8+7 : 1*8];
          end
          if(WEN_B[2]) begin
              mem[Addr_B*8/DATA_WIDTH][2*8+7 : 2*8] <= Din_B[2*8+7 : 2*8];
          end
          if(WEN_B[3]) begin
              mem[Addr_B*8/DATA_WIDTH][3*8+7 : 3*8] <= Din_B[3*8+7 : 3*8];
          end
          if(WEN_B[4]) begin
              mem[Addr_B*8/DATA_WIDTH][4*8+7 : 4*8] <= Din_B[4*8+7 : 4*8];
          end
          if(WEN_B[5]) begin
              mem[Addr_B*8/DATA_WIDTH][5*8+7 : 5*8] <= Din_B[5*8+7 : 5*8];
          end
          if(WEN_B[6]) begin
              mem[Addr_B*8/DATA_WIDTH][6*8+7 : 6*8] <= Din_B[6*8+7 : 6*8];
          end
          if(WEN_B[7]) begin
              mem[Addr_B*8/DATA_WIDTH][7*8+7 : 7*8] <= Din_B[7*8+7 : 7*8];
          end
          if(WEN_B[8]) begin
              mem[Addr_B*8/DATA_WIDTH][8*8+7 : 8*8] <= Din_B[8*8+7 : 8*8];
          end
          if(WEN_B[9]) begin
              mem[Addr_B*8/DATA_WIDTH][9*8+7 : 9*8] <= Din_B[9*8+7 : 9*8];
          end
          if(WEN_B[10]) begin
              mem[Addr_B*8/DATA_WIDTH][10*8+7 : 10*8] <= Din_B[10*8+7 : 10*8];
          end
          if(WEN_B[11]) begin
              mem[Addr_B*8/DATA_WIDTH][11*8+7 : 11*8] <= Din_B[11*8+7 : 11*8];
          end
          if(WEN_B[12]) begin
              mem[Addr_B*8/DATA_WIDTH][12*8+7 : 12*8] <= Din_B[12*8+7 : 12*8];
          end
          if(WEN_B[13]) begin
              mem[Addr_B*8/DATA_WIDTH][13*8+7 : 13*8] <= Din_B[13*8+7 : 13*8];
          end
          if(WEN_B[14]) begin
              mem[Addr_B*8/DATA_WIDTH][14*8+7 : 14*8] <= Din_B[14*8+7 : 14*8];
          end
          if(WEN_B[15]) begin
              mem[Addr_B*8/DATA_WIDTH][15*8+7 : 15*8] <= Din_B[15*8+7 : 15*8];
          end
  end
end

// Write data from array to file
initial begin : write_file_proc
	integer fp;
	integer transaction_num;
  reg [ 8*5 : 1] str;
	integer i;
	transaction_num = 0;
  writed_flag = 1;
  wait(Rst_A === 0);
	while(1) begin
      # 0.1;
	    while(done !== 1) begin
	        @(posedge Clk_A);
          # 0.1;
      end
	    fp = $fopen(TV_OUT, "a");
	    if(fp == 0) begin       // Failed to open file
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
      @(posedge Clk_A);
	end
end

endmodule
