set curdir [ file dirname [ file normalize [ info script ] ] ]
source $curdir/env.tcl

if { $argc != 4 } {
  puts "ERROR: Please pass the top module name that needs to be synthesized along with the fpga part"
  puts "       -tclargs <fpga-part-no> <xlen> <isa> <jobs>"
  exit 2
}

# set variable based on the arguments passed
set fpga_part [lindex $argv 0]
set mul_width [lindex $argv 1]
set isa [lindex $argv 2]
set jobs [lindex $argv 3]

puts "\nDEBUG: Generating IPs for FPGA:$fpga_part ISA:$isa JOBS:$jobs\n"

# extract base version of Vivado
set base_version [string range [version -short] 0 3]

# create folders
file mkdir $fpga_dir

# create project
create_project -force $ip_project -dir $ip_project_dir -part [lindex $argv 0]

set_property "simulator_language" "Mixed" [current_project]
set_property "target_language" "Verilog" [current_project]
set_property board_part digilentinc.com:arty-a7-100:part0:1.0 [current_project]

# source IP tcls
source $home_dir/tcl/create_axi_converter.tcl
source $home_dir/tcl/create_clock_div.tcl
source $home_dir/tcl/create_mig.tcl

# capture all runs except the default synth_1
set run_list [get_runs *_synth_1]

# launch all runs parallel. $jobs is argument from user
launch_runs $run_list -jobs $jobs

# Wait for each run to complete
foreach my_run $run_list {wait_on_run $my_run}
exit
