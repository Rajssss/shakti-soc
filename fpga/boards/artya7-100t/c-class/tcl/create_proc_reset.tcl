puts "\nDEBUG: Creating Processor Reset Module\n"

if { [get_ips -quiet proc_sys_reset_0] eq "" } {
    create_ip -name proc_sys_reset -vendor xilinx.com -library ip -version 5.0 -module_name proc_sys_reset_0
} else {
    reset_run proc_sys_reset_0
}

set_property -dict [list CONFIG.RESET_BOARD_INTERFACE {reset} CONFIG.C_AUX_RESET_HIGH {0} \
  CONFIG.C_EXT_RESET_HIGH {0}] [get_ips proc_sys_reset_0]
generate_target {instantiation_template} [get_ips proc_sys_reset_0]
create_ip_run [get_ips proc_sys_reset_0]

