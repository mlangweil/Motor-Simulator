# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
lowerCutoff { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
upperCutoff { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
samplingRate { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
bram { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
}
dict set axilite_register_dict control $port_control


