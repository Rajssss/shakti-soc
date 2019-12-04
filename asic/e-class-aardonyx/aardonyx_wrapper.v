module aardonyx_wrapper(CLK,
                     RESET,
                     SPI0_NCS,
                     SPI0_CLK,
                     SPI0_MISO,
                     SPI0_MOSI,
                     GPIO_0,
                     GPIO_1,
                     GPIO_2,
                     GPIO_3,
                     GPIO_4,
                     GPIO_5,
                     GPIO_6,
                     GPIO_7,
                     GPIO_8,
                     GPIO_9,
                     GPIO_10,
                     GPIO_11,
                     GPIO_12,
                     GPIO_13,
                     GPIO_14,
                     GPIO_15,
                     I2C1_SCL,
                     I2C1_SDA,
                     QSPI0_CLK,
                     QSPI0_NCS,
                     QSPI0_IO0,
                     QSPI0_IO1, 
                     QSPI0_IO2,
                     QSPI0_IO3,
                     I2C0_SDA,
                     I2C0_SCL,
                     UART0_TX,
                     UART0_RX,
                     TMS,
                     TRST,
                     TCK,
                     TDI,
                     TDO,
                     SDRAM_D0,
                     SDRAM_D1,
                     SDRAM_D2,
                     SDRAM_D3,
                     SDRAM_D4,
                     SDRAM_D5,
                     SDRAM_D6,
                     SDRAM_D7,
                     SDRAM_D8,
                     SDRAM_D9,
                     SDRAM_D10,
                     SDRAM_D11,
                     SDRAM_D12,
                     SDRAM_D13,
                     SDRAM_D14,
                     SDRAM_D15,
                     SDRAM_D16,
                     SDRAM_D17,
                     SDRAM_D18,
                     SDRAM_D19,
                     SDRAM_D20,
                     SDRAM_D21,
                     SDRAM_D22,
                     SDRAM_D23,
                     SDRAM_D24,
                     SDRAM_D25,
                     SDRAM_D26,
                     SDRAM_D27,
                     SDRAM_D28,
                     SDRAM_D29,
                     SDRAM_D30,
                     SDRAM_D31,
                     SDRAM_A0,
                     SDRAM_A1,
                     SDRAM_A2,
                     SDRAM_A3,
                     SDRAM_A4,
                     SDRAM_A5,
                     SDRAM_A6,
                     SDRAM_A7,
                     SDRAM_A8,
                     SDRAM_A9,
                     SDRAM_A10,
                     SDRAM_A11,
                     SDRAM_A12,
                     SDRAM_DQ0,
                     SDRAM_DQ1,
                     SDRAM_DQ2,
                     SDRAM_DQ3,
                     SDRAM_BA0,
                     SDRAM_BA1,
                     SDRAM_CS,
                     SDRAM_RAS,
                     SDRAM_CAS,
                     SDRAM_WE,
                     SDRAM_CLK,
                     SDRAM_CKE,
                     SPI1_NCS,
                     SPI1_CLK,
                     SPI1_MISO,
                     SPI1_MOSI,
                     BOOT_MODE0,
                     BOOT_MODE1,
                     TEST_MODE);

input CLK;
input RESET;
output SPI0_NCS;                                                                      
output SPI0_CLK;                                                                      
input SPI0_MISO;                                                                     
output SPI0_MOSI;                                                                     
inout GPIO_0;
inout GPIO_1;
inout GPIO_2;
inout GPIO_3;
inout GPIO_4;
inout GPIO_5; 
inout GPIO_6;
inout GPIO_7;
inout GPIO_8;
inout GPIO_9;
inout GPIO_10;
inout GPIO_11;
inout GPIO_12;
inout GPIO_13;
inout GPIO_14;
inout GPIO_15;
inout I2C1_SCL;                                                                      
inout I2C1_SDA;                                                                      
output QSPI0_CLK;                                                                     
output QSPI0_NCS;                                                                     
inout QSPI0_IO0;
inout QSPI0_IO1;
inout QSPI0_IO2;
inout QSPI0_IO3;
inout I2C0_SDA;                                                                      
inout I2C0_SCL;                                                                      
output UART0_TX;                                                                      
input UART0_RX;
input TMS;                                                                                          
input TRST;                                                                                         
input TCK;                                                                                          
input TDI;                                                                                          
output TDO;
inout SDRAM_D0;
inout SDRAM_D1;
inout SDRAM_D2;
inout SDRAM_D3;
inout SDRAM_D4;
inout SDRAM_D5;
inout SDRAM_D6;
inout SDRAM_D7;
inout SDRAM_D8;
inout SDRAM_D9;
inout SDRAM_D10;
inout SDRAM_D11;
inout SDRAM_D12;
inout SDRAM_D13;
inout SDRAM_D14;
inout SDRAM_D15;
inout SDRAM_D16;
inout SDRAM_D17;
inout SDRAM_D18;
inout SDRAM_D19;
inout SDRAM_D20;
inout SDRAM_D21;
inout SDRAM_D22;
inout SDRAM_D23;
inout SDRAM_D24;
inout SDRAM_D25;
inout SDRAM_D26;
inout SDRAM_D27;
inout SDRAM_D28;
inout SDRAM_D29;
inout SDRAM_D30;
inout SDRAM_D31;
output SDRAM_A0;
output SDRAM_A1;
output SDRAM_A2;
output SDRAM_A3;
output SDRAM_A4;
output SDRAM_A5;
output SDRAM_A6;
output SDRAM_A7;
output SDRAM_A8;
output SDRAM_A9;
output SDRAM_A10;
output SDRAM_A11;
output SDRAM_A12;
output SDRAM_DQ0;
output SDRAM_DQ1;
output SDRAM_DQ2;
output SDRAM_DQ3;
output SDRAM_BA0;
output SDRAM_BA1;
output SDRAM_CS;
output SDRAM_RAS;
output SDRAM_CAS;
output SDRAM_WE;
output SDRAM_CLK;
output SDRAM_CKE;
output SPI1_NCS;
output SPI1_CLK;
input SPI1_MISO;
output SPI1_MOSI;
input BOOT_MODE0;
input BOOT_MODE1;
input TEST_MODE;

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
pc3d21   iCLK        (.PAD(CLK), .CIN(clk_in));
pc3d01   iRESET      (.PAD(RESET), .CIN(reset_in));
pc3o02   iSPI0_NCS   (.PAD(SPI0_NCS), .I(spi0_ncs_out));          
pc3o02   iSPI0_CLK   (.PAD(SPI0_CLK), .I(spi0_clk_out));
pc3d01   iSPI0_MISO  (.PAD(SPI0_MISO), .CIN(spi0_miso_in));
pc3o02   iSPI0_MOSI  (.PAD(SPI0_MOSI), .I(spi0_mosi_out));
pc3b02   iGPIO_0     (.PAD(GPIO_0), .CIN(gpio0_in), .OEN(gpio0_en), .I(gpio0_out));
pc3b02   iGPIO_1     (.PAD(GPIO_1), .CIN(gpio1_in), .OEN(gpio1_en), .I(gpio1_out));
pc3b02   iGPIO_2     (.PAD(GPIO_2), .CIN(gpio2_in), .OEN(gpio2_en), .I(gpio2_out));
pc3b02   iGPIO_3     (.PAD(GPIO_3), .CIN(gpio3_in), .OEN(gpio3_en), .I(gpio3_out));
pc3b02   iGPIO_4     (.PAD(GPIO_4), .CIN(gpio4_in), .OEN(~gpio4_en_tm), .I(gpio4_out));
pc3b02   iGPIO_5     (.PAD(GPIO_5), .CIN(gpio5_in), .OEN(gpio5_en), .I(gpio5_out));
pc3b02   iGPIO_6     (.PAD(GPIO_6), .CIN(gpio6_in), .OEN(gpio6_en), .I(gpio6_out));
pc3b02   iGPIO_7     (.PAD(GPIO_7), .CIN(gpio7_in), .OEN(~gpio7_en_tm), .I(gpio7_out));
pc3b02   iGPIO_8     (.PAD(GPIO_8), .CIN(gpio8_in), .OEN(~gpio8_en_tm), .I(gpio8_out));
pc3b02   iGPIO_9     (.PAD(GPIO_9), .CIN(gpio9_in), .OEN(gpio9_en), .I(gpio9_out));
pc3b02   iGPIO_10    (.PAD(GPIO_10), .CIN(gpio10_in), .OEN(gpio10_en), .I(gpio10_out));
pc3b02   iGPIO_11    (.PAD(GPIO_11), .CIN(gpio11_in), .OEN(gpio11_en), .I(gpio11_out));
pc3b02   iGPIO_12    (.PAD(GPIO_12), .CIN(gpio12_in), .OEN(gpio12_en), .I(gpio12_out));
pc3b02   iGPIO_13    (.PAD(GPIO_13), .CIN(gpio13_in), .OEN(gpio13_en), .I(gpio13_out));
pc3b02   iGPIO_14    (.PAD(GPIO_14), .CIN(gpio14_in), .OEN(~gpio14_en_tm), .I(gpio14_out));
pc3b02   iGPIO_15    (.PAD(GPIO_15), .CIN(gpio15_in), .OEN(~gpio15_en_tm), .I(gpio15_out));
pc3b02u  iI2C1_SCL   (.PAD(I2C1_SCL), .CIN(i2c1_scl_in), .OEN(~i2c1_scl_en_tm), .I(i2c1_scl_out));
pc3b02u  iI2C1_SDA   (.PAD(I2C1_SDA), .CIN(i2c1_sda_in), .OEN(~i2c1_sda_en_tm), .I(i2c1_sda_out));
pc3o02   iQSPI0_CLK  (.PAD(QSPI0_CLK), .I(qspi0_clk_out));
pc3o02   iQSPI0_NCS  (.PAD(QSPI0_NCS), .I(qspi0_ncs_out));
pc3b02   iQSPI0_IO0  (.PAD(QSPI0_IO0), .CIN(qspi0_io0_in), .OEN(~qspi0_io0_en_tm), .I(qspi0_io0_out));
pc3b02   iQSPI0_IO1  (.PAD(QSPI0_IO1), .CIN(qspi0_io1_in), .OEN(~qspi0_io1_en_tm), .I(qspi0_io1_out)); 
pc3b02   iQSPI0_IO2  (.PAD(QSPI0_IO2), .CIN(qspi0_io2_in), .OEN(~qspi0_io2_en_tm), .I(qspi0_io2_out));
pc3b02   iQSPI0_IO3  (.PAD(QSPI0_IO3), .CIN(qspi0_io3_in), .OEN(~qspi0_io3_en_tm), .I(qspi0_io3_out));
pc3b02u  iI2C0_SDA   (.PAD(I2C0_SDA), .CIN(i2c0_sda_in), .OEN(~i2c0_sda_en_tm), .I(i2c0_sda_out));
pc3b02u  iI2C0_SCL   (.PAD(I2C0_SCL), .CIN(i2c0_scl_in), .OEN(~i2c0_scl_en_tm), .I(i2c0_scl_out));
pc3o02   iUART0_TX   (.PAD(UART0_TX), .I(uart0_tx_out));
pc3d01   iUART0_RX   (.PAD(UART0_RX), .CIN(uart0_rx_in));
pc3d01   iTMS        (.PAD(TMS), .CIN(tms_in));
pc3d01   iTRST       (.PAD(TRST), .CIN(trst_in));
pc3d01   iTCK        (.PAD(TCK), .CIN(tck_in));
pc3d01   iTDI        (.PAD(TDI), .CIN(tdi_in));
pc3o02   iTDO        (.PAD(TDO), .I(tdo_out));
pc3b02   iSDRAM_D0   (.PAD(SDRAM_D0), .CIN(sdram_din0), .OEN(sdram_den0_tm), .I(sdram_out0));
pc3b02   iSDRAM_D1   (.PAD(SDRAM_D1), .CIN(sdram_din1), .OEN(sdram_den0_tm), .I(sdram_out1));
pc3b02   iSDRAM_D2   (.PAD(SDRAM_D2), .CIN(sdram_din2), .OEN(sdram_den0_tm), .I(sdram_out2));
pc3b02   iSDRAM_D3   (.PAD(SDRAM_D3), .CIN(sdram_din3), .OEN(sdram_den0_tm), .I(sdram_out3));
pc3b02   iSDRAM_D4   (.PAD(SDRAM_D4), .CIN(sdram_din4), .OEN(sdram_den0_tm), .I(sdram_out4));
pc3b02   iSDRAM_D5   (.PAD(SDRAM_D5), .CIN(sdram_din5), .OEN(sdram_den0_tm), .I(sdram_out5));
pc3b02   iSDRAM_D6   (.PAD(SDRAM_D6), .CIN(sdram_din6), .OEN(sdram_den0_tm), .I(sdram_out6));
pc3b02   iSDRAM_D7   (.PAD(SDRAM_D7), .CIN(sdram_din7), .OEN(sdram_den0_tm), .I(sdram_out7));
pc3b02   iSDRAM_D8   (.PAD(SDRAM_D8), .CIN(sdram_din8), .OEN(sdram_den1_tm), .I(sdram_out8));
pc3b02   iSDRAM_D9   (.PAD(SDRAM_D9), .CIN(sdram_din9), .OEN(sdram_den1_tm), .I(sdram_out9));
pc3b02   iSDRAM_D10  (.PAD(SDRAM_D10), .CIN(sdram_din10), .OEN(sdram_den1_tm), .I(sdram_out10));
pc3b02   iSDRAM_D11  (.PAD(SDRAM_D11), .CIN(sdram_din11), .OEN(sdram_den1_tm), .I(sdram_out11));
pc3b02   iSDRAM_D12  (.PAD(SDRAM_D12), .CIN(sdram_din12), .OEN(sdram_den1_tm), .I(sdram_out12));
pc3b02   iSDRAM_D13  (.PAD(SDRAM_D13), .CIN(sdram_din13), .OEN(sdram_den1_tm), .I(sdram_out13));
pc3b02   iSDRAM_D14  (.PAD(SDRAM_D14), .CIN(sdram_din14), .OEN(sdram_den1_tm), .I(sdram_out14));
pc3b02   iSDRAM_D15  (.PAD(SDRAM_D15), .CIN(sdram_din15), .OEN(sdram_den1_tm), .I(sdram_out15));
pc3b02   iSDRAM_D16  (.PAD(SDRAM_D16), .CIN(sdram_din16), .OEN(sdram_den2_tm), .I(sdram_out16));
pc3b02   iSDRAM_D17  (.PAD(SDRAM_D17), .CIN(sdram_din17), .OEN(sdram_den2_tm), .I(sdram_out17));
pc3b02   iSDRAM_D18  (.PAD(SDRAM_D18), .CIN(sdram_din18), .OEN(sdram_den2_tm), .I(sdram_out18));
pc3b02   iSDRAM_D19  (.PAD(SDRAM_D19), .CIN(sdram_din19), .OEN(sdram_den2_tm), .I(sdram_out19));
pc3b02   iSDRAM_D20  (.PAD(SDRAM_D20), .CIN(sdram_din20), .OEN(sdram_den2_tm), .I(sdram_out20));
pc3b02   iSDRAM_D21  (.PAD(SDRAM_D21), .CIN(sdram_din21), .OEN(sdram_den2_tm), .I(sdram_out21));
pc3b02   iSDRAM_D22  (.PAD(SDRAM_D22), .CIN(sdram_din22), .OEN(sdram_den2_tm), .I(sdram_out22));
pc3b02   iSDRAM_D23  (.PAD(SDRAM_D23), .CIN(sdram_din23), .OEN(sdram_den2_tm), .I(sdram_out23));
pc3b02   iSDRAM_D24  (.PAD(SDRAM_D24), .CIN(sdram_din24), .OEN(sdram_den3_tm), .I(sdram_out24));
pc3b02   iSDRAM_D25  (.PAD(SDRAM_D25), .CIN(sdram_din25), .OEN(sdram_den3_tm), .I(sdram_out25));
pc3b02   iSDRAM_D26  (.PAD(SDRAM_D26), .CIN(sdram_din26), .OEN(sdram_den3_tm), .I(sdram_out26));
pc3b02   iSDRAM_D27  (.PAD(SDRAM_D27), .CIN(sdram_din27), .OEN(sdram_den3_tm), .I(sdram_out27));
pc3b02   iSDRAM_D28  (.PAD(SDRAM_D28), .CIN(sdram_din28), .OEN(sdram_den3_tm), .I(sdram_out28));
pc3b02   iSDRAM_D29  (.PAD(SDRAM_D29), .CIN(sdram_din29), .OEN(sdram_den3_tm), .I(sdram_out29));
pc3b02   iSDRAM_D30  (.PAD(SDRAM_D30), .CIN(sdram_din30), .OEN(sdram_den3_tm), .I(sdram_out30));
pc3b02   iSDRAM_D31  (.PAD(SDRAM_D31), .CIN(sdram_din31), .OEN(sdram_den3_tm), .I(sdram_out31));
pc3o02   iSDRAM_A0   (.PAD(SDRAM_A0), .I(sdram_adr0));
pc3o02   iSDRAM_A1   (.PAD(SDRAM_A1), .I(sdram_adr1));
pc3o02   iSDRAM_A2   (.PAD(SDRAM_A2), .I(sdram_adr2));
pc3o02   iSDRAM_A3   (.PAD(SDRAM_A3), .I(sdram_adr3));
pc3o02   iSDRAM_A4   (.PAD(SDRAM_A4), .I(sdram_adr4));
pc3o02   iSDRAM_A5   (.PAD(SDRAM_A5), .I(sdram_adr5));
pc3o02   iSDRAM_A6   (.PAD(SDRAM_A6), .I(sdram_adr6));
pc3o02   iSDRAM_A7   (.PAD(SDRAM_A7), .I(sdram_adr7));
pc3o02   iSDRAM_A8   (.PAD(SDRAM_A8), .I(sdram_adr8));
pc3o02   iSDRAM_A9   (.PAD(SDRAM_A9), .I(sdram_adr9));
pc3o02   iSDRAM_A10  (.PAD(SDRAM_A10), .I(sdram_adr10));
pc3o02   iSDRAM_A11  (.PAD(SDRAM_A11), .I(sdram_adr11));
pc3o02   iSDRAM_A12  (.PAD(SDRAM_A12), .I(sdram_adr12));
pc3o02   iSDRAM_DQ0  (.PAD(SDRAM_DQ0), .I(sdram_dqm0_out));
pc3o02   iSDRAM_DQ1  (.PAD(SDRAM_DQ1), .I(sdram_dqm1_out));
pc3o02   iSDRAM_DQ2  (.PAD(SDRAM_DQ2), .I(sdram_dqm2_out));
pc3o02   iSDRAM_DQ3  (.PAD(SDRAM_DQ3), .I(sdram_dqm3_out));
pc3o02   iSDRAM_BA0  (.PAD(SDRAM_BA0), .I(sdram_ba0_out));
pc3o02   iSDRAM_BA1  (.PAD(SDRAM_BA1), .I(sdram_ba1_out));
pc3o02   iSDRAM_CS   (.PAD(SDRAM_CS),  .I(sdram_cs_out));
pc3o02   iSDRAM_RAS  (.PAD(SDRAM_RAS), .I(sdram_ras_out));
pc3o02   iSDRAM_CAS  (.PAD(SDRAM_CAS), .I(sdram_cas_out));
pc3o02   iSDRAM_WE   (.PAD(SDRAM_WE),  .I(sdram_we_out));
pc3o02   iSDRAM_CLK  (.PAD(SDRAM_CLK), .I(sdram_clk_out));
pc3o02   iSDRAM_CKE  (.PAD(SDRAM_CKE), .I(sdram_cke_out));
pc3o02   iSPI1_NCS   (.PAD(SPI1_NCS),  .I(spi1_ncs_out));
pc3o02   iSPI1_CLK   (.PAD(SPI1_CLK),  .I(spi1_clk_out));
pc3d01   iSPI1_MISO  (.PAD(SPI1_MISO), .CIN(spi1_miso_in));
pc3o02   iSPI1_MOSI  (.PAD(SPI1_MOSI), .I(spi1_mosi_out));
pc3d01   iBOOT_MODE0 (.PAD(BOOT_MODE0), .CIN(boot_mode0_in));
pc3d01   iBOOT_MODE1 (.PAD(BOOT_MODE1), .CIN(boot_mode1_in));
pc3d01   iTEST_MODE  (.PAD(TEST_MODE), .CIN(test_mode_in));

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
