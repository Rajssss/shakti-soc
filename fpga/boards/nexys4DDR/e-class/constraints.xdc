set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { sys_rst             }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { init_calib_complete }]; #IO_L18P_T2_A24_15 Sch=led[0]

set_property -dict { PACKAGE_PIN D4   IOSTANDARD LVCMOS33 } [get_ports { uart_SOUT           }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { uart_SIN            }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out

## ChipKit Outer Digital Header
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { gpio[0]  }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
#set_property PULLDOWN true [get_ports {gpio[0]}];
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { gpio[1]  }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
#set_property PULLDOWN true [get_ports {gpio[1]}];
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { gpio[2]  }]; #IO_L8N_T1_D12_14 Sch=ck_io[2]
#set_property PULLDOWN true [get_ports {gpio[2]}];
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { gpio[3]  }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]
#set_property PULLDOWN true [get_ports {gpio[3]}];
#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { gpio[4]  }]; #IO_L5P_T0_D06_14 Sch=ck_io[4]
#set_property PULLDOWN true [get_ports {gpio[4]}];
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { gpio[5]  }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
#set_property PULLDOWN true [get_ports {gpio[5]}];
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { gpio[6]  }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
#set_property PULLDOWN true [get_ports {gpio[6]}];
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { gpio[7]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
#set_property PULLDOWN true [get_ports {gpio[7]}];
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { gpio[8]  }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
#set_property PULLDOWN true [get_ports {gpio[8]}];
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { gpio[9]  }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
#set_property PULLDOWN true [get_ports {gpio[9]}];
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { gpio[10] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
#set_property PULLDOWN true [get_ports {gpio[10]}];
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { gpio[11] }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
#set_property PULLDOWN true [get_ports {gpio[11]}];
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { gpio[12] }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
#set_property PULLDOWN true [get_ports {gpio[12]}];
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { gpio[13] }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]
#set_property PULLDOWN true [get_ports {gpio[13]}];
#
### ChipKit Inner Digital Header
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { gpio[14] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=ck_io[26]
#set_property PULLDOWN true [get_ports {gpio[14]}];
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { gpio[15] }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[27]
#set_property PULLDOWN true [get_ports {gpio[15]}];
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { interrupts[0] }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[28]
#set_property PULLDOWN true [get_ports {interrupts[0]}];
#set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { interrupts[1] }]; #IO_25_14 Sch=ck_io[29]
#set_property PULLDOWN true [get_ports {interrupts[1]}];
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { interrupts[2] }]; #IO_0_14 Sch=ck_io[30]
#set_property PULLDOWN true [get_ports {interrupts[2]}];
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { interrupts[3] }]; #IO_L5N_T0_D07_14 Sch=ck_io[31]
#set_property PULLDOWN true [get_ports {interrupts[3]}];
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { interrupts[4] }]; #IO_L13N_T2_MRCC_14 Sch=ck_io[32]
#set_property PULLDOWN true [get_ports {interrupts[4]}];
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { interrupts[5] }]; #IO_L13P_T2_MRCC_14 Sch=ck_io[33]
#set_property PULLDOWN true [get_ports {interrupts[5]}];
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { interrupts[6] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=ck_io[34]
#set_property PULLDOWN true [get_ports {interrupts[6]}];
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { interrupts[7] }]; #IO_L11N_T1_SRCC_14 Sch=ck_io[35]
#set_property PULLDOWN true [get_ports {interrupts[7]}];
#
#
### RGB LEDs
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { gpio[16] }]; #IO_L18N_T2_35 Sch=led0_b
#set_property PULLDOWN true [get_ports {gpio[16]}];
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { gpio[17] }]; #IO_L19N_T3_VREF_35 Sch=led0_g
#set_property PULLDOWN true [get_ports {gpio[17]}];
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { gpio[18] }]; #IO_L19P_T3_35 Sch=led0_r
#set_property PULLDOWN true [get_ports {gpio[18]}];
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { gpio[19] }]; #IO_L20P_T3_35 Sch=led1_b
#set_property PULLDOWN true [get_ports {gpio[19]}];
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { gpio[20] }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property PULLDOWN true [get_ports {gpio[20]}];
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { gpio[21] }]; #IO_L20N_T3_35 Sch=led1_r
#set_property PULLDOWN true [get_ports {gpio[21]}];
#
### LEDs
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { gpio[22] }]; #IO_L24N_T3_35 Sch=led[4]
#set_property PULLDOWN true [get_ports {gpio[22]}];
#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { gpio[23] }]; #IO_25_35 Sch=led[5]
#set_property PULLDOWN true [get_ports {gpio[23]}];
#
### Switches
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { gpio[24] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property PULLDOWN true [get_ports {gpio[24]}];
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { gpio[25] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
#set_property PULLDOWN true [get_ports {gpio[25]}];
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { gpio[26] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
#set_property PULLDOWN true [get_ports {gpio[26]}];
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { gpio[27] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]
#set_property PULLDOWN true [get_ports {gpio[27]}];
#
### Buttons
#set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { gpio[28] }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
#set_property PULLDOWN true [get_ports {gpio[28]}];
#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { gpio[29] }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
#set_property PULLDOWN true [get_ports {gpio[29]}];
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { gpio[30] }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]
#set_property PULLDOWN true [get_ports {gpio[30]}];
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { gpio[31] }]; #IO_L12P_T1_MRCC_16 Sch=btn[3]
#set_property PULLDOWN true [get_ports {gpio[31]}];
