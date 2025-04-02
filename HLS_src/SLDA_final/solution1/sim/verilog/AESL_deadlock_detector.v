`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input reset,
    input all_finish,
    input clock);

    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [0:0] in_chan_dep_vld_vec_0;
    wire [1:0] in_chan_dep_data_vec_0;
    wire [0:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [1:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [1:0] dep_chan_data_1_0;
    wire token_1_0;
    wire [0:0] proc_1_data_FIFO_blk;
    wire [0:0] proc_1_data_PIPO_blk;
    wire [0:0] proc_1_start_FIFO_blk;
    wire [0:0] proc_1_TLF_FIFO_blk;
    wire [0:0] proc_1_input_sync_blk;
    wire [0:0] proc_1_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_1;
    reg [0:0] proc_dep_vld_vec_1_reg;
    wire [0:0] in_chan_dep_vld_vec_1;
    wire [1:0] in_chan_dep_data_vec_1;
    wire [0:0] token_in_vec_1;
    wire [0:0] out_chan_dep_vld_vec_1;
    wire [1:0] out_chan_dep_data_1;
    wire [0:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [1:0] dep_chan_data_0_1;
    wire token_0_1;
    wire [1:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    wire [1:0] origin;

    reg ap_done_reg_0;// for module AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done;
        end
    end

    reg ap_done_reg_1;// for module AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_done;
        end
    end

    reg ap_done_reg_2;// for module AESL_inst_SLDA_final.Block_split2_proc_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= AESL_inst_SLDA_final.Block_split2_proc_U0.ap_done & ~AESL_inst_SLDA_final.Block_split2_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module AESL_inst_SLDA_final.SLDA_update_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= AESL_inst_SLDA_final.SLDA_update_U0.ap_done & ~AESL_inst_SLDA_final.SLDA_update_U0.ap_continue;
        end
    end

    // Process: AESL_inst_SLDA_final.Block_split2_proc_U0
    AESL_deadlock_detect_unit #(2, 0, 1, 1) AESL_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0;
    assign proc_0_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_SLDA_final.lambda_V_0_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_0_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_1_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_1_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_2_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_2_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_3_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_3_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_4_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_4_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_5_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_5_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_6_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_6_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_7_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_7_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_8_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_8_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_9_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_9_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_10_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_10_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_11_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_11_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_12_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_12_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_13_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_13_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_14_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_14_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_15_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_15_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_16_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_16_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_17_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_17_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_18_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_18_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_19_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_19_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_20_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_20_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_21_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_21_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_22_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_22_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_23_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_23_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_24_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_24_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_25_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_25_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_26_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_26_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_27_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_27_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_28_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_28_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_29_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_29_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_30_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_30_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_31_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_31_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_32_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_32_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_33_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_33_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_34_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_34_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_35_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_35_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_36_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_36_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_37_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_37_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_38_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_38_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_39_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_39_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_40_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_40_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_41_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_41_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_42_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_42_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_43_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_43_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_44_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_44_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_45_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_45_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_46_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_46_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_47_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_47_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_48_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_48_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_49_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_49_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_50_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_50_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_51_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_51_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_52_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_52_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_53_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_53_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_54_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_54_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_55_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_55_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_56_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_56_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_57_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_57_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_58_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_58_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_59_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_59_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_60_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_60_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_61_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_61_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_62_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_62_U.t_read) | (~AESL_inst_SLDA_final.lambda_V_63_U.i_full_n & AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done & ap_done_reg_0 & ~AESL_inst_SLDA_final.lambda_V_63_U.t_read);
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (AESL_inst_SLDA_final.ap_sync_Block_split2_proc_U0_ap_ready & AESL_inst_SLDA_final.Block_split2_proc_U0.ap_idle & ~AESL_inst_SLDA_final.ap_sync_SLDA_update_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0 | (ap_done_reg_2 & AESL_inst_SLDA_final.Block_split2_proc_U0.ap_done & ~AESL_inst_SLDA_final.SLDA_update_U0.ap_done);
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[1 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];

    // Process: AESL_inst_SLDA_final.SLDA_update_U0
    AESL_deadlock_detect_unit #(2, 1, 1, 1) AESL_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_SLDA_final.lambda_V_0_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_0_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_1_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_1_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_10_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_10_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_11_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_11_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_12_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_12_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_13_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_13_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_14_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_14_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_15_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_15_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_16_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_16_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_17_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_17_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_18_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_18_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_19_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_19_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_2_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_2_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_20_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_20_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_21_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_21_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_22_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_22_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_23_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_23_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_24_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_24_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_25_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_25_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_26_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_26_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_27_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_27_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_28_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_28_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_29_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_29_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_3_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_3_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_30_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_30_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_31_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_31_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_32_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_32_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_33_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_33_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_34_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_34_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_35_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_35_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_36_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_36_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_37_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_37_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_38_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_38_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_39_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_39_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_4_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_4_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_40_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_40_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_41_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_41_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_42_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_42_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_43_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_43_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_44_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_44_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_45_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_45_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_46_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_46_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_47_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_47_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_48_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_48_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_49_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_49_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_5_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_5_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_50_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_50_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_51_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_51_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_52_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_52_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_53_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_53_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_54_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_54_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_55_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_55_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_56_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_56_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_57_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_57_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_58_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_58_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_59_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_59_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_6_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_6_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_60_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_60_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_61_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_61_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_62_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_62_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_63_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_63_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_7_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_7_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_8_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_8_U.i_write) | (~AESL_inst_SLDA_final.lambda_V_9_U.t_empty_n & AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_idle & ~AESL_inst_SLDA_final.lambda_V_9_U.i_write);
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (AESL_inst_SLDA_final.ap_sync_SLDA_update_U0_ap_ready & AESL_inst_SLDA_final.SLDA_update_U0.ap_idle & ~AESL_inst_SLDA_final.ap_sync_Block_split2_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0 | (ap_done_reg_3 & AESL_inst_SLDA_final.SLDA_update_U0.ap_done & ~AESL_inst_SLDA_final.Block_split2_proc_U0.ap_done);
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[1 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];


    wire [1:0] dl_in_vec_comb = dl_in_vec & ~{1{all_finish}};
    AESL_deadlock_report_unit #(2) AESL_deadlock_report_unit_inst (
        .reset(reset),
        .clock(clock),
        .dl_in_vec(dl_in_vec_comb),
        .ap_done_reg_0(ap_done_reg_0),
        .ap_done_reg_1(ap_done_reg_1),
        .ap_done_reg_2(ap_done_reg_2),
        .ap_done_reg_3(ap_done_reg_3),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
