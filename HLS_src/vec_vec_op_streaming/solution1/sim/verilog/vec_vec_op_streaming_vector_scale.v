// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module vec_vec_op_streaming_vector_scale (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        vec1_TDATA,
        vec1_TVALID,
        vec1_TREADY,
        vec1_TKEEP,
        vec1_TSTRB,
        vec1_TUSER,
        vec1_TLAST,
        vec1_TID,
        vec1_TDEST,
        vec_out_TDATA,
        vec_out_TVALID,
        vec_out_TREADY,
        vec_out_TKEEP,
        vec_out_TSTRB,
        vec_out_TUSER,
        vec_out_TLAST,
        vec_out_TID,
        vec_out_TDEST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] vec1_TDATA;
input   vec1_TVALID;
output   vec1_TREADY;
input  [15:0] vec1_TKEEP;
input  [15:0] vec1_TSTRB;
input  [1:0] vec1_TUSER;
input  [0:0] vec1_TLAST;
input  [4:0] vec1_TID;
input  [5:0] vec1_TDEST;
output  [127:0] vec_out_TDATA;
output   vec_out_TVALID;
input   vec_out_TREADY;
output  [15:0] vec_out_TKEEP;
output  [15:0] vec_out_TSTRB;
output  [1:0] vec_out_TUSER;
output  [0:0] vec_out_TLAST;
output  [4:0] vec_out_TID;
output  [5:0] vec_out_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg vec1_TREADY;
reg vec_out_TVALID;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    vec1_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln153_fu_198_p2;
reg    vec_out_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln153_reg_524;
reg   [3:0] j_reg_181;
wire   [3:0] add_ln153_fu_192_p2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln160_fu_286_p2;
reg   [31:0] add_ln160_reg_528;
wire   [31:0] add_ln160_1_fu_362_p2;
reg   [31:0] add_ln160_1_reg_533;
wire   [31:0] add_ln160_2_fu_404_p2;
reg   [31:0] add_ln160_2_reg_538;
wire   [31:0] add_ln160_3_fu_446_p2;
reg   [31:0] add_ln160_3_reg_543;
reg   [15:0] trunc_ln_reg_548;
reg   [15:0] tmp_8_reg_553;
reg   [1:0] trunc_ln308_7_reg_558;
reg   [0:0] tmp_reg_563;
reg   [4:0] trunc_ln308_9_reg_568;
reg   [5:0] trunc_ln308_s_reg_573;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire   [28:0] trunc_ln160_fu_262_p1;
wire   [30:0] trunc_ln160_1_fu_274_p1;
wire   [31:0] shl_ln_fu_266_p3;
wire   [31:0] shl_ln160_1_fu_278_p3;
wire   [189:0] and_ln_cast_fu_292_p9;
wire   [0:0] cmp25_fu_256_p2;
wire   [189:0] or_ln161_fu_312_p2;
wire   [189:0] or_ln155_4_cast_fu_232_p11;
wire   [189:0] select_ln161_fu_318_p3;
wire   [28:0] tmp_2_fu_326_p4;
wire   [30:0] tmp_3_fu_344_p4;
wire   [31:0] and_ln1_fu_336_p3;
wire   [31:0] and_ln160_1_fu_354_p3;
wire   [28:0] tmp_4_fu_368_p4;
wire   [30:0] tmp_5_fu_386_p4;
wire   [31:0] and_ln160_2_fu_378_p3;
wire   [31:0] and_ln160_3_fu_396_p3;
wire   [28:0] tmp_6_fu_410_p4;
wire   [30:0] tmp_7_fu_428_p4;
wire   [31:0] and_ln160_4_fu_420_p3;
wire   [31:0] and_ln160_5_fu_438_p3;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_reg_181 <= 4'd0;
    end else if (((icmp_ln153_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_181 <= add_ln153_fu_192_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln153_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln160_1_reg_533[31 : 1] <= add_ln160_1_fu_362_p2[31 : 1];
        add_ln160_2_reg_538[31 : 1] <= add_ln160_2_fu_404_p2[31 : 1];
        add_ln160_3_reg_543[31 : 1] <= add_ln160_3_fu_446_p2[31 : 1];
        add_ln160_reg_528[31 : 1] <= add_ln160_fu_286_p2[31 : 1];
        tmp_8_reg_553 <= {{select_ln161_fu_318_p3[143:128]}};
        tmp_reg_563 <= select_ln161_fu_318_p3[32'd168];
        trunc_ln308_7_reg_558 <= {{select_ln161_fu_318_p3[161:160]}};
        trunc_ln308_9_reg_568 <= {{select_ln161_fu_318_p3[180:176]}};
        trunc_ln308_s_reg_573 <= {{select_ln161_fu_318_p3[189:184]}};
        trunc_ln_reg_548 <= {{select_ln161_fu_318_p3[159:144]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln153_reg_524 <= icmp_ln153_fu_198_p2;
    end
end

always @ (*) begin
    if ((icmp_ln153_fu_198_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln153_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec1_TDATA_blk_n = vec1_TVALID;
    end else begin
        vec1_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln153_fu_198_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec1_TREADY = 1'b1;
    end else begin
        vec1_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln153_reg_524 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_out_TDATA_blk_n = vec_out_TREADY;
    end else begin
        vec_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln153_reg_524 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_out_TVALID = 1'b1;
    end else begin
        vec_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln153_fu_198_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln153_fu_198_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln153_fu_192_p2 = (j_reg_181 + 4'd1);

assign add_ln160_1_fu_362_p2 = (and_ln1_fu_336_p3 + and_ln160_1_fu_354_p3);

assign add_ln160_2_fu_404_p2 = (and_ln160_2_fu_378_p3 + and_ln160_3_fu_396_p3);

assign add_ln160_3_fu_446_p2 = (and_ln160_4_fu_420_p3 + and_ln160_5_fu_438_p3);

assign add_ln160_fu_286_p2 = (shl_ln_fu_266_p3 + shl_ln160_1_fu_278_p3);

assign and_ln160_1_fu_354_p3 = {{tmp_3_fu_344_p4}, {1'd0}};

assign and_ln160_2_fu_378_p3 = {{tmp_4_fu_368_p4}, {3'd0}};

assign and_ln160_3_fu_396_p3 = {{tmp_5_fu_386_p4}, {1'd0}};

assign and_ln160_4_fu_420_p3 = {{tmp_6_fu_410_p4}, {3'd0}};

assign and_ln160_5_fu_438_p3 = {{tmp_7_fu_428_p4}, {1'd0}};

assign and_ln1_fu_336_p3 = {{tmp_2_fu_326_p4}, {3'd0}};

assign and_ln_cast_fu_292_p9 = {{{{{{{{vec1_TDEST}, {3'd0}}, {vec1_TID}}, {14'd0}}, {vec1_TUSER}}, {vec1_TSTRB}}, {vec1_TKEEP}}, {vec1_TDATA}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln153_reg_524 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (vec_out_TREADY == 1'b0)) | ((icmp_ln153_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (vec1_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln153_reg_524 == 1'd0) & (vec_out_TREADY == 1'b0)))) | ((icmp_ln153_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (vec1_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln153_reg_524 == 1'd0) & (vec_out_TREADY == 1'b0)))) | ((icmp_ln153_fu_198_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (vec1_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((icmp_ln153_fu_198_p2 == 1'd0) & (vec1_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln153_reg_524 == 1'd0) & (vec_out_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln153_reg_524 == 1'd0) & (vec_out_TREADY == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign cmp25_fu_256_p2 = ((j_reg_181 == 4'd7) ? 1'b1 : 1'b0);

assign icmp_ln153_fu_198_p2 = ((j_reg_181 == 4'd8) ? 1'b1 : 1'b0);

assign or_ln155_4_cast_fu_232_p11 = {{{{{{{{{{vec1_TDEST}, {3'd0}}, {vec1_TID}}, {7'd0}}, {vec1_TLAST}}, {6'd0}}, {vec1_TUSER}}, {vec1_TSTRB}}, {vec1_TKEEP}}, {vec1_TDATA}};

assign or_ln161_fu_312_p2 = (190'd374144419156711147060143317175368453031918731001856 | and_ln_cast_fu_292_p9);

assign select_ln161_fu_318_p3 = ((cmp25_fu_256_p2[0:0] == 1'b1) ? or_ln161_fu_312_p2 : or_ln155_4_cast_fu_232_p11);

assign shl_ln160_1_fu_278_p3 = {{trunc_ln160_1_fu_274_p1}, {1'd0}};

assign shl_ln_fu_266_p3 = {{trunc_ln160_fu_262_p1}, {3'd0}};

assign tmp_2_fu_326_p4 = {{select_ln161_fu_318_p3[60:32]}};

assign tmp_3_fu_344_p4 = {{select_ln161_fu_318_p3[62:32]}};

assign tmp_4_fu_368_p4 = {{select_ln161_fu_318_p3[92:64]}};

assign tmp_5_fu_386_p4 = {{select_ln161_fu_318_p3[94:64]}};

assign tmp_6_fu_410_p4 = {{select_ln161_fu_318_p3[124:96]}};

assign tmp_7_fu_428_p4 = {{select_ln161_fu_318_p3[126:96]}};

assign trunc_ln160_1_fu_274_p1 = vec1_TDATA[30:0];

assign trunc_ln160_fu_262_p1 = vec1_TDATA[28:0];

assign vec_out_TDATA = {{{{add_ln160_3_reg_543}, {add_ln160_2_reg_538}}, {add_ln160_1_reg_533}}, {add_ln160_reg_528}};

assign vec_out_TDEST = trunc_ln308_s_reg_573;

assign vec_out_TID = trunc_ln308_9_reg_568;

assign vec_out_TKEEP = tmp_8_reg_553;

assign vec_out_TLAST = tmp_reg_563;

assign vec_out_TSTRB = trunc_ln_reg_548;

assign vec_out_TUSER = trunc_ln308_7_reg_558;

always @ (posedge ap_clk) begin
    add_ln160_reg_528[0] <= 1'b0;
    add_ln160_1_reg_533[0] <= 1'b0;
    add_ln160_2_reg_538[0] <= 1'b0;
    add_ln160_3_reg_543[0] <= 1'b0;
end

endmodule //vec_vec_op_streaming_vector_scale
