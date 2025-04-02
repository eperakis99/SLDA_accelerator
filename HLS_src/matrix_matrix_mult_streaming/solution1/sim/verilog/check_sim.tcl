# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.matrix_matrix_mult_streaming.autotvin_A_0.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_1.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_2.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_3.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_4.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_5.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_6.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_7.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_8.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_9.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_10.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_11.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_12.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_13.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_14.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_15.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_16.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_17.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_18.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_19.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_20.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_21.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_22.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_23.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_24.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_25.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_26.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_27.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_28.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_29.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_30.dat"
         "c.matrix_matrix_mult_streaming.autotvin_A_31.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_0.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_1.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_2.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_3.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_4.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_5.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_6.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_7.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_8.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_9.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_10.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_11.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_12.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_13.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_14.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_15.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_16.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_17.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_18.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_19.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_20.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_21.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_22.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_23.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_24.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_25.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_26.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_27.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_28.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_29.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_30.dat"
         "c.matrix_matrix_mult_streaming.autotvin_B_31.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat"
         "c.matrix_matrix_mult_streaming.autotvin_scores.dat"
         "c.matrix_matrix_mult_streaming.autotvout_scores.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 320 COSIM_320_995
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.matrix_matrix_mult_streaming.autotvout_scores.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 303 COSIM_303_997
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
