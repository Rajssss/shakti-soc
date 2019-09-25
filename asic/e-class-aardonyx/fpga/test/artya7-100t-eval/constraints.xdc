## This file is a general .xdc for the Arty A7-100 Rev. D
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
create_clock -period 60.000 -name tck -waveform {0.000 30.000} -add [get_nets pin_tck]

set_multicycle_path -setup 4 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -hold 3 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -setup 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start
set_multicycle_path -hold 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pin_tck_IBUF]
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_IBUF]

## Switches
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { test_mode }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { boot_mode[0] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { boot_mode[1] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]

##Pmod Header JA for JTAG
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { pin_tms }]; #IO_0_15 Sch=ja[1]
set_property PULLUP   true [get_ports { pin_tms }]; 
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { pin_tdi }]; #IO_L4P_T0_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { pin_trst }]; #IO_L6P_T0_15 Sch=ja[4]
set_property PULLDOWN true [get_ports { pin_trst }]; 
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { pin_tdo }]; #IO_L6N_T0_VREF_15 Sch=ja[7]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { pin_tck }]; #IO_L10P_T1_AD11P_15 Sch=ja[8]

## Pmod Header JB
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { i2c0_sda }]; #IO_L11P_T1_SRCC_15 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { i2c0_scl }]; #IO_L11N_T1_SRCC_15 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { gpio_14 }]; #IO_L12P_T1_MRCC_15 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { gpio_15 }]; #IO_L12N_T1_MRCC_15 Sch=jb_n[2]

## Pmod Header JC
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { spi1_nss }]; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { spi1_mosi }]; #IO_L20N_T3_A07_D23_14 Sch=jc_n[1]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { spi1_miso }]; #IO_L21P_T3_DQS_14 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { spi1_sclk ] }]; #IO_L22P_T3_A05_D21_14 Sch=jc_p[3]

## Pmod Header JD   ISSI QSPI 
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { qspi_ncs }]; #IO_L11N_T1_SRCC_35 Sch=jd[1]
set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { qspi_io[0] }]; #IO_L12N_T1_MRCC_35 Sch=jd[2]
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { qspi_io[1] }]; #IO_L13P_T2_MRCC_35 Sch=jd[3]
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { qspi_clk }]; #IO_L13N_T2_MRCC_35 Sch=jd[4]
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { qspi_io[2] }]; #IO_L15P_T2_DQS_35 Sch=jd[9]
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { qspi_io[3] }]; #IO_L15N_T2_DQS_35 Sch=jd[10]

## USB-UART Interface
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { uart0_SOUT }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { uart0_SIN }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

## ChipKit Outer Digital Header
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { io7_cell  }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { io8_cell  }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { io9_cell  }]; #IO_L8N_T1_D12_14 Sch=ck_io[2]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { io10_cell  }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { gpio_4  }]; #IO_L5P_T0_D06_14 Sch=ck_io[4]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { io12_cell  }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { io13_cell  }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { gpio_7 }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { gpio_8  }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { io16_cell  }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { io17_cell }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { io18_cell }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { io19_cell }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { io20_cell }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]

## ChipKit Outer Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using these ports as digital I/O.
set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { spi0_sclk }]; #IO_0_35 Sch=ck_a[0]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { spi0_nss }]; #IO_L4P_T0_35 Sch=ck_a[1]
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { spi0_mosi }]; #IO_L4N_T0_35 Sch=ck_a[2]
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { spi0_miso }]; #IO_L6P_T0_35 Sch=ck_a[3]

## ChipKit I2C
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { i2c1_scl }]; #IO_L4P_T0_D04_14 Sch=ck_scl
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { i2c1_sda }]; #IO_L4N_T0_D05_14 Sch=ck_sda

set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { sys_rst }]; #IO_L16P_T2_35 Sch=ck_rst


