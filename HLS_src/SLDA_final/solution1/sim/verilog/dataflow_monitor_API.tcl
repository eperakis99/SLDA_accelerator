
proc df_record_move {} {
    set fifo_record_directory "../../.autopilot/db/channel_depth_info"
    set process_record_directory "../../.autopilot/db/process_stalling_info"

    if {[file isdirectory $fifo_record_directory] == 0} {
        file mkdir $fifo_record_directory
    }

    if {[file isdirectory $process_record_directory] == 0} {
        file mkdir $process_record_directory
    }
    exec zip process.zip -m {*}[glob status*.csv module_status*.csv]
    df_move_file_type "process.zip" $process_record_directory
 exec zip nouse.zip -m {*}[glob *.csv]
}

proc df_move_file_type {file_format target_dir} {
    set file_list [glob $file_format]
    foreach file_item $file_list {
        file rename -force $file_item [file join $target_dir $file_item]
    }
}
