
create_clock -period 60.000 -name tck -waveform {0.000 30.000} -add [get_nets pin_tck]

set_multicycle_path -setup 4 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -hold 3 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -setup 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start
set_multicycle_path -hold 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pin_tck_IBUF]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_IBUF]

set_property PACKAGE_PIN C2 [get_ports sys_rst]                 
set_property IOSTANDARD LVCMOS33 [get_ports sys_rst]
 
set_property PACKAGE_PIN T10 [get_ports init_calib_complete]      
set_property IOSTANDARD LVCMOS33 [get_ports init_calib_complete]  

set_property PACKAGE_PIN J5  [get_ports pin_aresetn]          
set_property IOSTANDARD LVCMOS33 [get_ports pin_aresetn]      

set_property PACKAGE_PIN D10  [get_ports uart_SOUT]          
set_property IOSTANDARD LVCMOS33 [get_ports uart_SOUT]       

set_property PACKAGE_PIN A9  [get_ports uart_SIN]             
set_property IOSTANDARD LVCMOS33 [get_ports uart_SIN]         

##Pmod Header JA
set_property PACKAGE_PIN G13 [get_ports pin_tms]             
set_property IOSTANDARD LVCMOS33 [get_ports pin_tms]        
set_property PULLUP true [get_ports pin_tms]

set_property PACKAGE_PIN B11 [get_ports pin_tdi]             
set_property IOSTANDARD LVCMOS33 [get_ports pin_tdi]         

set_property PACKAGE_PIN D12 [get_ports pin_trst]           
set_property IOSTANDARD LVCMOS33 [get_ports pin_trst]        
set_property PULLDOWN true [get_ports pin_trst]

set_property PACKAGE_PIN D13 [get_ports pin_tdo]             
set_property IOSTANDARD LVCMOS33 [get_ports pin_tdo]         

set_property PACKAGE_PIN B18 [get_ports pin_tck]             
set_property IOSTANDARD LVCMOS33 [get_ports pin_tck]         

