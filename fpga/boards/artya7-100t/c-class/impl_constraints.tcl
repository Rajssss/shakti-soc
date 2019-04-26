set_multicycle_path -setup 4 -from [get_clocks tck] -to [get_clocks clk_out1_clk_wiz_0] -end
set_multicycle_path -hold 3 -from [get_clocks tck] -to [get_clocks clk_out1_clk_wiz_0] -end
set_multicycle_path -setup 4 -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks tck] -start
set_multicycle_path -hold 4 -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks tck] -start

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pin_tck_IBUF]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_IBUF]

set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports sys_rst]              #IO_L16P_T2_35 Sch=ck_rst
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports init_calib_complete] #IO_L24N_T3_A00_D16_14 Sch=led[7]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports pin_aresetn]          #IO_25_35 Sch=led[5]

set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports uart_SOUT]           #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports uart_SIN]             #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

##Pmod Header JA
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports pin_tms]             #IO_0_15 Sch=ja[1]
set_property PULLUP true [get_ports pin_tms]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports pin_tdi]             #IO_L4P_T0_15 Sch=ja[2]
set_property -dict {PACKAGE_PIN D12 IOSTANDARD LVCMOS33} [get_ports pin_trst]            #IO_L6P_T0_15 Sch=ja[4]
set_property PULLDOWN true [get_ports pin_trst]
set_property -dict {PACKAGE_PIN D13 IOSTANDARD LVCMOS33} [get_ports pin_tdo]             #IO_L6N_T0_VREF_15 Sch=ja[7]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports pin_tck]             #IO_L10P_T1_AD11P_15 Sch=ja[8]

