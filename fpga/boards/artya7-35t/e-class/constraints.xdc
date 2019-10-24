create_clock -period 60.000 -name tck -waveform {0.000 30.000} -add [get_nets pin_tck]

set_multicycle_path -setup 4 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -hold 3 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end

set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_IBUF]

set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { sys_rst             }]; #IO_L16P_T2_35 Sch=ck_rst

set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { uart0_SOUT           }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { uart0_SIN            }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

##UART1
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { uart1_SOUT }]; #IO_L22P_T3_A05_D21_14 Sch=jc_p[3]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { uart1_SIN }]; #IO_L22N_T3_A04_D20_14 Sch=jc_n[3]
##UART2
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { uart2_SOUT }]; #IO_L23P_T3_A03_D19_14 Sch=jc_p[4]
set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { uart2_SIN }]; #IO_L23N_T3_A02_D18_14 Sch=jc_n[4]

##Pmod Header JB
##SPI0
#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { spi0_nss             }]; #IO_L11P_T1_SRCC_15 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { spi0_sclk            }]; #IO_L11N_T1_SRCC_15 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { spi0_miso            }]; #IO_L12P_T1_MRCC_15 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { spi0_mosi            }]; #IO_L12N_T1_MRCC_15 Sch=jb_n[2]
##SPI1
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { spi1_nss             }]; #IO_L23P_T3_FOE_B_15 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { spi1_sclk            }]; #IO_L23N_T3_FWE_B_15 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { spi1_miso            }]; #IO_L24P_T3_RS1_15 Sch=jb_p[4]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { spi1_mosi            }]; #IO_L24N_T3_RS0_15 Sch=jb_n[4]

## Pmod Header JC
##SPI2
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { spi2_nss             }]; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { spi2_sclk            }]; #IO_L20N_T3_A07_D23_14 Sch=jc_n[1]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { spi2_miso            }]; #IO_L21P_T3_DQS_14 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { spi2_mosi            }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jc_n[2]

## ChipKit Outer Digital Header
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { gpio[0]  }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
set_property PULLDOWN true [get_ports {gpio[0]}];
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { gpio[1]  }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
set_property PULLDOWN true [get_ports {gpio[1]}];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { gpio[2]  }]; #IO_L8N_T1_D12_14 Sch=ck_io[2]
set_property PULLDOWN true [get_ports {gpio[2]}];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { gpio[3]  }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]
set_property PULLDOWN true [get_ports {gpio[3]}];
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { gpio[4]  }]; #IO_L5P_T0_D06_14 Sch=ck_io[4]
set_property PULLDOWN true [get_ports {gpio[4]}];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { gpio[5]  }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
set_property PULLDOWN true [get_ports {gpio[5]}];
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { gpio[6]  }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
set_property PULLDOWN true [get_ports {gpio[6]}];
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { gpio[7]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
set_property PULLDOWN true [get_ports {gpio[7]}];
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { gpio[8]  }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
set_property PULLDOWN true [get_ports {gpio[8]}];
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { gpio[9]  }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
set_property PULLDOWN true [get_ports {gpio[9]}];
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { gpio[10] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
set_property PULLDOWN true [get_ports {gpio[10]}];
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { gpio[11] }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
set_property PULLDOWN true [get_ports {gpio[11]}];
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { gpio[12] }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
set_property PULLDOWN true [get_ports {gpio[12]}];
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { gpio[13] }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]
set_property PULLDOWN true [get_ports {gpio[13]}];

## ChipKit Inner Digital Header
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { gpio[14] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=ck_io[26]
set_property PULLDOWN true [get_ports {gpio[14]}];
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { gpio[15] }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[27]
set_property PULLDOWN true [get_ports {gpio[15]}];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { interrupts[0] }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[28]
set_property PULLDOWN true [get_ports {interrupts[0]}];
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { interrupts[1] }]; #IO_25_14 Sch=ck_io[29]
set_property PULLDOWN true [get_ports {interrupts[1]}];

## ChipKit I2C
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { i2c_scl }]; #IO_L4P_T0_D04_14 Sch=ck_scl
set_property PULLUP true [get_ports {i2c_scl}]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { i2c_sda }]; #IO_L4N_T0_D05_14 Sch=ck_sda
set_property PULLUP true [get_ports {i2c_sda}]

## Quad SPI Flash
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { spi0_nss }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { spi0_mosi }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { spi0_miso }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]

# ChipKit Outer Analog Header - as Single-Ended Analog Inputs
# NOTE: These ports can be used as single-ended analog inputs with voltages from 0-3.3V (ChipKit analog pins A0-A5) or as digital I/O.
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { vauxn4  }]; #IO_L1N_T0_AD4N_35 		Sch=ck_an_n[0]	ChipKit pin=A0
set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { vauxp4  }]; #IO_L1P_T0_AD4P_35 		Sch=ck_an_p[0]	ChipKit pin=A0
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { vauxn5  }]; #IO_L3N_T0_DQS_AD5N_35 	Sch=ck_an_n[1]	ChipKit pin=A1
set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { vauxp5  }]; #IO_L3P_T0_DQS_AD5P_35 	Sch=ck_an_p[1]	ChipKit pin=A1
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { vauxn6  }]; #IO_L7N_T1_AD6N_35 		Sch=ck_an_n[2]	ChipKit pin=A2
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { vauxp6  }]; #IO_L7P_T1_AD6P_35 		Sch=ck_an_p[2]	ChipKit pin=A2
set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { vauxn7  }]; #IO_L9N_T1_DQS_AD7N_35 	Sch=ck_an_n[3]	ChipKit pin=A3
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { vauxp7  }]; #IO_L9P_T1_DQS_AD7P_35 	Sch=ck_an_p[3]	ChipKit pin=A3
set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { vauxn15 }]; #IO_L10N_T1_AD15N_35 	Sch=ck_an_n[4]	ChipKit pin=A4
set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { vauxp15 }]; #IO_L10P_T1_AD15P_35 	Sch=ck_an_p[4]	ChipKit pin=A4
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { vauxn0  }]; #IO_L1N_T0_AD0N_15 		Sch=ck_an_n[5]	ChipKit pin=A5
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { vauxp0  }]; #IO_L1P_T0_AD0P_15 		Sch=ck_an_p[5]	ChipKit pin=A5

# ChipKit Inner Analog Header - as Differential Analog Inputs
# NOTE: These ports can be used as differential analog inputs with voltages from 0-1.0V (ChipKit Analog pins A6-A11) or as digital I/O.
set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { vauxp12 }]; #IO_L2P_T0_AD12P_35	Sch=ad_p[12]	ChipKit pin=A6
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { vauxn12 }]; #IO_L2N_T0_AD12N_35	Sch=ad_n[12]	ChipKit pin=A7
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { vauxp13 }]; #IO_L5P_T0_AD13P_35	Sch=ad_p[13]	ChipKit pin=A8
set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { vauxn13 }]; #IO_L5N_T0_AD13N_35	Sch=ad_n[13]	ChipKit pin=A9
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { vauxp14 }]; #IO_L8P_T1_AD14P_35	Sch=ad_p[14]	ChipKit pin=A10
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { vauxn14 }]; #IO_L8N_T1_AD14N_35	Sch=ad_n[14]	ChipKit pin=A11

#PWM
# Pmod Header JD
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { pwm0 }]; #IO_L11N_T1_SRCC_35 Sch=jd[1]
set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { pwm1 }]; #IO_L12N_T1_MRCC_35 Sch=jd[2]
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { pwm2 }]; #IO_L13P_T2_MRCC_35 Sch=jd[3]
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { pwm3 }]; #IO_L13N_T2_MRCC_35 Sch=jd[4]
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { pwm4 }]; #IO_L14P_T2_SRCC_35 Sch=jd[7]
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { pwm5 }]; #IO_L14N_T2_SRCC_35 Sch=jd[8]

## RGB LEDs
set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { gpio[16] }]; #IO_L18N_T2_35 Sch=led0_b
set_property PULLDOWN true [get_ports {gpio[16]}];
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { gpio[17] }]; #IO_L19N_T3_VREF_35 Sch=led0_g
set_property PULLDOWN true [get_ports {gpio[17]}];
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { gpio[18] }]; #IO_L19P_T3_35 Sch=led0_r
set_property PULLDOWN true [get_ports {gpio[18]}];
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { gpio[19] }]; #IO_L20P_T3_35 Sch=led1_b
set_property PULLDOWN true [get_ports {gpio[19]}];
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { gpio[20] }]; #IO_L21P_T3_DQS_35 Sch=led1_g
set_property PULLDOWN true [get_ports {gpio[20]}];
set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { gpio[21] }]; #IO_L20N_T3_35 Sch=led1_r
set_property PULLDOWN true [get_ports {gpio[21]}];

## LEDs
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { gpio[22] }]; #IO_L24N_T3_35 Sch=led[4]
set_property PULLDOWN true [get_ports {gpio[22]}];
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { gpio[23] }]; #IO_25_35 Sch=led[5]
set_property PULLDOWN true [get_ports {gpio[23]}];

## Switches
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { gpio[24] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property PULLDOWN true [get_ports {gpio[24]}];
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { gpio[25] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property PULLDOWN true [get_ports {gpio[25]}];
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { gpio[26] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
set_property PULLDOWN true [get_ports {gpio[26]}];
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { gpio[27] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]
set_property PULLDOWN true [get_ports {gpio[27]}];

## Buttons
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { gpio[28] }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
set_property PULLDOWN true [get_ports {gpio[28]}];
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { gpio[29] }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
set_property PULLDOWN true [get_ports {gpio[29]}];
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { gpio[30] }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]
set_property PULLDOWN true [get_ports {gpio[30]}];
set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { gpio[31] }]; #IO_L12P_T1_MRCC_16 Sch=btn[3]
set_property PULLDOWN true [get_ports {gpio[31]}];


