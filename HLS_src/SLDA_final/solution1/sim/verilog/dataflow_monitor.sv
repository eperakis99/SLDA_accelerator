
`include "sample_manager.sv"
`include "csv_file_dump.sv"
`include "df_fifo_monitor.sv"
`include "df_process_monitor.sv"
`include "nodf_module_monitor.sv"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);


    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_SLDA_final.Block_split2_proc_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_SLDA_final.Block_split2_proc_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_SLDA_final.Block_split2_proc_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_SLDA_final.Block_split2_proc_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_SLDA_final.Block_split2_proc_U0.ap_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_SLDA_final.SLDA_update_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_SLDA_final.SLDA_update_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_SLDA_final.SLDA_update_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_SLDA_final.SLDA_update_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_SLDA_final.SLDA_update_U0.ap_start;
    assign process_intf_2.pin_stall = 1'b0;
    assign process_intf_2.pout_stall = 1'b0;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_SLDA_final.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_SLDA_final.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_SLDA_final.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_update_means_fu_1492.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_update_means_fu_1492.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_update_means_fu_1492.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_SLDA_final.Block_split2_proc_U0.grp_init_module_fu_2804.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_weights_with_matrix_mult_fu_1604.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_biases_with_multiple_dot_products_fu_3144.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_biases_with_multiple_dot_products_fu_3144.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_biases_with_multiple_dot_products_fu_3144.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_scores_fu_4576.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_scores_fu_4576.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_SLDA_final.SLDA_update_U0.grp_compute_scores_fu_4576.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;


    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);

    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
