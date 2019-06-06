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

Author: Arjun Menon
Details:

--------------------------------------------------------------------------------------------------
*/
module fpga_top#
  (
   parameter AXI_ID_WIDTH   = 4,
   parameter AXI_ADDR_WIDTH = 28
   )
  (
   
   // ---- JTAG ports ------- //
   input         pin_tck,
   input         pin_trst,
   input         pin_tms,
   input         pin_tdi,
   output        pin_tdo,
   
   // ---- UART ports --------//
   input         uart0_SIN,
   output        uart0_SOUT,   

   // ---- I2C ports --------//
   inout         i2c_sda,
   inout         i2c_scl,
   
   // ---- SPI ports ---------//
   output       spi0_mosi,
   output       spi0_sclk,
   output       spi0_nss,
   input        spi0_miso,

   // ---- GPIO ports --------//
   inout[15:0] gpio,

   // ---- External interrupts ports --------//
   input [1:0] interrupts,

   // ---- System Reset ------//
   input         sys_rst,	//Active Low
   
   // ---- System Clock ------//
   input         sys_clk
   );
   
   // Wire instantiations 
   
   wire                            soc_reset;      // reset to the SoC
   wire                            core_clk;       // clock to the SoC
   wire                            ddr3_main;      // main clock to the ddr3-mig
   wire                            ddr3_ref;       // reference clock to dr3 mig
   wire                            locked;         // indicates pll is stable
   wire                            clk;            // mig ui clk            
   wire                            rst;            // mig ui reset
   wire                            mmcm_locked;    // indicates the ui clock from mig is stable
   reg                             aresetn;
   reg                             aresetn_s;

   wire i2c_scl_out, i2c_scl_in, i2c_scl_out_en;
   wire i2c_sda_out, i2c_sda_in, i2c_sda_out_en;
  
   wire [15:0] gpio_in, gpio_out, gpio_out_en;
   
   // ---------------------------------------------------------------------------- //
   

   // ---------- Clock divider ----------------//
   
   clk_divider clk_div (
                       .clk_in1(sys_clk),  
                       .clk_out1(core_clk),
                       .clk_out2(ddr3_main),
                       .clk_out3(ddr3_ref),
                       .resetn(sys_rst), 
                       .locked(locked) );
   // ----------------------------------------- //


   always @(posedge clk) begin
     aresetn <= ~rst;
   end
   
   
   // ---- Instantiating the C-class SoC -------------//
   mkSoc core(
       // Main Clock and Reset to the SoC
        .CLK(core_clk),
        .RST_N(soc_reset),
       
       // JTAG port definitions
        .CLK_tck_clk(pin_tck),
        .RST_N_trst(pin_trst),
        .wire_tms_tms_in(pin_tms),
        .wire_tdi_tdi_in(pin_tdi),
        .wire_tdo(pin_tdo),

			 //GPIO ports
        .gpio_io_gpio_in_inp(gpio_in),
        .gpio_io_gpio_out(gpio_out),
        .gpio_io_gpio_out_en(gpio_out_en),

      // PWM ports
        .pwm0_io_pwm_o(),
        .pwm1_io_pwm_o(),
        .pwm2_io_pwm_o(),
        .pwm3_io_pwm_o(),
        .pwm4_io_pwm_o(),
        .pwm5_io_pwm_o(),
    
      // SPI ports
        .spi0_io_mosi(spi0_mosi),
        .spi0_io_sclk(spi0_sclk),
        .spi0_io_nss(spi0_nss),
	      .spi0_io_miso_dat(spi0_miso),
        
        .spi1_io_mosi(),
        .spi1_io_sclk(),
        .spi1_io_nss(),
	      .spi1_io_miso_dat(),

        .spi2_io_mosi(),
        .spi2_io_sclk(),
        .spi2_io_nss(),
	      .spi2_io_miso_dat(),

       // UART port definitions
        .uart0_io_SIN(uart0_SIN),
        .uart0_io_SOUT(uart0_SOUT),
       
        .uart1_io_SIN(),
        .uart1_io_SOUT(),
       
        .uart2_io_SIN(),
        .uart2_io_SOUT(),
        
			 //I2C ports
		    .i2c_out_scl_out (i2c_scl_out),
        .i2c_out_scl_in_in(i2c_scl_in),
        .i2c_out_scl_out_en(i2c_scl_out_en),
        .i2c_out_sda_out(i2c_sda_out),
        .i2c_out_sda_in_in(i2c_sda_in),
        .i2c_out_sda_out_en(i2c_sda_out_en),

      // XADC connection
	      .xadc_master_awvalid(),
	      .xadc_master_awaddr(),
//	      .xadc_master_awprot(),
//	      .xadc_master_awsize(),
	      .xadc_master_m_awready_awready(),
	      .xadc_master_wvalid(),
	      .xadc_master_wdata(),
	      .xadc_master_wstrb(),
	      .xadc_master_m_wready_wready(),
	      .xadc_master_m_bvalid_bvalid(),
	      .xadc_master_m_bvalid_bresp(),
	      .xadc_master_bready(),
	      .xadc_master_arvalid(),
	      .xadc_master_araddr(),
//	      .xadc_master_arprot(),
//	      .xadc_master_arsize(),
	      .xadc_master_m_arready_arready(),
	      .xadc_master_m_rvalid_rvalid(),
	      .xadc_master_m_rvalid_rresp(),
	      .xadc_master_m_rvalid_rdata(),
	      .xadc_master_rready(),

	      .qspi_io_clk_o(),
	      .qspi_io_io_o(),
	      .qspi_io_io0_sdio_ctrl(),
	      .qspi_io_io1_sdio_ctrl(),
	      .qspi_io_io2_sdio_ctrl(),
	      .qspi_io_io3_sdio_ctrl(),
	      .qspi_io_io_enable(),
	      .qspi_io_io_i_io_i(),
	      .qspi_io_ncs_o(),

        .ext_interrupts_i(interrupts)
   );

   // ---- Instantiating the C-class SoC -------------//
   genvar index;
   generate
   for(index=0; index<16; index= index+1) 
      begin: connect_gpio_tristates
      IOBUF gpio_iobuf_inst (
             .O(gpio_in[index]),
             .IO(gpio[index]),
             .I(gpio_out[index]),
             .T(~gpio_out_en[index])
				 );
      end
   endgenerate
   
   IOBUF i2c_scl_inst(
             .O(i2c_scl_in),
             .IO(i2c_scl),
             .I(i2c_scl_out),
             .T(~i2c_scl_out_en)
         );
   
   IOBUF i2c_sda_inst(
             .O(i2c_sda_in),
             .IO(i2c_sda),
             .I(i2c_sda_out),
             .T(~i2c_sda_out_en)
         );
endmodule
