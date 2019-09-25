/* 
Copyright (c) 2018, IIT Madras All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted
provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions
  and the following disclaimer.  
* Redistributions in binary form must reproduce the above copyright notice, this list of 
  conditions and the following disclaimer in the documentation and/or other materials provided 
 with the distribution.  
* Neither the name of IIT Madras  nor the names of its contributors may be used to endorse or 
  promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS
OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT 
OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------------------------

Author: Arjun Menon , P.George
Details:

--------------------------------------------------------------------------------------------------
*/
module fpga_top
  (
  // ---- JTAG ports ------- //
    input       pin_tck,
    input       pin_trst,
    input       pin_tms,
    input       pin_tdi,
    output      pin_tdo,
   
   // ---- UART ports --------//
   input         uart0_SIN,
   output        uart0_SOUT,   
//   input         uart1_SIN,
//   output        uart1_SOUT,   
//   input         uart2_SIN,
//   output        uart2_SOUT,   



////   // ---- I2C ports --------//
//   inout         i2c_sda,
//   inout         i2c_scl,
   
////   // ---- SPI ports ---------//
//   output       spi0_mosi,
//   output       spi0_sclk,
//   output       spi0_nss,
//   input        spi0_miso,
//   output       spi1_mosi,
//   output       spi1_sclk,
//   output       spi1_nss,
//   input        spi1_miso,
//   output       spi2_mosi,
//   output       spi2_sclk,
//   output       spi2_nss,
//   input        spi2_miso,
   
    inout[31:0]  sdram_dq,
    output[3:0]  sdram_out_osdr_dqm,
    output[1:0]  sdram_out_osdr_ba,
    output       sdram_out_osdr_we_n,
    output[12:0] sdram_out_osdr_addr,
    output       sdram_out_osdr_cas_n,
    output       sdram_out_osdr_ras_n,
    output       sdram_out_osdr_cs_n0,
    output       sdram_out_osdr_cs_n1,
    output       sdram_out_osdr_cke0,
    output       sdram_out_osdr_cke1,
    output       sdram_clk,



////   // ---- PWM ports ---------//
//   output pwm0,
//   output pwm1,
//   output pwm2,
//   output pwm3,
//   output pwm4,
//   output pwm5,


//   // ---- GPIO ports --------//
//   inout[31:0] gpio,

   // ---- External interrupts ports --------//
//   input [1:0] interrupts,

   // ---- System Reset ------//
   input         sys_rst,	//Active Low
   
   // ---- System Clock ------//
   input         sys_clk_p,
   input         sys_clk_n
  


   
   // ---- XADC signals -----//
//    input vauxp0,                                              
//    input vauxn0,                                              
//    input vauxp4,                                              
//    input vauxn4,                                              
//    input vauxp5,                                              
//    input vauxn5,                                              
//    input vauxp6,                                              
//    input vauxn6,                                              
//    input vauxp7,                                              
//    input vauxn7,                                              
//    input vauxp12,                                             
//    input vauxp13,                                             
//    input vauxp14,                                             
//    input vauxp15,                                             
//    input vauxn12,                                             
//    input vauxn13,                                             
//    input vauxn14,                                             
//    input vauxn15,                                             
//    input vp_in,                                               
//    input vn_in
   );
   
   // Wire instantiations 
   
   wire                            soc_reset;      // reset to the SoC
   wire                            core_clk;       // clock to the SoC
   wire                            locked;         // indicates pll is stable
   wire                            mmcm_locked;    // indicates the ui clock from mig is stable

   wire i2c_scl_out, i2c_scl_in, i2c_scl_out_en;
   wire i2c_sda_out, i2c_sda_in, i2c_sda_out_en;
  
   wire [31:0] gpio_in, gpio_out, gpio_out_en;
   
// ---------------------------------------------------------------------------- //
//  `ifdef JTAG_BSCAN2E
//    wire wire_tck_clk;
//    wire wire_trst;
//    wire wire_capture;
//    wire wire_run_test;
//    wire wire_sel;
//    wire wire_shift;
//    wire wire_tdi;
//    wire wire_tms;
//    wire wire_update;
//    wire wire_tdo;

//    BSCANE2 #(
//      .JTAG_CHAIN(4) // Value for USER command.
//    )
//    bse2_inst (
//      .CAPTURE(wire_capture), // 1-bit output: CAPTURE output from TAP controller.
//      .DRCK(), // 1-bit output: Gated TCK output. When SEL is asserted, DRCK toggles when CAPTURE or SHIFT are asserted.
//      .RESET(wire_trst), // 1-bit output: Reset output for TAP controller.
//      .RUNTEST(wire_run_test), // 1-bit output: Output asserted when TAP controller is in Run Test/Idle state.
//      .SEL(wire_sel), // 1-bit output: USER instruction active output.
//      .SHIFT(wire_shift), // 1-bit output: SHIFT output from TAP controller.
//      .TCK(wire_tck_clk), // 1-bit output: Test Clock output. Fabric connection to TAP Clock pin.
//      .TDI(wire_tdi), // 1-bit output: Test Data Input (TDI) output from TAP controller.
//      .TMS(wire_tms), // 1-bit output: Test Mode Select output. Fabric connection to TAP.
//      .UPDATE(wire_update), // 1-bit output: UPDATE output from TAP controller
//      .TDO(wire_tdo) // 1-bit input: Test Data Output (TDO) input for USER function.
//    );
//  `endif
    
    wire                    sdram_out_osdr_cke;
    wire                    sdram_out_osdr_cs_n;
    wire                    sdram_clk_out;
    wire[7:0]               wr_sdram_out_osdr_den_n;
    wire[31:0]              wr_sdram_out_osdr_dout;
    wire[31:0]              wr_sdram_out_ipad_sdr_din_pad_sdr_din;  
   // XADC Axi4-Lite Slave
//    wire xadc_master_awvalid;
//    wire [11-1 : 0] xadc_master_awaddr;
//    wire xadc_master_m_awready_awready;
//    wire xadc_master_wvalid;
//    wire [32-1 : 0] xadc_master_wdata;
//    wire [(32/8)-1 : 0] xadc_master_wstrb;
//    wire xadc_master_m_wready_wready;
//    wire xadc_master_m_bvalid_bvalid;
//    wire [1:0] xadc_master_m_bvalid_bresp;
//    wire xadc_master_bready;
//    wire xadc_master_arvalid;
//    wire [11-1 : 0] xadc_master_araddr;
//    wire xadc_master_m_arready_arready;
//    wire xadc_master_m_rvalid_rvalid;
//    wire [1 : 0] xadc_master_m_rvalid_rresp;
//    wire [32-1 : 0] xadc_master_m_rvalid_rdata;
//    wire xadc_master_rready;
   
    assign sdram_out_osdr_cs_n0 = sdram_out_osdr_cs_n;
    assign sdram_out_osdr_cs_n1 = 1'b1; 
    
    assign sdram_out_osdr_cke0 = sdram_out_osdr_cke;
    assign sdram_out_osdr_cke1 = sdram_out_osdr_cke; 
    
    assign sdram_clk = sdram_clk_out;
   // ---------------------------------------------------------------------------- //
   assign soc_reset = locked;

   // ---------- Clock divider ----------------//
   
   clk_divider clk_div (
                       .clk_in1_p(sys_clk_p),  
                       .clk_in1_n(sys_clk_n),  
                       .clk_out1(core_clk),
                       .reset(sys_rst), 
                       .locked(locked) );
   // ----------------------------------------- //


   // ---- Instantiating the C-class SoC -------------//
   aardonyx core(
       // Main Clock and Reset to the SoC
        .CLK(core_clk),
        .RST_N(soc_reset),
       
       // JTAG port definitions
       .CLK_tck_clk(pin_tck),
       .RST_N_trst(pin_trst),
       .wire_tms_tms_in(pin_tms),
       .wire_tdi_tdi_in(pin_tdi),
       .wire_tdo(pin_tdo),
//`else
//        .CLK_tck_clk(wire_tck_clk),
//        .RST_N_trst(~wire_trst),
//        .wire_capture_capture_in(wire_capture),     
//        .wire_run_test_run_test_in(wire_run_test),     
//        .wire_sel_sel_in(wire_sel),     
//        .wire_shift_shift_in(wire_shift),     
//        .wire_tdi_tdi_in(wire_tdi),     
//        .wire_tms_tms_in(wire_tms),     
//        .wire_update_update_in(wire_update),     
//        .wire_tdo(wire_tdo),
//`endif

			 //GPIO ports
//        .gpio_io_gpio_in_inp(gpio_in),
//        .gpio_io_gpio_out(gpio_out),
//        .gpio_io_gpio_out_en(gpio_out_en),

      // PWM ports
//        .pwm0_io_pwm_o(pwm0),
//        .pwm1_io_pwm_o(pwm1),
//        .pwm2_io_pwm_o(pwm2),
//        .pwm3_io_pwm_o(pwm3),
//        .pwm4_io_pwm_o(pwm4),
//        .pwm5_io_pwm_o(pwm5),
    
      // SPI ports
//        .spi0_io_mosi(spi0_mosi),
//        .spi0_io_sclk(spi0_sclk),
//        .spi0_io_nss(spi0_nss),
//	      .spi0_io_miso_dat(spi0_miso),
//        .spi1_io_mosi(spi1_mosi),
//        .spi1_io_sclk(spi1_sclk),
//        .spi1_io_nss(spi1_nss),
//	      .spi1_io_miso_dat(spi1_miso),
//        .spi2_io_mosi(spi2_mosi),
//        .spi2_io_sclk(spi2_sclk),
//        .spi2_io_nss(spi2_nss), 
//	      .spi2_io_miso_dat(spi2_miso),

       // UART port definitions
        .uart0_io_SIN(uart0_SIN),
        .uart0_io_SOUT(uart0_SOUT),
//        .uart1_io_SIN(uart1_SIN),
//        .uart1_io_SOUT(uart1_SOUT),
//        .uart2_io_SIN(uart2_SIN),
//        .uart2_io_SOUT(uart2_SOUT),
        
//			 //I2C ports
//      .i2c_out_scl_out (i2c_scl_out),
//      .i2c_out_scl_in_in(i2c_scl_in),
//      .i2c_out_scl_out_en(i2c_scl_out_en),
//      .i2c_out_sda_out(i2c_sda_out),
//      .i2c_out_sda_in_in(i2c_sda_in),
//      .i2c_out_sda_out_en(i2c_sda_out_en),

      // XADC connection
//    .xadc_master_awvalid(xadc_master_awvalid),
//    .xadc_master_awaddr(xadc_master_awaddr),
//    .xadc_master_m_awready_awready(xadc_master_m_awready_awready),
//    .xadc_master_wvalid(xadc_master_wvalid),
//    .xadc_master_wdata(xadc_master_wdata),
//    .xadc_master_wstrb(xadc_master_wstrb),
//    .xadc_master_m_wready_wready(xadc_master_m_wready_wready),
//    .xadc_master_m_bvalid_bvalid(xadc_master_m_bvalid_bvalid),
//    .xadc_master_m_bvalid_bresp(xadc_master_m_bvalid_bresp),
//    .xadc_master_bready(xadc_master_bready),
//    .xadc_master_arvalid(xadc_master_arvalid),
//    .xadc_master_araddr(xadc_master_araddr),
//    .xadc_master_m_arready_arready(xadc_master_m_arready_arready),
//    .xadc_master_m_rvalid_rvalid(xadc_master_m_rvalid_rvalid),
//    .xadc_master_m_rvalid_rresp(xadc_master_m_rvalid_rresp),
//    .xadc_master_m_rvalid_rdata(xadc_master_m_rvalid_rdata),
//    .xadc_master_rready(xadc_master_rready),
      //SDRAM_32BIT
     .CLK_sdram_io_sdram_clk(sdram_clk_out),
//     .CLK_GATE_sdram_io_sdram_clk();
   	 .sdram_io_ipad_sdr_din_pad_sdr_din(wr_sdram_out_ipad_sdr_din_pad_sdr_din),
     .sdram_io_osdr_dout(wr_sdram_out_osdr_dout),
//     .RDY_sdram_io_osdr_dout(),
     .sdram_io_osdr_den_n(wr_sdram_out_osdr_den_n),
//     .RDY_sdram_io_osdr_den_n(),
     .sdram_io_osdr_cke(sdram_out_osdr_cke),
//     .RDY_sdram_io_osdr_cke(),
     .sdram_io_osdr_cs_n(sdram_out_osdr_cs_n),
//     .RDY_sdram_io_osdr_cs_n(),
     .sdram_io_osdr_ras_n(sdram_out_osdr_ras_n),
//     .RDY_sdram_io_osdr_ras_n(),
     .sdram_io_osdr_cas_n(sdram_out_osdr_cas_n),
//    .RDY_sdram_io_osdr_cas_n(),
     .sdram_io_osdr_we_n(sdram_out_osdr_we_n),
//     .RDY_sdram_io_osdr_we_n(),
     .sdram_io_osdr_dqm(sdram_out_osdr_dqm),
//     .RDY_sdram_io_osdr_dqm(),
     .sdram_io_osdr_ba(sdram_out_osdr_ba),
//     .RDY_sdram_io_osdr_ba(),
     .sdram_io_osdr_addr(sdram_out_osdr_addr)
//     .RDY_sdram_io_osdr_addr()      


//        .ext_interrupts_i(interrupts)
   );
   // --- Instantiating XADC -------------------------//

//xadc_wiz_0
//xadc_wiz_inst (
//    .s_axi_aclk      (core_clk),                    
//    .s_axi_aresetn   (soc_reset),                    
//    .s_axi_awaddr    (xadc_master_awaddr),                    
//    .s_axi_awvalid   (xadc_master_awvalid),                    
//    .s_axi_awready   (xadc_master_m_awready_awready),                    
//    .s_axi_wdata     (xadc_master_wdata),                    
//    .s_axi_wstrb     (xadc_master_wstrb),                    
//    .s_axi_wvalid    (xadc_master_wvalid),                    
//    .s_axi_wready    (xadc_master_m_wready_wready),                    
//    .s_axi_bresp     (xadc_master_m_bvalid_bresp),                    
//    .s_axi_bvalid    (xadc_master_m_bvalid_bvalid),                    
//    .s_axi_bready    (xadc_master_bready),                    
//    .s_axi_araddr    (xadc_master_araddr),                    
//    .s_axi_arvalid   (xadc_master_arvalid),                    
//    .s_axi_arready   (xadc_master_m_arready_arready),                    
//    .s_axi_rdata     (xadc_master_m_rvalid_rdata),                    
//    .s_axi_rresp     (xadc_master_m_rvalid_rresp),                    
//    .s_axi_rvalid    (xadc_master_m_rvalid_rvalid),                    
//    .s_axi_rready    (xadc_master_rready),
//    .vauxp0 (vauxp0),
//    .vauxn0 (vauxn0),
//    .vauxp4 (vauxp4),
//    .vauxn4 (vauxn4),
//    .vauxp5 (vauxp5),
//    .vauxn5 (vauxn5),
//    .vauxp6 (vauxp6),
//    .vauxn6 (vauxn6),
//    .vauxp7 (vauxp7),
//    .vauxn7 (vauxn7),
//    .vauxp12 (vauxp12),
//    .vauxn12 (vauxn12),
//    .vauxp13 (vauxp13),
//    .vauxn13 (vauxn13),
//    .vauxp14 (vauxp14),
//    .vauxn14 (vauxn14),
//    .vauxp15 (vauxp15),
//    .vauxn15 (vauxn15),
//    .vp_in (vp_in),
//    .vn_in (vn_in)
//      );

//   // ---- Instantiating the C-class SoC -------------//
//   genvar index;
//   generate
//   for(index=0; index<32; index= index+1) 
//      begin: connect_gpio_tristates
//      IOBUF gpio_iobuf_inst (
//             .O(gpio_in[index]),
//             .IO(gpio[index]),
//             .I(gpio_out[index]),
//             .T(~gpio_out_en[index])
//				 );
//      end
//   endgenerate
////---- IOBUF FOR I2C -----//   
//   IOBUF i2c_scl_inst(
//             .O(i2c_scl_in),
//             .IO(i2c_scl),
//             .I(i2c_scl_out),
//             .T(~i2c_scl_out_en)
//         );
 
//   IOBUF i2c_sda_inst(
//             .O(i2c_sda_in),
//             .IO(i2c_sda),
//             .I(i2c_sda_out),
//             .T(~i2c_sda_out_en)
//         );
   IOBUF sdram_dq0 (
             .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[0]),
             .IO(sdram_dq[0]),
             .I(wr_sdram_out_osdr_dout[0]),
             .T(wr_sdram_out_osdr_den_n[0])
    );
                            
    IOBUF sdram_dq1 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[1]),
                .IO(sdram_dq[1]),
                .I(wr_sdram_out_osdr_dout[1]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
                   
    IOBUF sdram_dq2 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[2]),
                .IO(sdram_dq[2]),
                .I(wr_sdram_out_osdr_dout[2]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
                   
    IOBUF sdram_dq3 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[3]),
                .IO(sdram_dq[3]),
                .I(wr_sdram_out_osdr_dout[3]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq4 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[4]),
                .IO(sdram_dq[4]),
                .I(wr_sdram_out_osdr_dout[4]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq5 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[5]),
                .IO(sdram_dq[5]),
                .I(wr_sdram_out_osdr_dout[5]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq6 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[6]),
                .IO(sdram_dq[6]),
                .I(wr_sdram_out_osdr_dout[6]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq7 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[7]),
                .IO(sdram_dq[7]),
                .I(wr_sdram_out_osdr_dout[7]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq8 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[8]),
                .IO(sdram_dq[8]),
                .I(wr_sdram_out_osdr_dout[8]),
                .T(wr_sdram_out_osdr_den_n[0])
             );
    
    IOBUF sdram_dq9 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[9]),
                .IO(sdram_dq[9]),
                .I(wr_sdram_out_osdr_dout[9]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq10 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[10]),
                .IO(sdram_dq[10]),
                .I(wr_sdram_out_osdr_dout[10]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq11 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[11]),
                .IO(sdram_dq[11]),
                .I(wr_sdram_out_osdr_dout[11]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq12 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[12]),
                .IO(sdram_dq[12]),
                .I(wr_sdram_out_osdr_dout[12]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq13 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[13]),
                .IO(sdram_dq[13]),
                .I(wr_sdram_out_osdr_dout[13]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq14 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[14]),
                .IO(sdram_dq[14]),
                .I(wr_sdram_out_osdr_dout[14]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq15 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[15]),
                .IO(sdram_dq[15]),
                .I(wr_sdram_out_osdr_dout[15]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq16 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[16]),
                .IO(sdram_dq[16]),
                .I(wr_sdram_out_osdr_dout[16]),
                .T(wr_sdram_out_osdr_den_n[1])
             );
    
    IOBUF sdram_dq17 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[17]),
                .IO(sdram_dq[17]),
                .I(wr_sdram_out_osdr_dout[17]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq18 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[18]),
                .IO(sdram_dq[18]),
                .I(wr_sdram_out_osdr_dout[18]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq19 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[19]),
                .IO(sdram_dq[19]),
                .I(wr_sdram_out_osdr_dout[19]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq20 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[20]),
                .IO(sdram_dq[20]),
                .I(wr_sdram_out_osdr_dout[20]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq21 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[21]),
                .IO(sdram_dq[21]),
                .I(wr_sdram_out_osdr_dout[21]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq22 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[22]),
                .IO(sdram_dq[22]),
                .I(wr_sdram_out_osdr_dout[22]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq23 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[23]),
                .IO(sdram_dq[23]),
                .I(wr_sdram_out_osdr_dout[23]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq24 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[24]),
                .IO(sdram_dq[24]),
                .I(wr_sdram_out_osdr_dout[24]),
                .T(wr_sdram_out_osdr_den_n[2])
             );
    
    IOBUF sdram_dq25 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[25]),
                .IO(sdram_dq[25]),
                .I(wr_sdram_out_osdr_dout[25]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq26 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[26]),
                .IO(sdram_dq[26]),
                .I(wr_sdram_out_osdr_dout[26]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq27 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[27]),
                .IO(sdram_dq[27]),
                .I(wr_sdram_out_osdr_dout[27]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq28 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[28]),
                .IO(sdram_dq[28]),
                .I(wr_sdram_out_osdr_dout[28]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq29 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[29]),
                .IO(sdram_dq[29]),
                .I(wr_sdram_out_osdr_dout[29]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq30 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[30]),
                .IO(sdram_dq[30]),
                .I(wr_sdram_out_osdr_dout[30]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
    IOBUF sdram_dq31 (
                .O(wr_sdram_out_ipad_sdr_din_pad_sdr_din[31]),
                .IO(sdram_dq[31]),
                .I(wr_sdram_out_osdr_dout[31]),
                .T(wr_sdram_out_osdr_den_n[3])
             );
    
         
   

endmodule
