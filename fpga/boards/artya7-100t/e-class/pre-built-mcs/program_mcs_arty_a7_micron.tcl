#set curdir [ file dirname [ file normalize [ info script ] ] ]
#source $curdir/env.tcl
#
#set jobs [lindex $argv 0]
#open_project $core_project_dir/$core_project.xpr
#
#set top_module [get_property TOP [get_filesets sources_1]]
#
#set bit $core_project_dir/$core_project.runs/core_impl_1/$top_module.bit
#set bitload "up 0x00000000 $bit"
#
#puts "BITSTREAM: $bit  MCS: $mcs"
##write_cfgmem  -format mcs -size 16 -interface SPIx1 -loadbit $bitload  -force -file $mcs;
#set_property PROGRAM.FILE $bit [get_hw_devices xc7a100t_0]

set mcs fpga_top.mcs
open_hw
connect_hw_server
open_hw_target
current_hw_device [get_hw_devices xc7a100t_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7a100t_0] 0]
create_hw_cfgmem -hw_device [get_hw_devices xc7a100t_0] -mem_dev [lindex [get_cfgmem_parts {mt25ql128-spi-x1_x2_x4}] 0]
set_property PROGRAM.ADDRESS_RANGE  {entire_device} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]

set_property PROGRAM.FILES $mcs [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]

set_property PROGRAM.PRM_FILE {} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
startgroup
create_hw_bitstream -hw_device [lindex [get_hw_devices xc7a100t_0] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xc7a100t_0] 0]]; program_hw_devices [lindex [get_hw_devices xc7a100t_0] 0]; refresh_hw_device [lindex [get_hw_devices xc7a100t_0] 0];
program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
endgroup

disconnect_hw_server localhost:3121;
puts "INFO: FPGA CFG MEM  has been programmed with the given bitstream"
puts "Please Disconnect FPGA from USB Port to use"
exit
