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

Author: Raja Nainar Mohamed, S.Madan
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

   // ---- I2C ports --------//
    inout         i2c0_sda,
    inout         i2c0_scl,
    inout         i2c1_sda,
    inout         i2c1_scl,


//   // ---- SPI ports ---------//
    output       spi0_mosi,
    output       spi0_sclk,
    output       spi0_nss,
    input        spi0_miso,
    output       spi1_mosi,
    output       spi1_sclk,
    output       spi1_nss,
    input        spi1_miso,

  // ---- io_cell_ports(Pin Muxed) ---------//
    inout io7_cell,
    inout io8_cell,
    inout io9_cell,
    inout io10_cell,
    inout io12_cell,
    inout io13_cell,
    inout io16_cell,
    inout io17_cell,
    inout io18_cell,
    inout io19_cell,
    inout io20_cell,

  //-----QSPI Ports -------//
    output qspi_clk,
    output qspi_ncs,
    inout [3:0]qspi_io,
    
  // ---- GPIO ports --------//
    inout gpio_4,
    inout gpio_7,
    inout gpio_8,
    inout gpio_14,
    inout gpio_15,

    // ---- System Reset ------//
    input         sys_rst,	//Active Low

    // ---- System Clock ------//
    input         sys_clk,
    
    //-----mode select----//
    input test_mode,

    //---- boot select---//
    input [1:0]boot_mode
     );

   // Wire instantiations

   wire                            soc_reset;      // reset to the SoC
   wire                            core_clk;       // clock to the SoC
   wire                            locked;         // indicates pll is stable
   wire i2c0_scl_out, i2c0_scl_in, i2c0_scl_out_en;
   wire i2c0_sda_out, i2c0_sda_in, i2c0_sda_out_en;
   wire i2c1_scl_out, i2c1_scl_in, i2c1_scl_out_en;
   wire i2c1_sda_out, i2c1_sda_in, i2c1_sda_out_en;

   wire [3 : 0] qspi_out, qspi_enable, qspi_in;
   
   wire io7_cell_in, io7_cell_out, io7_cell_en;
   wire io8_cell_in, io8_cell_out, io8_cell_en;
   wire io9_cell_in, io9_cell_out, io9_cell_en;
   wire io10_cell_in, io10_cell_out, io10_cell_en;
   wire io12_cell_in, io12_cell_out, io12_cell_en;
   wire io13_cell_in, io13_cell_out, io13_cell_en;
   wire io16_cell_in, io16_cell_out, io16_cell_en;
   wire io17_cell_in, io17_cell_out, io17_cell_en;
   wire io18_cell_in, io18_cell_out, io18_cell_en;
   wire io19_cell_in, io19_cell_out, io19_cell_en;
   wire io20_cell_in, io20_cell_out, io20_cell_en;

   wire gpio_4_in, gpio_4_out, gpio_4_en;
   wire gpio_7_in, gpio_7_out, gpio_7_en;
   wire gpio_8_in, gpio_8_out, gpio_8_en;
   wire gpio_14_in, gpio_14_out, gpio_14_en;
   wire gpio_15_in, gpio_15_out, gpio_15_en;

   wire [1:0] boot_mode;
// ---------------------------------------------------------------------------- //
  
   // ---------------------------------------------------------------------------- //
   assign soc_reset = locked;

   // ---------- Clock divider ----------------//

   clk_divider clk_div (
                       .clk_in1(sys_clk),
                       .clk_out1(core_clk),
                       .resetn(sys_rst),
                       .locked(locked) );
   // ----------------------------------------- //


   // ---- Instantiating the C-class SoC -------------//
   aardonyx core(
       // Main Clock and Reset to the SoC
        .CLK(core_clk),
        .RST_N(soc_reset),

        // SPI ports
        .spi0_io_mosi(spi0_mosi),
        .spi0_io_sclk(spi0_sclk),
        .spi0_io_nss(spi0_nss),
	      .spi0_io_miso_dat(spi0_miso),
        .spi1_io_mosi(spi1_mosi),
        .spi1_io_sclk(spi1_sclk),
        .spi1_io_nss(spi1_nss),
	      .spi1_io_miso_dat(spi1_miso),

        // UART port definitions
        .uart0_io_SIN(uart0_SIN),
        .uart0_io_SOUT(uart0_SOUT),

        //I2C ports
        .i2c0_out_scl_out(i2c0_scl_out),
        .i2c0_out_scl_in_in(i2c0_scl_in),
        .i2c0_out_scl_out_en(i2c0_scl_out_en),
        .i2c0_out_sda_out(i2c0_sda_out),
        .i2c0_out_sda_in_in(i2c0_sda_in),
        .i2c0_out_sda_out_en(i2c0_sda_out_en),

        .i2c1_out_scl_out(i2c1_scl_out),
        .i2c1_out_scl_in_in(i2c1_scl_in),
        .i2c1_out_scl_out_en(i2c1_scl_out_en),
        .i2c1_out_sda_out(i2c1_sda_out),
        .i2c1_out_sda_in_in(i2c1_sda_in),
        .i2c1_out_sda_out_en(i2c1_sda_out_en),

        //pin muxed pins
    	  .iocell_io_io7_cell_in_in(io7_cell_in),
    	  .iocell_io_io8_cell_in_in(io8_cell_in),
    	  .iocell_io_io9_cell_in_in(io9_cell_in),
    	  .iocell_io_io10_cell_in_in(io10_cell_in),
    	  .iocell_io_io12_cell_in_in(io12_cell_in),
    	  .iocell_io_io13_cell_in_in(io13_cell_in),
    	  .iocell_io_io16_cell_in_in(io16_cell_in),
    	  .iocell_io_io17_cell_in_in(io17_cell_in),
    	  .iocell_io_io18_cell_in_in(io18_cell_in),
    	  .iocell_io_io19_cell_in_in(io19_cell_in),
    	  .iocell_io_io20_cell_in_in(io20_cell_in),
    	  .iocell_io_io7_cell_out(io7_cell_out),
    	  .iocell_io_io8_cell_out(io8_cell_out),
    	  .iocell_io_io9_cell_out(io9_cell_out),
    	  .iocell_io_io10_cell_out(io10_cell_out),
    	  .iocell_io_io12_cell_out(io12_cell_out),
    	  .iocell_io_io13_cell_out(io13_cell_out),
    	  .iocell_io_io16_cell_out(io16_cell_out),
    	  .iocell_io_io17_cell_out(io17_cell_out),
    	  .iocell_io_io18_cell_out(io18_cell_out),
    	  .iocell_io_io19_cell_out(io19_cell_out),
    	  .iocell_io_io20_cell_out(io20_cell_out),
    	  .iocell_io_io7_cell_outen(io7_cell_en),
    	  .iocell_io_io8_cell_outen(io8_cell_en),
    	  .iocell_io_io9_cell_outen(io9_cell_en),
    	  .iocell_io_io10_cell_outen(io10_cell_en),
    	  .iocell_io_io12_cell_outen(io12_cell_en),
    	  .iocell_io_io13_cell_outen(io13_cell_en),
    	  .iocell_io_io16_cell_outen(io16_cell_en),
    	  .iocell_io_io17_cell_outen(io17_cell_en),
    	  .iocell_io_io18_cell_outen(io18_cell_en),
    	  .iocell_io_io19_cell_outen(io19_cell_en),
    	  .iocell_io_io20_cell_outen(io20_cell_en),

        //QSPI
        .qspi_io_clk_o(qspi_clk),
	      .qspi_io_io_out(qspi_out),
	      .qspi_io_io_enable(qspi_enable),
	      .qspi_io_io_in_io_in(qspi_in),
	      .qspi_io_ncs_o(qspi_ncs),

        // JTAG port definitions
        .CLK_tck_clk(pin_tck),
        .RST_N_trst(pin_trst),
        .wire_tms_tms_in(pin_tms),
        .wire_tdi_tdi_in(pin_tdi),
        .wire_tdo(pin_tdo),

        //GPIO
        .gpio_4_in(gpio_4_in),
        .gpio_7_in(gpio_7_in),
        .gpio_8_in(gpio_8_in),
        .gpio_14_in(gpio_14_in),
        .gpio_15_in(gpio_15_in),
        .gpio_4_out(gpio_4_out),
        .gpio_7_out(gpio_7_out),
        .gpio_8_out(gpio_8_out),
        .gpio_14_out(gpio_14_out),
        .gpio_15_out(gpio_15_out),
        .gpio_4_outen(gpio_4_en),
        .gpio_7_outen(gpio_7_en),
        .gpio_8_outen(gpio_8_en),
        .gpio_14_outen(gpio_14_en),
        .gpio_15_outen(gpio_15_en),

        .test_mode(test_mode),
        .boot_mode(boot_mode)

   );

  
  
  //---- IOBUF FOR I2C -----//
   IOBUF i2c0_scl_inst(
             .O(i2c0_scl_in),
             .IO(i2c0_scl),
             .I(i2c0_scl_out),
             .T(~i2c0_scl_out_en)
         );

   IOBUF i2c0_sda_inst(
             .O(i2c0_sda_in),
             .IO(i2c0_sda),
             .I(i2c0_sda_out),
             .T(~i2c0_sda_out_en)
         );

   IOBUF i2c1_scl_inst(
             .O(i2c1_scl_in),
             .IO(i2c1_scl),
             .I(i2c1_scl_out),
             .T(~i2c1_scl_out_en)
         );

   IOBUF i2c1_sda_inst(
             .O(i2c1_sda_in),
             .IO(i2c1_sda),
             .I(i2c1_sda_out),
             .T(~i2c1_sda_out_en)
         );

  //----IOBUF FOR MUXED PIN----//

   IOBUF io7_cell_inst(
             .O(io7_cell_in),
             .IO(io7_cell),
             .I(io7_cell_out),
             .T(io7_cell_en)
         );

   IOBUF io8_cell_inst(
             .O(io8_cell_in),
             .IO(io8_cell),
             .I(io8_cell_out),
             .T(io8_cell_en)
         );

   IOBUF io9_cell_inst(
             .O(io9_cell_in),
             .IO(io9_cell),
             .I(io9_cell_out),
             .T(io9_cell_en)
         );

   IOBUF io10_cell_inst(
             .O(io10_cell_in),
             .IO(io10_cell),
             .I(io10_cell_out),
             .T(io10_cell_en)
         );

   IOBUF io12_cell_inst(
             .O(io12_cell_in),
             .IO(io12_cell),
             .I(io12_cell_out),
             .T(io12_cell_en)
         );

   IOBUF io13_cell_inst(
             .O(io13_cell_in),
             .IO(io13_cell),
             .I(io13_cell_out),
             .T(io13_cell_en)
         );

   IOBUF io16_cell_inst(
             .O(io16_cell_in),
             .IO(io16_cell),
             .I(io16_cell_out),
             .T(io16_cell_en)
         );

   IOBUF io17_cell_inst(
             .O(io17_cell_in),
             .IO(io17_cell),
             .I(io17_cell_out),
             .T(io17_cell_en)
         );

   IOBUF io18_cell_inst(
             .O(io18_cell_in),
             .IO(io18_cell),
             .I(io18_cell_out),
             .T(io18_cell_en)
         );

   IOBUF io19_cell_inst(
             .O(io19_cell_in),
             .IO(io19_cell),
             .I(io19_cell_out),
             .T(io19_cell_en)
         );

   IOBUF io20_cell_inst(
             .O(io20_cell_in),
             .IO(io20_cell),
             .I(io20_cell_out),
             .T(io20_cell_en)
         );


   //-----IOBUF FOR QSPI-----//
   
   IOBUF qspi_io0_inst(
             .O(qspi_in[0]),
             .IO(qspi_io[0]),
             .I(qspi_out[0]),
             .T(~qspi_enable[0])
         );

   IOBUF qspi_io1_inst(
             .O(qspi_in[1]),
             .IO(qspi_io[1]),
             .I(qspi_out[1]),
             .T(~qspi_enable[1])
         );

   IOBUF qspi_io2_inst(
             .O(qspi_in[2]),
             .IO(qspi_io[2]),
             .I(qspi_out[2]),
             .T(~qspi_enable[2])
         );

   IOBUF qspi_io3_inst(
             .O(qspi_in[3]),
             .IO(qspi_io[3]),
             .I(qspi_out[3]),
             .T(~qspi_enable[3])
         );

   //-----IOBUF FOR GPIO-----//

   IOBUF gpio_4_inst(
             .O(gpio_4_in),
             .IO(gpio_4),
             .I(gpio_4_out),
             .T(~gpio_4_en)
         );

   IOBUF gpio_7_inst(
             .O(gpio_7_in),
             .IO(gpio_7),
             .I(gpio_7_out),
             .T(~gpio_7_en)
         );

   IOBUF gpio_8_inst(
             .O(gpio_8_in),
             .IO(gpio_8),
             .I(gpio_8_out),
             .T(~gpio_8_en)
         );

   IOBUF gpio_14_inst(
             .O(gpio_14_in),
             .IO(gpio_14),
             .I(gpio_14_out),
             .T(~gpio_14_en)
         );

   IOBUF gpio_15_inst(
             .O(gpio_15_in),
             .IO(gpio_15),
             .I(gpio_15_out),
             .T(~gpio_15_en)
         );



endmodule
