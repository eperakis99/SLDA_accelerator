
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



    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_matrix_matrix_mult_streaming.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_matrix_matrix_mult_streaming.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_matrix_matrix_mult_streaming.ap_done;
    assign module_intf_1.ap_continue = AESL_inst_matrix_matrix_mult_streaming.ap_continue;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_matrix_matrix_mult_streaming.grp_compute_weights_with_matrix_mult_fu_274.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_matrix_matrix_mult_streaming.grp_compute_weights_with_matrix_mult_fu_274.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_matrix_matrix_mult_streaming.grp_compute_weights_with_matrix_mult_fu_274.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_matrix_matrix_mult_streaming.grp_compute_scores_fu_470.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_matrix_matrix_mult_streaming.grp_compute_scores_fu_470.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_matrix_matrix_mult_streaming.grp_compute_scores_fu_470.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_matrix_matrix_mult_streaming.grp_compute_biases_with_multiple_dot_products_fu_574.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_matrix_matrix_mult_streaming.grp_compute_biases_with_multiple_dot_products_fu_574.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_matrix_matrix_mult_streaming.grp_compute_biases_with_multiple_dot_products_fu_574.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);

    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    
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
            if (finish == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
