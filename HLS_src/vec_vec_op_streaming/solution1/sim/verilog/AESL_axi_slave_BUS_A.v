// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_BUS_A (
    clk,
    reset,
    TRAN_s_axi_BUS_A_AWADDR,
    TRAN_s_axi_BUS_A_AWVALID,
    TRAN_s_axi_BUS_A_AWREADY,
    TRAN_s_axi_BUS_A_WVALID,
    TRAN_s_axi_BUS_A_WREADY,
    TRAN_s_axi_BUS_A_WDATA,
    TRAN_s_axi_BUS_A_WSTRB,
    TRAN_s_axi_BUS_A_ARADDR,
    TRAN_s_axi_BUS_A_ARVALID,
    TRAN_s_axi_BUS_A_ARREADY,
    TRAN_s_axi_BUS_A_RVALID,
    TRAN_s_axi_BUS_A_RREADY,
    TRAN_s_axi_BUS_A_RDATA,
    TRAN_s_axi_BUS_A_RRESP,
    TRAN_s_axi_BUS_A_BVALID,
    TRAN_s_axi_BUS_A_BREADY,
    TRAN_s_axi_BUS_A_BRESP,
    TRAN_BUS_A_write_data_finish,
    TRAN_BUS_A_start_in,
    TRAN_BUS_A_idle_out,
    TRAN_BUS_A_ready_out,
    TRAN_BUS_A_ready_in,
    TRAN_BUS_A_done_out,
    TRAN_BUS_A_write_start_in   ,
    TRAN_BUS_A_write_start_finish,
    TRAN_BUS_A_interrupt,
    TRAN_BUS_A_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_op "../tv/cdatafile/c.vec_vec_op_streaming.autotvin_op.dat"
parameter ADDR_WIDTH = 5;
parameter DATA_WIDTH = 32;
parameter op_DEPTH = 1;
reg [31 : 0] op_OPERATE_DEPTH = 0;
parameter op_c_bitwidth = 8;
parameter START_ADDR = 0;
parameter vec_vec_op_streaming_continue_addr = 0;
parameter vec_vec_op_streaming_auto_start_addr = 0;
parameter op_data_in_addr = 16;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_BUS_A_AWADDR;
output  TRAN_s_axi_BUS_A_AWVALID;
input  TRAN_s_axi_BUS_A_AWREADY;
output  TRAN_s_axi_BUS_A_WVALID;
input  TRAN_s_axi_BUS_A_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_BUS_A_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_BUS_A_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_BUS_A_ARADDR;
output  TRAN_s_axi_BUS_A_ARVALID;
input  TRAN_s_axi_BUS_A_ARREADY;
input  TRAN_s_axi_BUS_A_RVALID;
output  TRAN_s_axi_BUS_A_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_BUS_A_RDATA;
input [2 - 1 : 0] TRAN_s_axi_BUS_A_RRESP;
input  TRAN_s_axi_BUS_A_BVALID;
output  TRAN_s_axi_BUS_A_BREADY;
input [2 - 1 : 0] TRAN_s_axi_BUS_A_BRESP;
output TRAN_BUS_A_write_data_finish;
input     clk;
input     reset;
input     TRAN_BUS_A_start_in;
output    TRAN_BUS_A_done_out;
output    TRAN_BUS_A_ready_out;
input     TRAN_BUS_A_ready_in;
output    TRAN_BUS_A_idle_out;
input  TRAN_BUS_A_write_start_in   ;
output TRAN_BUS_A_write_start_finish;
input     TRAN_BUS_A_interrupt;
input     TRAN_BUS_A_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_op [op_DEPTH - 1 : 0];
reg op_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
//write op reg
reg [31 : 0] write_op_count = 0;
reg write_op_run_flag = 0;
reg write_one_op_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_BUS_A_AWADDR = AWADDR_reg;
assign TRAN_s_axi_BUS_A_AWVALID = AWVALID_reg;
assign TRAN_s_axi_BUS_A_WVALID = WVALID_reg;
assign TRAN_s_axi_BUS_A_WDATA = WDATA_reg;
assign TRAN_s_axi_BUS_A_WSTRB = WSTRB_reg;
assign TRAN_s_axi_BUS_A_ARADDR = ARADDR_reg;
assign TRAN_s_axi_BUS_A_ARVALID = ARVALID_reg;
assign TRAN_s_axi_BUS_A_RREADY = RREADY_reg;
assign TRAN_s_axi_BUS_A_BREADY = BREADY_reg;
assign TRAN_BUS_A_write_start_finish = AESL_write_start_finish;
assign TRAN_BUS_A_done_out = AESL_done_index_reg;
assign TRAN_BUS_A_ready_out = AESL_ready_out_index_reg;
assign TRAN_BUS_A_idle_out = AESL_idle_index_reg;
assign TRAN_BUS_A_write_data_finish = 1 & op_write_data_finish;
always @(TRAN_BUS_A_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_BUS_A_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_BUS_A_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_BUS_A_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_BUS_A_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_BUS_A_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_BUS_A_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_BUS_A_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_BUS_A_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_BUS_A_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        op_write_data_finish <= 0;
        write_op_run_flag <= 0; 
        write_op_count = 0;
        count_operate_depth_by_bitwidth_and_depth (op_c_bitwidth, op_DEPTH, op_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS_A_start_in === 1) begin
            op_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_op_run_flag <= 1; 
            write_op_count = 0;
        end
        if (write_one_op_data_done === 1) begin
            write_op_count = write_op_count + 1;
            if (write_op_count == op_OPERATE_DEPTH) begin
                write_op_run_flag <= 0; 
                op_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_op
    integer write_op_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] op_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = op_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_op_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write op data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (op_c_bitwidth < 32) begin
                        op_data_tmp_reg = mem_op[write_op_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < op_c_bitwidth) begin
                                op_data_tmp_reg[j] = mem_op[write_op_count][i*32 + j];
                            end
                            else begin
                                op_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (op_data_in_addr + write_op_count * four_byte_num * 4 + i * 4, op_data_tmp_reg, write_op_resp);
                end
                process_busy = 0;
                write_one_op_data_done <= 1;
                @(posedge clk);
                write_one_op_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_BUS_A_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 2;
    while (1) begin
        process_2_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_2_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_op_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [op_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (op_c_bitwidth , factor);
  fp = $fopen(`TV_IN_op ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_op); 
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
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < op_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_op [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_op [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_op [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_op [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_op [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
