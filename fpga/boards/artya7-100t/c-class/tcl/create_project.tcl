set curdir [ file dirname [ file normalize [ info script ] ] ]
source $curdir/env.tcl

if { $argc != 3 } {
  puts "Please pass the top module name that needs to be synthesized along with the fpga part"
  puts " -tclargs <top-module> <xc7a100tcsg324-1> <riscv-isa>"
  exit 2
} else {
  puts "Synthesizing with Top Module: [lindex $argv 0] for ISA: [lindex $argv 2] "
}

set top_module [lindex $argv 0]
set fpga_part [lindex $argv 1]
set isa [lindex $argv 2]
set base_version [string range [version -short] 0 3]
# create folders
file mkdir $fpga_dir

# create project
create_project -force $core_project -dir $core_project_dir

# Set project properties
set project_obj [get_projects $core_project]
set_property "default_lib" "xil_defaultlib" $project_obj
set_property "simulator_language" "Mixed" $project_obj
set_property board_part digilentinc.com:arty-a7-100:part0:1.0 [current_project]

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
add_files -norecurse -fileset [get_filesets sources_1] $home_dir/verilog/ ./fpga_top.v

# add include path
set_property include_dirs $home_dir/verilog/ [get_filesets sources_1]

# Set 'sources_1' fileset properties
set_property "top" $top_module [get_filesets sources_1]

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Add/Import constrs file and set constrs file properties
add_files -norecurse -fileset constrs_1 $home_dir/constr_synth.xdc

# generate all IP source code
if {[string first "M" $isa] != -1} {
  import_ip $ip_project_dir/manage_ip.srcs/sources_1/ip/multiplier/multiplier.xci
  generate_target all [get_ips]
}
import_ip $ip_project_dir/manage_ip.srcs/sources_1/ip/clk_divider/clk_divider.xci
import_ip $ip_project_dir/manage_ip.srcs/sources_1/ip/clk_converter/clk_converter.xci
import_ip $ip_project_dir/manage_ip.srcs/sources_1/ip/mig_ddr3/mig_ddr3.xci

# force create the synth_1 path (need to make soft link in Makefile)
if {[string equal [get_runs -quiet core_synth_1] ""]} {
    create_run -flow "Vivado Synthesis $base_version" \
    -strategy "Vivado Synthesis Defaults" -constrset constrs_1 core_synth_1
} else {
    set_property strategy "Vivado Synthesis Defaults" [get_runs core_synth_1]
    set_property flow "Vivado Synthesis $base_version" [get_runs core_synth_1]
}
# do not flatten design
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY none [get_runs core_synth_1]
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-verilog_define BSV_RESET_FIFO_HEAD -verilog_define BSV_RESET_FIFO_ARRAY} -objects [get_runs core_synth_1]

current_run -synthesis [get_runs core_synth_1]
#et_property strategy Flow_PerfOptimized_high [get_runs core_synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet core_impl_1] ""]} {
  create_run -flow "Vivado Implementation $base_version" -strategy\
 "Vivado Implementation Defaults" -constrset constrs_1 -parent_run core_synth_1 core_impl_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs core_impl_1]
  set_property flow "Vivado Implementation $base_version" [get_runs core_impl_1]
}
set obj [get_runs core_impl_1]
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

# set the current impl run
current_run -implementation [get_runs core_impl_1]

puts "INFO: Project created:project_1"
exit
