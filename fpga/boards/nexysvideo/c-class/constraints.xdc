create_clock -period 60.000 -name tck -waveform {0.000 30.000} -add [get_nets pin_tck]

set_multicycle_path -setup 4 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -hold 3 -from [get_clocks tck] -to [get_clocks clk_out1_clk_divider] -end
set_multicycle_path -setup 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start
set_multicycle_path -hold 4 -from [get_clocks clk_out1_clk_divider] -to [get_clocks tck] -start

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pin_tck_IBUF]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_IBUF]

set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS15 } [get_ports { sys_rst             }]; #IO_L12N_T1_MRCC_35 Sch=cpu_resetn
set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS25 } [get_ports { init_calib_complete }]; #IO_L5P_T0_13 Sch=led[7]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS25 } [get_ports { pin_aresetn         }]; #IO_L16N_T2_13 Sch=led[5]

## UART
set_property -dict { PACKAGE_PIN AA19   IOSTANDARD LVCMOS33 } [get_ports { uart_SOUT           }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN V18    IOSTANDARD LVCMOS33 } [get_ports { uart_SIN            }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

## GPIO
## Pmod header JA
set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { gpio[0]  }]; #IO_L10N_T1_D15_14 Sch=ja[1]
set_property -dict { PACKAGE_PIN AB21  IOSTANDARD LVCMOS33 } [get_ports { gpio[1]  }]; #IO_L10P_T1_D14_14 Sch=ja[2]
set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { gpio[2]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ja[3]
set_property -dict { PACKAGE_PIN AB18  IOSTANDARD LVCMOS33 } [get_ports { gpio[3]  }]; #IO_L17N_T2_A13_D29_14 Sch=ja[4]
set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { gpio[4]  }]; #IO_L9P_T1_DQS_14 Sch=ja[7]
set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { gpio[5]  }]; #IO_L8N_T1_D12_14 Sch=ja[8]
set_property -dict { PACKAGE_PIN AA20  IOSTANDARD LVCMOS33 } [get_ports { gpio[6]  }]; #IO_L8P_T1_D11_14 Sch=ja[9]
set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS33 } [get_ports { gpio[7]  }]; #IO_L17P_T2_A14_D30_14 Sch=ja[10]

## Pmod header JB
set_property -dict { PACKAGE_PIN V9    IOSTANDARD LVCMOS33 } [get_ports { gpio[8]  }]; #IO_L21P_T3_DQS_34 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { gpio[9]  }]; #IO_L21N_T3_DQS_34 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { gpio[10]  }]; #IO_L19P_T3_34 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { gpio[11]  }]; #IO_L19N_T3_VREF_34 Sch=jb_n[2]
set_property -dict { PACKAGE_PIN W9    IOSTANDARD LVCMOS33 } [get_ports { gpio[12]  }]; #IO_L24P_T3_34 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS33 } [get_ports { gpio[13]  }]; #IO_L24N_T3_34 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVCMOS33 } [get_ports { gpio[14]  }]; #IO_L23P_T3_34 Sch=jb_p[4]
set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33 } [get_ports { gpio[15]  }]; #IO_L23N_T3_34 Sch=jb_n[4]

## LEDs
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS25 } [get_ports { gpio[16] }]; #IO_L15P_T2_DQS_13 Sch=led[0]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS25 } [get_ports { gpio[17] }]; #IO_L15N_T2_DQS_13 Sch=led[1]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS25 } [get_ports { gpio[18] }]; #IO_L17P_T2_13 Sch=led[2]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS25 } [get_ports { gpio[19] }]; #IO_L17N_T2_13 Sch=led[3]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS25 } [get_ports { gpio[20] }]; #IO_L14N_T2_SRCC_13 Sch=led[4]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS25 } [get_ports { gpio[21] }]; #IO_L16N_T2_13 Sch=led[5]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS25 } [get_ports { gpio[22] }]; #IO_L16P_T2_13 Sch=led[6]
#set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS25 } [get_ports { gpio[23] }]; #IO_L5P_T0_13 Sch=led[7]

## Switches
set_property -dict { PACKAGE_PIN E22  IOSTANDARD LVCMOS12 } [get_ports { gpio[24] }]; #IO_L22P_T3_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN F21  IOSTANDARD LVCMOS12 } [get_ports { gpio[25] }]; #IO_25_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN G21  IOSTANDARD LVCMOS12 } [get_ports { gpio[26] }]; #IO_L24P_T3_16 Sch=sw[2]
set_property -dict { PACKAGE_PIN G22  IOSTANDARD LVCMOS12 } [get_ports { gpio[27] }]; #IO_L24N_T3_16 Sch=sw[3]
set_property -dict { PACKAGE_PIN H17  IOSTANDARD LVCMOS12 } [get_ports { gpio[28] }]; #IO_L6P_T0_15 Sch=sw[4]
set_property -dict { PACKAGE_PIN J16  IOSTANDARD LVCMOS12 } [get_ports { gpio[29] }]; #IO_0_15 Sch=sw[5]
set_property -dict { PACKAGE_PIN K13  IOSTANDARD LVCMOS12 } [get_ports { gpio[30] }]; #IO_L19P_T3_A22_15 Sch=sw[6]
set_property -dict { PACKAGE_PIN M17  IOSTANDARD LVCMOS12 } [get_ports { gpio[31] }]; #IO_25_15 Sch=sw[7]

## I2C
## Pmod header JC
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { i2c_scl }]; #IO_L18P_T2_34 Sch=jc_p[1]
set_property PULLUP true [get_ports {i2c_scl}]
set_property -dict { PACKAGE_PIN AA6   IOSTANDARD LVCMOS33 } [get_ports { i2c_sda }]; #IO_L18N_T2_34 Sch=jc_n[1]
set_property PULLUP true [get_ports {i2c_sda}]

set_property -dict { PACKAGE_PIN AA8   IOSTANDARD LVCMOS33 } [get_ports { gpio[21 }]; #IO_L22P_T3_34 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN AB8   IOSTANDARD LVCMOS33 } [get_ports { gpio[23] }]; #IO_L22N_T3_34 Sch=jc_n[2]


