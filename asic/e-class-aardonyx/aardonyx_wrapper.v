module aardonyx_wrapper(clk,
                     reset,
                     spi0_ncs,
                     spi0_clk,
                     spi0_miso,
                     spi0_mosi,
                     gpio_0,
                     gpio_1,
                     gpio_2,
                     gpio_3,
                     gpio_4,
                     gpio_5,
                     gpio_6,
                     gpio_7,
                     gpio_8,
                     gpio_9,
                     gpio_10,
                     gpio_11,
                     gpio_12,
                     gpio_13,
                     gpio_14,
                     gpio_15,
                     i2c1_scl,
                     i2c1_sda,
                     qspi0_clk,
                     qspi0_ncs,
                     qspi0_io0,
                     qspi0_io1, 
                     qspi0_io2,
                     qspi0_io3,
                     i2c0_sda,
                     i2c0_scl,
                     uart0_tx,
                     uart0_rx,
                     tms,
                     trst,
                     tck,
                     tdi,
                     tdo,
                     sdram_d0,
                     sdram_d1,
                     sdram_d2,
                     sdram_d3,
                     sdram_d4,
                     sdram_d5,
                     sdram_d6,
                     sdram_d7,
                     sdram_d8,
                     sdram_d9,
                     sdram_d10,
                     sdram_d11,
                     sdram_d12,
                     sdram_d13,
                     sdram_d14,
                     sdram_d15,
                     sdram_d16,
                     sdram_d17,
                     sdram_d18,
                     sdram_d19,
                     sdram_d20,
                     sdram_d21,
                     sdram_d22,
                     sdram_d23,
                     sdram_d24,
                     sdram_d25,
                     sdram_d26,
                     sdram_d27,
                     sdram_d28,
                     sdram_d29,
                     sdram_d30,
                     sdram_d31,
                     sdram_a0,
                     sdram_a1,
                     sdram_a2,
                     sdram_a3,
                     sdram_a4,
                     sdram_a5,
                     sdram_a6,
                     sdram_a7,
                     sdram_a8,
                     sdram_a9,
                     sdram_a10,
                     sdram_a11,
                     sdram_a12,
                     sdram_dq0,
                     sdram_dq1,
                     sdram_dq2,
                     sdram_dq3,
                     sdram_ba0,
                     sdram_ba1,
                     sdram_cs,
                     sdram_ras,
                     sdram_cas,
                     sdram_we,
                     sdram_clk,
                     sdram_cke,
                     spi1_ncs,
                     spi1_clk,
                     spi1_miso,
                     spi1_mosi,
                     boot_mode0,
                     boot_mode1,
                     test_mode);

input clk;
input reset;
output spi0_ncs;                                                                      
output spi0_clk;                                                                      
input spi0_miso;                                                                     
output spi0_mosi;                                                                     
inout gpio_0;
inout gpio_1;
inout gpio_2;
inout gpio_3;
inout gpio_4;
inout gpio_5; 
inout gpio_6;
inout gpio_7;
inout gpio_8;
inout gpio_9;
inout gpio_10;
inout gpio_11;
inout gpio_12;
inout gpio_13;
inout gpio_14;
inout gpio_15;
inout i2c1_scl;                                                                      
inout i2c1_sda;                                                                      
output qspi0_clk;                                                                     
output qspi0_ncs;                                                                     
inout qspi0_io0;
inout qspi0_io1;
inout qspi0_io2;
inout qspi0_io3;
inout i2c0_sda;                                                                      
inout i2c0_scl;                                                                      
output uart0_tx;                                                                      
input uart0_rx;
input tms;                                                                                          
input trst;                                                                                         
input tck;                                                                                          
input tdi;                                                                                          
output tdo;
inout sdram_d0;
inout sdram_d1;
inout sdram_d2;
inout sdram_d3;
inout sdram_d4;
inout sdram_d5;
inout sdram_d6;
inout sdram_d7;
inout sdram_d8;
inout sdram_d9;
inout sdram_d10;
inout sdram_d11;
inout sdram_d12;
inout sdram_d13;
inout sdram_d14;
inout sdram_d15;
inout sdram_d16;
inout sdram_d17;
inout sdram_d18;
inout sdram_d19;
inout sdram_d20;
inout sdram_d21;
inout sdram_d22;
inout sdram_d23;
inout sdram_d24;
inout sdram_d25;
inout sdram_d26;
inout sdram_d27;
inout sdram_d28;
inout sdram_d29;
inout sdram_d30;
inout sdram_d31;
output sdram_a0;
output sdram_a1;
output sdram_a2;
output sdram_a3;
output sdram_a4;
output sdram_a5;
output sdram_a6;
output sdram_a7;
output sdram_a8;
output sdram_a9;
output sdram_a10;
output sdram_a11;
output sdram_a12;
output sdram_dq0;
output sdram_dq1;
output sdram_dq2;
output sdram_dq3;
output sdram_ba0;
output sdram_ba1;
output sdram_cs;
output sdram_ras;
output sdram_cas;
output sdram_we;
output sdram_clk;
output sdram_cke;
output spi1_ncs;
output spi1_clk;
input spi1_miso;
output spi1_mosi;
input boot_mode0;
input boot_mode1;
input test_mode;

wire clk_in;
wire reset_in;
wire spi0_ncs_out;
wire spi0_clk_out;
wire spi0_miso_in;
wire spi0_mosi_out;
wire gpio0_in;
wire gpio0_out;
wire gpio0_en;
wire gpio1_in;                                                                                      
wire gpio1_out;
wire gpio1_en; 
wire gpio2_in;                                                                                      
wire gpio2_out;
wire gpio2_en; 
wire gpio3_in;                                                                                      
wire gpio3_out;
wire gpio3_en; 
wire gpio4_in;                                                                                      
wire gpio4_out;
wire gpio4_en; 
wire gpio5_in;                                                                                      
wire gpio5_out;
wire gpio5_en; 
wire gpio6_in;                                                                                      
wire gpio6_out;  
wire gpio6_en; 
wire gpio7_in;                                                                                      
wire gpio7_out;
wire gpio7_en; 
wire gpio8_in;                                                                                      
wire gpio8_out;
wire gpio8_en; 
wire gpio9_in;                                                                                      
wire gpio9_out;
wire gpio9_en; 
wire gpio10_in;                                                                                      
wire gpio10_out;
wire gpio10_en; 
wire gpio11_in;                                                                                     
wire gpio11_out;
wire gpio11_en;
wire gpio12_in;                                                                                     
wire gpio12_out;
wire gpio12_en;
wire gpio13_in;                                                                                     
wire gpio13_out;
wire gpio13_en;
wire gpio14_in;                                                                                     
wire gpio14_out;
wire gpio14_en;
wire gpio15_in;                                                                                     
wire gpio15_out;                                                                                    
wire gpio15_en;
wire i2c1_scl_in;
wire i2c1_scl_out;                                                                                   
wire i2c1_scl_en;                                                                                   
wire i2c1_sda_in;                                                                                   
wire i2c1_sda_out;                                                                                  
wire i2c1_sda_en;                                                                                   
wire qspi0_clk_out;
wire qspi0_ncs_out;                                                                                 
wire qspi0_io0_en;                                                                                 
wire qspi0_io0_in;                                                                                 
wire qspi0_io0_out;
wire qspi0_io1_en;  
wire qspi0_io1_in;                                                                                  
wire qspi0_io1_out;
wire qspi0_io2_en;  
wire qspi0_io2_in;                                                                                  
wire qspi0_io2_out;
wire qspi0_io3_en;  
wire qspi0_io3_in;                                                                                  
wire qspi0_io3_out;                                                                                 
wire i2c0_scl_in;                                                                                   
wire i2c0_scl_out;                                                                                  
wire i2c0_scl_en;                                                                                   
wire i2c0_sda_in;                                                                                   
wire i2c0_sda_out;                                                                                  
wire i2c0_sda_en;                                                                                   
wire uart0_tx_out;
wire uart0_rx_in;
wire tms_in;
wire trst_in;
wire tck_in;
wire tdi_in;
wire tdo_out;
wire sdram_din0;
wire sdram_din1;
wire sdram_din2;
wire sdram_din3;
wire sdram_din4;
wire sdram_din5;
wire sdram_din6;
wire sdram_din7;
wire sdram_din8;
wire sdram_din9;
wire sdram_din10;
wire sdram_din11;
wire sdram_din12;
wire sdram_din13;
wire sdram_din14;
wire sdram_din15;
wire sdram_din16;
wire sdram_din17;
wire sdram_din18;
wire sdram_din19;
wire sdram_din20;
wire sdram_din21;
wire sdram_din22;
wire sdram_din23;
wire sdram_din24;
wire sdram_din25;
wire sdram_din26;
wire sdram_din27;
wire sdram_din28;
wire sdram_din29;
wire sdram_din30;
wire sdram_din31;
wire sdram_out0;
wire sdram_out1;
wire sdram_out2;
wire sdram_out3;
wire sdram_out4;
wire sdram_out5;
wire sdram_out6;
wire sdram_out7;
wire sdram_out8;
wire sdram_out9;
wire sdram_out10;
wire sdram_out11;
wire sdram_out12;
wire sdram_out13;
wire sdram_out14;
wire sdram_out15;
wire sdram_out16;
wire sdram_out17;
wire sdram_out18;
wire sdram_out19;
wire sdram_out20;
wire sdram_out21;
wire sdram_out22;
wire sdram_out23;
wire sdram_out24;
wire sdram_out25;
wire sdram_out26;
wire sdram_out27;
wire sdram_out28;
wire sdram_out29;
wire sdram_out30;
wire sdram_out31;
wire sdram_adr0;
wire sdram_adr1;
wire sdram_adr2;
wire sdram_adr3;
wire sdram_adr4;
wire sdram_adr5;
wire sdram_adr6;
wire sdram_adr7;
wire sdram_adr8;
wire sdram_adr9;
wire sdram_adr10;
wire sdram_adr11;
wire sdram_adr12;
wire sdram_ba0_out;
wire sdram_ba1_out;
wire sdram_dqm0_out;
wire sdram_dqm1_out;
wire sdram_dqm2_out;
wire sdram_dqm3_out;
wire sdram_den0;
wire sdram_den1;
wire sdram_den2;
wire sdram_den3;
wire sdram_cke_out;
wire sdram_cs_out;
wire sdram_ras_out;
wire sdram_cas_out;
wire sdram_we_out;
wire sdram_clk_out;
wire spi1_ncs_out;
wire spi1_clk_out;
wire spi1_miso_in;
wire spi1_mosi_out;
wire boot_mode0_in;
wire boot_mode1_in;
wire test_mode_in;

//-----------------PADS------------------------------------------
pc3d21   iclk        (.PAD(clk), .CIN(clk_in));
pc3d01   ireset      (.PAD(reset), .CIN(reset_in));
pc3o02   ispi0_ncs   (.PAD(spi0_ncs), .I(spi0_ncs_out));          
pc3o02   ispi0_clk   (.PAD(spi0_clk), .I(spi0_clk_out));
pc3d01   ispi0_miso  (.PAD(spi0_miso), .CIN(spi0_miso_in));
pc3o02   ispi0_mosi  (.PAD(spi0_mosi), .I(spi0_mosi_out));
pc3b02   igpio_0     (.PAD(gpio_0), .CIN(gpio0_in), .OEN(gpio0_en), .I(gpio0_out));
pc3b02   igpio_1     (.PAD(gpio_1), .CIN(gpio1_in), .OEN(gpio1_en), .I(gpio1_out));
pc3b02   igpio_2     (.PAD(gpio_2), .CIN(gpio2_in), .OEN(gpio2_en), .I(gpio2_out));
pc3b02   igpio_3     (.PAD(gpio_3), .CIN(gpio3_in), .OEN(gpio3_en), .I(gpio3_out));
pc3b02   igpio_4     (.PAD(gpio_4), .CIN(gpio4_in), .OEN(~gpio4_en_tm), .I(gpio4_out));
pc3b02   igpio_5     (.PAD(gpio_5), .CIN(gpio5_in), .OEN(gpio5_en), .I(gpio5_out));
pc3b02   igpio_6     (.PAD(gpio_6), .CIN(gpio6_in), .OEN(gpio6_en), .I(gpio6_out));
pc3b02   igpio_7     (.PAD(gpio_7), .CIN(gpio7_in), .OEN(~gpio7_en_tm), .I(gpio7_out));
pc3b02   igpio_8     (.PAD(gpio_8), .CIN(gpio8_in), .OEN(~gpio8_en_tm), .I(gpio8_out));
pc3b02   igpio_9     (.PAD(gpio_9), .CIN(gpio9_in), .OEN(gpio9_en), .I(gpio9_out));
pc3b02   igpio_10    (.PAD(gpio_10), .CIN(gpio10_in), .OEN(gpio10_en), .I(gpio10_out));
pc3b02   igpio_11    (.PAD(gpio_11), .CIN(gpio11_in), .OEN(gpio11_en), .I(gpio11_out));
pc3b02   igpio_12    (.PAD(gpio_12), .CIN(gpio12_in), .OEN(gpio12_en), .I(gpio12_out));
pc3b02   igpio_13    (.PAD(gpio_13), .CIN(gpio13_in), .OEN(gpio13_en), .I(gpio13_out));
pc3b02   igpio_14    (.PAD(gpio_14), .CIN(gpio14_in), .OEN(~gpio14_en_tm), .I(gpio14_out));
pc3b02   igpio_15    (.PAD(gpio_15), .CIN(gpio15_in), .OEN(~gpio15_en_tm), .I(gpio15_out));
pc3b02u  ii2c1_scl   (.PAD(i2c1_scl), .CIN(i2c1_scl_in), .OEN(~i2c1_scl_en_tm), .I(i2c1_scl_out));
pc3b02u  ii2c1_sda   (.PAD(i2c1_sda), .CIN(i2c1_sda_in), .OEN(~i2c1_sda_en_tm), .I(i2c1_sda_out));
pc3o02   iqspi0_clk  (.PAD(qspi0_clk), .I(qspi0_clk_out));
pc3o02   iqspi0_ncs  (.PAD(qspi0_ncs), .I(qspi0_ncs_out));
pc3b02   iqspi0_io0  (.PAD(qspi0_io0), .CIN(qspi0_io0_in), .OEN(~qspi0_io0_en_tm), .I(qspi0_io0_out));
pc3b02   iqspi0_io1  (.PAD(qspi0_io1), .CIN(qspi0_io1_in), .OEN(~qspi0_io1_en_tm), .I(qspi0_io1_out)); 
pc3b02   iqspi0_io2  (.PAD(qspi0_io2), .CIN(qspi0_io2_in), .OEN(~qspi0_io2_en_tm), .I(qspi0_io2_out));
pc3b02   iqspi0_io3  (.PAD(qspi0_io3), .CIN(qspi0_io3_in), .OEN(~qspi0_io3_en_tm), .I(qspi0_io3_out));
pc3b02u  ii2c0_sda   (.PAD(i2c0_sda), .CIN(i2c0_sda_in), .OEN(~i2c0_sda_en_tm), .I(i2c0_sda_out));
pc3b02u  ii2c0_scl   (.PAD(i2c0_scl), .CIN(i2c0_scl_in), .OEN(~i2c0_scl_en_tm), .I(i2c0_scl_out));
pc3o02   iuart0_tx   (.PAD(uart0_tx), .I(uart0_tx_out));
pc3d01   iuart0_rx   (.PAD(uart0_rx), .CIN(uart0_rx_in));
pc3d01   itms        (.PAD(tms), .CIN(tms_in));
pc3d01   itrst       (.PAD(trst), .CIN(trst_in));
pc3d01   itck        (.PAD(tck), .CIN(tck_in));
pc3d01   itdi        (.PAD(tdi), .CIN(tdi_in));
pc3o02   itdo        (.PAD(tdo), .I(tdo_out));
pc3b02   isdram_d0   (.PAD(sdram_d0), .CIN(sdram_din0), .OEN(sdram_den0_tm), .I(sdram_out0));
pc3b02   isdram_d1   (.PAD(sdram_d1), .CIN(sdram_din1), .OEN(sdram_den0_tm), .I(sdram_out1));
pc3b02   isdram_d2   (.PAD(sdram_d2), .CIN(sdram_din2), .OEN(sdram_den0_tm), .I(sdram_out2));
pc3b02   isdram_d3   (.PAD(sdram_d3), .CIN(sdram_din3), .OEN(sdram_den0_tm), .I(sdram_out3));
pc3b02   isdram_d4   (.PAD(sdram_d4), .CIN(sdram_din4), .OEN(sdram_den0_tm), .I(sdram_out4));
pc3b02   isdram_d5   (.PAD(sdram_d5), .CIN(sdram_din5), .OEN(sdram_den0_tm), .I(sdram_out5));
pc3b02   isdram_d6   (.PAD(sdram_d6), .CIN(sdram_din6), .OEN(sdram_den0_tm), .I(sdram_out6));
pc3b02   isdram_d7   (.PAD(sdram_d7), .CIN(sdram_din7), .OEN(sdram_den0_tm), .I(sdram_out7));
pc3b02   isdram_d8   (.PAD(sdram_d8), .CIN(sdram_din8), .OEN(sdram_den1_tm), .I(sdram_out8));
pc3b02   isdram_d9   (.PAD(sdram_d9), .CIN(sdram_din9), .OEN(sdram_den1_tm), .I(sdram_out9));
pc3b02   isdram_d10  (.PAD(sdram_d10), .CIN(sdram_din10), .OEN(sdram_den1_tm), .I(sdram_out10));
pc3b02   isdram_d11  (.PAD(sdram_d11), .CIN(sdram_din11), .OEN(sdram_den1_tm), .I(sdram_out11));
pc3b02   isdram_d12  (.PAD(sdram_d12), .CIN(sdram_din12), .OEN(sdram_den1_tm), .I(sdram_out12));
pc3b02   isdram_d13  (.PAD(sdram_d13), .CIN(sdram_din13), .OEN(sdram_den1_tm), .I(sdram_out13));
pc3b02   isdram_d14  (.PAD(sdram_d14), .CIN(sdram_din14), .OEN(sdram_den1_tm), .I(sdram_out14));
pc3b02   isdram_d15  (.PAD(sdram_d15), .CIN(sdram_din15), .OEN(sdram_den1_tm), .I(sdram_out15));
pc3b02   isdram_d16  (.PAD(sdram_d16), .CIN(sdram_din16), .OEN(sdram_den2_tm), .I(sdram_out16));
pc3b02   isdram_d17  (.PAD(sdram_d17), .CIN(sdram_din17), .OEN(sdram_den2_tm), .I(sdram_out17));
pc3b02   isdram_d18  (.PAD(sdram_d18), .CIN(sdram_din18), .OEN(sdram_den2_tm), .I(sdram_out18));
pc3b02   isdram_d19  (.PAD(sdram_d19), .CIN(sdram_din19), .OEN(sdram_den2_tm), .I(sdram_out19));
pc3b02   isdram_d20  (.PAD(sdram_d20), .CIN(sdram_din20), .OEN(sdram_den2_tm), .I(sdram_out20));
pc3b02   isdram_d21  (.PAD(sdram_d21), .CIN(sdram_din21), .OEN(sdram_den2_tm), .I(sdram_out21));
pc3b02   isdram_d22  (.PAD(sdram_d22), .CIN(sdram_din22), .OEN(sdram_den2_tm), .I(sdram_out22));
pc3b02   isdram_d23  (.PAD(sdram_d23), .CIN(sdram_din23), .OEN(sdram_den2_tm), .I(sdram_out23));
pc3b02   isdram_d24  (.PAD(sdram_d24), .CIN(sdram_din24), .OEN(sdram_den3_tm), .I(sdram_out24));
pc3b02   isdram_d25  (.PAD(sdram_d25), .CIN(sdram_din25), .OEN(sdram_den3_tm), .I(sdram_out25));
pc3b02   isdram_d26  (.PAD(sdram_d26), .CIN(sdram_din26), .OEN(sdram_den3_tm), .I(sdram_out26));
pc3b02   isdram_d27  (.PAD(sdram_d27), .CIN(sdram_din27), .OEN(sdram_den3_tm), .I(sdram_out27));
pc3b02   isdram_d28  (.PAD(sdram_d28), .CIN(sdram_din28), .OEN(sdram_den3_tm), .I(sdram_out28));
pc3b02   isdram_d29  (.PAD(sdram_d29), .CIN(sdram_din29), .OEN(sdram_den3_tm), .I(sdram_out29));
pc3b02   isdram_d30  (.PAD(sdram_d30), .CIN(sdram_din30), .OEN(sdram_den3_tm), .I(sdram_out30));
pc3b02   isdram_d31  (.PAD(sdram_d31), .CIN(sdram_din31), .OEN(sdram_den3_tm), .I(sdram_out31));
pc3o02   isdram_a0   (.PAD(sdram_a0), .I(sdram_adr0));
pc3o02   isdram_a1   (.PAD(sdram_a1), .I(sdram_adr1));
pc3o02   isdram_a2   (.PAD(sdram_a2), .I(sdram_adr2));
pc3o02   isdram_a3   (.PAD(sdram_a3), .I(sdram_adr3));
pc3o02   isdram_a4   (.PAD(sdram_a4), .I(sdram_adr4));
pc3o02   isdram_a5   (.PAD(sdram_a5), .I(sdram_adr5));
pc3o02   isdram_a6   (.PAD(sdram_a6), .I(sdram_adr6));
pc3o02   isdram_a7   (.PAD(sdram_a7), .I(sdram_adr7));
pc3o02   isdram_a8   (.PAD(sdram_a8), .I(sdram_adr8));
pc3o02   isdram_a9   (.PAD(sdram_a9), .I(sdram_adr9));
pc3o02   isdram_a10  (.PAD(sdram_a10), .I(sdram_adr10));
pc3o02   isdram_a11  (.PAD(sdram_a11), .I(sdram_adr11));
pc3o02   isdram_a12  (.PAD(sdram_a12), .I(sdram_adr12));
pc3o02   isdram_dq0  (.PAD(sdram_dq0), .I(sdram_dqm0_out));
pc3o02   isdram_dq1  (.PAD(sdram_dq1), .I(sdram_dqm1_out));
pc3o02   isdram_dq2  (.PAD(sdram_dq2), .I(sdram_dqm2_out));
pc3o02   isdram_dq3  (.PAD(sdram_dq3), .I(sdram_dqm3_out));
pc3o02   isdram_ba0  (.PAD(sdram_ba0), .I(sdram_ba0_out));
pc3o02   isdram_ba1  (.PAD(sdram_ba1), .I(sdram_ba1_out));
pc3o02   isdram_cs   (.PAD(sdram_cs),  .I(sdram_cs_out));
pc3o02   isdram_ras  (.PAD(sdram_ras), .I(sdram_ras_out));
pc3o02   isdram_cas  (.PAD(sdram_cas), .I(sdram_cas_out));
pc3o02   isdram_we   (.PAD(sdram_we),  .I(sdram_we_out));
pc3o02   isdram_clk  (.PAD(sdram_clk), .I(sdram_clk_out));
pc3o02   isdram_cke  (.PAD(sdram_cke), .I(sdram_cke_out));
pc3o02   ispi1_ncs   (.PAD(spi1_ncs),  .I(spi1_ncs_out));
pc3o02   ispi1_clk   (.PAD(spi1_clk),  .I(spi1_clk_out));
pc3d01   ispi1_miso  (.PAD(spi1_miso), .CIN(spi1_miso_in));
pc3o02   ispi1_mosi  (.PAD(spi1_mosi), .I(spi1_mosi_out));
pc3d01   iboot_mode0 (.PAD(boot_mode0), .CIN(boot_mode0_in));
pc3d01   iboot_mode1 (.PAD(boot_mode1), .CIN(boot_mode1_in));
pc3d01   itest_mode  (.PAD(test_mode), .CIN(test_mode_in));

 assign gpio4_en_tm = test_mode_in ? 1'b0 : gpio4_en;
 assign gpio7_en_tm = test_mode_in ? 1'b0 : gpio7_en;
 assign gpio8_en_tm = test_mode_in ? 1'b0 : gpio8_en;
 assign gpio14_en_tm = test_mode_in ? 1'b0 : gpio14_en;
 assign gpio15_en_tm = test_mode_in ? 1'b0 : gpio15_en;

 assign i2c1_scl_en_tm = test_mode_in ? 1'b0 : i2c1_scl_en;
 assign i2c1_sda_en_tm = test_mode_in ? 1'b0 : i2c1_sda_en;

 assign i2c0_scl_en_tm = test_mode_in ? 1'b0 : i2c0_scl_en;
 assign i2c0_sda_en_tm = test_mode_in ? 1'b0 : i2c0_sda_en;

 assign qspi0_io0_en_tm = test_mode_in ? 1'b0 : qspi0_io0_en;
 assign qspi0_io1_en_tm = test_mode_in ? 1'b0 : qspi0_io1_en;
 assign qspi0_io2_en_tm = test_mode_in ? 1'b0 : qspi0_io2_en;
 assign qspi0_io3_en_tm = test_mode_in ? 1'b0 : qspi0_io3_en;

 assign sdram_den0_tm = test_mode_in ? 1'b1 : sdram_den0;
 assign sdram_den1_tm = test_mode_in ? 1'b1 : sdram_den1;
 assign sdram_den2_tm = test_mode_in ? 1'b1 : sdram_den2;
 assign sdram_den3_tm = test_mode_in ? 1'b1 : sdram_den3;

aardonyx rdonyx(
    .test_mode(test_mode_in),
    .boot_mode({boot_mode1_in,boot_mode0_in}),
	  .CLK_tck_clk(tck_in),
	  .RST_N_trst(trst_in),
	  .CLK(clk_in),
	  .RST_N(reset_in),
	  .spi0_io_mosi(spi0_mosi_out),
	  .spi0_io_sclk(spi0_clk_out),
	  .spi0_io_nss(spi0_ncs_out),
	  .spi0_io_miso_dat(spi0_miso_in),
	  .spi1_io_mosi(spi1_mosi_out),
	  .spi1_io_sclk(spi1_clk_out),
	  .spi1_io_nss(spi1_ncs_out),
	  .spi1_io_miso_dat(spi1_miso_in),
	  .uart0_io_SIN(uart0_rx_in),
	  .uart0_io_SOUT(uart0_tx_out),
	  .i2c0_out_scl_out(i2c0_scl_out),
	  .i2c0_out_scl_in_in(i2c0_scl_in),
	  .i2c0_out_scl_out_en(i2c0_scl_en),
	  .i2c0_out_sda_out(i2c0_sda_out),
	  .i2c0_out_sda_in_in(i2c0_sda_in),
	  .i2c0_out_sda_out_en(i2c0_sda_en),
	  .i2c1_out_scl_out(i2c1_scl_out),
	  .i2c1_out_scl_in_in(i2c1_scl_in),
	  .i2c1_out_scl_out_en(i2c1_scl_en),
	  .i2c1_out_sda_out(i2c1_sda_out),
	  .i2c1_out_sda_in_in(i2c1_sda_in),
	  .i2c1_out_sda_out_en(i2c1_sda_en),
    .iocell_io_io7_cell_in_in(gpio0_in),
    .iocell_io_io8_cell_in_in(gpio1_in),
    .iocell_io_io9_cell_in_in(gpio2_in),
    .iocell_io_io10_cell_in_in(gpio3_in),
    .iocell_io_io12_cell_in_in(gpio5_in),
    .iocell_io_io13_cell_in_in(gpio6_in),
    .iocell_io_io16_cell_in_in(gpio9_in),
    .iocell_io_io17_cell_in_in(gpio10_in),
    .iocell_io_io18_cell_in_in(gpio11_in),
	  .iocell_io_io19_cell_in_in(gpio12_in),
	  .iocell_io_io20_cell_in_in(gpio13_in),
	  .iocell_io_io7_cell_out(gpio0_out),
	  .iocell_io_io8_cell_out(gpio1_out),
	  .iocell_io_io9_cell_out(gpio2_out),
	  .iocell_io_io10_cell_out(gpio3_out),
	  .iocell_io_io12_cell_out(gpio5_out),
	  .iocell_io_io13_cell_out(gpio6_out),
	  .iocell_io_io16_cell_out(gpio9_out),
	  .iocell_io_io17_cell_out(gpio10_out),
	  .iocell_io_io18_cell_out(gpio11_out),
	  .iocell_io_io19_cell_out(gpio12_out),
	  .iocell_io_io20_cell_out(gpio13_out),
	  .iocell_io_io7_cell_outen(gpio0_en),
	  .iocell_io_io8_cell_outen(gpio1_en),
	  .iocell_io_io9_cell_outen(gpio2_en),
	  .iocell_io_io10_cell_outen(gpio3_en),
	  .iocell_io_io12_cell_outen(gpio5_en),
	  .iocell_io_io13_cell_outen(gpio6_en),
	  .iocell_io_io16_cell_outen(gpio9_en),
	  .iocell_io_io17_cell_outen(gpio10_en),
	  .iocell_io_io18_cell_outen(gpio11_en),
	  .iocell_io_io19_cell_outen(gpio12_en),
	  .iocell_io_io20_cell_outen(gpio13_en),
    .qspi_io_clk_o(qspi0_clk_out),
	  .qspi_io_io_out({qspi0_io3_out,qspi0_io2_out,qspi0_io1_out,qspi0_io0_out}),
	  .qspi_io_io_enable({qspi0_io3_en,qspi0_io2_en,qspi0_io1_en,qspi0_io0_en}),
	  .qspi_io_io_in_io_in({qspi0_io3_in,qspi0_io2_in,qspi0_io1_in,qspi0_io0_in}),
	  .qspi_io_ncs_o(qspi0_ncs_out),
	  .wire_tms_tms_in(tms_in),
	  .wire_tdi_tdi_in(tdi_in),
	  .wire_tdo(tdo_out),
    .gpio_4_in(gpio4_in),
    .gpio_7_in(gpio7_in),
    .gpio_8_in(gpio8_in),
    .gpio_14_in(gpio14_in),
    .gpio_15_in(gpio15_in),
    .gpio_4_out(gpio4_out),
    .gpio_7_out(gpio7_out),
    .gpio_8_out(gpio8_out),
    .gpio_14_out(gpio14_out),
    .gpio_15_out(gpio15_out),
    .gpio_4_outen(gpio4_en),
    .gpio_7_outen(gpio7_en),
    .gpio_8_outen(gpio8_en),
    .gpio_14_outen(gpio14_en),
    .gpio_15_outen(gpio15_en),
	  .sdram_io_ipad_sdr_din_pad_sdr_din({sdram_din31,sdram_din30,sdram_din29,sdram_din28,sdram_din27,sdram_din26,sdram_din25,sdram_din24,sdram_din23,sdram_din22,sdram_din21,sdram_din20,sdram_din19,sdram_din18,sdram_din17,sdram_din16,sdram_din15,sdram_din14,sdram_din13,sdram_din12,sdram_din11,sdram_din10,sdram_din9,sdram_din8,sdram_din7,sdram_din6,sdram_din5,sdram_din4,sdram_din3,sdram_din2,sdram_din1,sdram_din0}),
	  .sdram_io_osdr_dout({sdram_out31,sdram_out30,sdram_out29,sdram_out28,sdram_out27,sdram_out26,sdram_out25,sdram_out24,sdram_out23,sdram_out22,sdram_out21,sdram_out20,sdram_out19,sdram_out18,sdram_out17,sdram_out16,sdram_out15,sdram_out14,sdram_out13,sdram_out12,sdram_out11,sdram_out10, sdram_out9,sdram_out8,sdram_out7,sdram_out6,sdram_out5,sdram_out4,sdram_out3,sdram_out2,sdram_out1,sdram_out0}),
	  .sdram_io_osdr_den_n({sdram_den3,sdram_den2,sdram_den1,sdram_den0}),
	  .sdram_io_osdr_cke(sdram_cke_out),
	  .sdram_io_osdr_cs_n(sdram_cs_out),
	  .sdram_io_osdr_ras_n(sdram_ras_out),
	  .sdram_io_osdr_cas_n(sdram_cas_out),
	  .sdram_io_osdr_we_n(sdram_we_out),
	  .sdram_io_osdr_dqm({sdram_dqm3_out,sdram_dqm2_out,sdram_dqm1_out,sdram_dqm0_out}),
	  .sdram_io_osdr_ba({sdram_ba1_out,sdram_ba0_out}),
	  .sdram_io_osdr_addr({sdram_adr12,sdram_adr11,sdram_adr10,sdram_adr9,sdram_adr8,sdram_adr7,sdram_adr6,sdram_adr5,sdram_adr4,sdram_adr3,sdram_adr2,sdram_adr1,sdram_adr0}),
	  .CLK_sdram_io_sdram_clk(sdram_clk_out));
endmodule
