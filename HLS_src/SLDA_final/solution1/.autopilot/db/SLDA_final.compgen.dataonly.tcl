# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
reset { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
init { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
ready_r_i { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ready_r_o { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
complete { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict CTRL $port_CTRL


