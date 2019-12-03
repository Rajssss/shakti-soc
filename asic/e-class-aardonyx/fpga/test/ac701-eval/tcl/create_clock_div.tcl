#set curdir [ file dirname [ file normalize [ info script ] ] ]
#source $curdir/env.tcl
#
#open_project $ip_project_dir/$ip_project.xpr
#set_property "simulator_language" "Mixed" [current_project]
#set_property "target_language" "Verilog" [current_project]

puts "\nDEBUG: Creating Clock Divider from Clock Wizard\n"

if { [get_ips -quiet clk_divider] eq "" } {
    create_ip -name clk_wiz -vendor xilinx.com -library ip -module_name clk_divider 
} else {
    reset_run clk_divider_synth_1
}

set_property -dict [list \
                        CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
                        CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
                        CONFIG.CLK_IN2_BOARD_INTERFACE {Custom} \
                        CONFIG.PRIMITIVE {MMCM} \
                        CONFIG.RESET_TYPE {ACTIVE_HIGH} \
                        CONFIG.RESET_PORT {reset} \
                        CONFIG.MMCM_DIVCLK_DIVIDE {1} \
                        CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
                        CONFIG.MMCM_COMPENSATION {ZHOLD} \
                        CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
                        CONFIG.PRIM_IN_FREQ {200} \
                        CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
                        CONFIG.CLK_IN2_BOARD_INTERFACE {Custom} \
                        CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
                        CONFIG.CLKOUT1_DRIVES {BUFG} \
                        CONFIG.CLKOUT1_USED {1} ] [get_ips clk_divider]

generate_target {instantiation_template} [get_ips clk_divider]
create_ip_run [get_ips clk_divider]
#launch_run clk_divider_synth_1
#wait_on_run clk_divider_synth_1
#exit
#

