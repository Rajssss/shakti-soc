/*
Copyright (c) 2019, IIT Madras All rights reserved.

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

Author: Neel Gala
Email id: neelgala@gmail.com
Details:

--------------------------------------------------------------------------------------------------
*/

module aardonyx(
    test_mode,
    boot_mode,
	  CLK_tck_clk,
	  RST_N_trst,
	  CLK,
	  RST_N,

	  spi0_io_mosi,

	  spi0_io_sclk,

	  spi0_io_nss,

	  spi0_io_miso_dat,

	  spi1_io_mosi,

	  spi1_io_sclk,

	  spi1_io_nss,

	  spi1_io_miso_dat,

	  uart0_io_SIN,

	  uart0_io_SOUT,

	  i2c_out_scl_out,

	  i2c_out_scl_in_in,

	  i2c_out_scl_out_en,

	  i2c_out_sda_out,

	  i2c_out_sda_in_in,

	  i2c_out_sda_out_en,

	  iocell_io_io7_cell_in_in,

	  iocell_io_io8_cell_in_in,

	  iocell_io_io9_cell_in_in,

	  iocell_io_io10_cell_in_in,

	  iocell_io_io12_cell_in_in,

	  iocell_io_io13_cell_in_in,

	  iocell_io_io16_cell_in_in,

	  iocell_io_io17_cell_in_in,

	  iocell_io_io18_cell_in_in,

	  iocell_io_io19_cell_in_in,

	  iocell_io_io20_cell_in_in,

	  iocell_io_io7_cell_out,

	  iocell_io_io8_cell_out,

	  iocell_io_io9_cell_out,

	  iocell_io_io10_cell_out,

	  iocell_io_io12_cell_out,

	  iocell_io_io13_cell_out,

	  iocell_io_io16_cell_out,

	  iocell_io_io17_cell_out,

	  iocell_io_io18_cell_out,

	  iocell_io_io19_cell_out,

	  iocell_io_io20_cell_out,

	  iocell_io_io7_cell_outen,

	  iocell_io_io8_cell_outen,

	  iocell_io_io9_cell_outen,

	  iocell_io_io10_cell_outen,

	  iocell_io_io12_cell_outen,

	  iocell_io_io13_cell_outen,

	  iocell_io_io16_cell_outen,

	  iocell_io_io17_cell_outen,

	  iocell_io_io18_cell_outen,

	  iocell_io_io19_cell_outen,

	  iocell_io_io20_cell_outen,

	  qspi_io_clk_o,

	  qspi_io_io_out,

	  qspi_io_io_enable,

	  qspi_io_io_in_io_in,

	  qspi_io_ncs_o,

	  wire_tms_tms_in,

	  wire_tdi_tdi_in,

	  wire_tdo,

          gpio_4_in,

          gpio_7_in,

          gpio_8_in,

          gpio_14_in,

          gpio_15_in,

          gpio_4_out,

          gpio_7_out,

          gpio_8_out,

          gpio_14_out,

          gpio_15_out,

          gpio_4_outen,

          gpio_7_outen,

          gpio_8_outen,

          gpio_14_outen,

          gpio_15_outen,


	  sdram_io_ipad_sdr_din_pad_sdr_din,

	  sdram_io_osdr_dout,

	  sdram_io_osdr_den_n,

	  sdram_io_osdr_cke,

	  sdram_io_osdr_cs_n,

	  sdram_io_osdr_ras_n,

	  sdram_io_osdr_cas_n,

	  sdram_io_osdr_we_n,

	  sdram_io_osdr_dqm,

	  sdram_io_osdr_ba,

	  sdram_io_osdr_addr,

	  CLK_sdram_io_sdram_clk);

  input test_mode; // 1: enable test-mode. 0: functional mode
  input [1:0] boot_mode;
  input  CLK_tck_clk;
  input  RST_N_trst;
  input  CLK;
  input  RST_N;

  // value method spi0_io_mosi
  output spi0_io_mosi;

  // value method spi0_io_sclk
  output spi0_io_sclk;

  // value method spi0_io_nss
  output spi0_io_nss;

  // action method spi0_io_miso
  input  spi0_io_miso_dat;

  // value method spi2_io_mosi
  output spi1_io_mosi;

  // value method spi2_io_sclk
  output spi1_io_sclk;

  // value method spi2_io_nss
  output spi1_io_nss;

  // action method spi2_io_miso
  input  spi1_io_miso_dat;

  // action method uart1_io_sin
  input  uart0_io_SIN;

  // value method uart1_io_sout
  output uart0_io_SOUT;

  // value method i2c_out_scl_out
  output i2c_out_scl_out;

  // action method i2c_out_scl_in
  input  i2c_out_scl_in_in;

  // value method i2c_out_scl_out_en
  output i2c_out_scl_out_en;

  // value method i2c_out_sda_out
  output i2c_out_sda_out;

  // action method i2c_out_sda_in
  input  i2c_out_sda_in_in;

  // value method i2c_out_sda_out_en
  output i2c_out_sda_out_en;

  // action method gpio_io_gpio_in
  input  iocell_io_io7_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io8_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io9_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io10_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io12_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io13_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io16_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io17_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io18_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io19_cell_in_in;

  // action method gpio_io_gpio_in
  input  iocell_io_io20_cell_in_in;

  // value method gpio_io_gpio_out
  output iocell_io_io7_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io8_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io9_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io10_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io12_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io13_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io16_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io17_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io18_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io19_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io20_cell_out;

  // value method gpio_io_gpio_out
  output iocell_io_io7_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io8_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io9_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io10_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io12_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io13_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io16_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io17_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io18_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io19_cell_outen;

  // value method gpio_io_gpio_out
  output iocell_io_io20_cell_outen;

  // value method qspi_io_clk_o
  output qspi_io_clk_o;

  // value method qspi_io_io_out
  output [3 : 0] qspi_io_io_out;

  // value method qspi_io_io_enable
  output [3 : 0] qspi_io_io_enable;

  // action method qspi_io_io_in
  input  [3 : 0] qspi_io_io_in_io_in;

  // value method qspi_io_ncs_o
  output qspi_io_ncs_o;

  // action method wire_tms
  input  wire_tms_tms_in;

  // action method wire_tdi
  input  wire_tdi_tdi_in;

  // value method wire_tdo
  output wire_tdo;

  // action method gpio_4
  input  gpio_4_in;

  // action method gpio_7
  input  gpio_7_in;

  // action method gpio_8
  input  gpio_8_in;

  // action method gpio_14
  input  gpio_14_in;

  // action method gpio_15
  input  gpio_15_in;

  // value method gpio_4_out
  output gpio_4_out;

  // value method gpio_7_out
  output gpio_7_out;

  // value method gpio_8_out
  output gpio_8_out;

  // value method gpio_14_out
  output gpio_14_out;

  // value method gpio_15_out
  output gpio_15_out;

  // value method gpio_4_outen
  output gpio_4_outen;

  // value method gpio_7_outen
  output gpio_7_outen;

  // value method gpio_8_outen
  output gpio_8_outen;

  // value method gpio_14_outen
  output gpio_14_outen;

  // value method gpio_15_outen
  output gpio_15_outen;

  // action method sdram_io_ipad_sdr_din
  input  [31 : 0] sdram_io_ipad_sdr_din_pad_sdr_din;

  // value method sdram_io_osdr_dout
  output [31 : 0] sdram_io_osdr_dout;

  // value method sdram_io_osdr_den_n
  output [3 : 0] sdram_io_osdr_den_n;

  // value method sdram_io_osdr_cke
  output sdram_io_osdr_cke;

  // value method sdram_io_osdr_cs_n
  output sdram_io_osdr_cs_n;

  // value method sdram_io_osdr_ras_n
  output sdram_io_osdr_ras_n;

  // value method sdram_io_osdr_cas_n
  output sdram_io_osdr_cas_n;

  // value method sdram_io_osdr_we_n
  output sdram_io_osdr_we_n;

  // value method sdram_io_osdr_dqm
  output [3 : 0] sdram_io_osdr_dqm;

  // value method sdram_io_osdr_ba
  output [1 : 0] sdram_io_osdr_ba;

  // value method sdram_io_osdr_addr
  output [12 : 0] sdram_io_osdr_addr;

  // oscillator and gates for output clock CLK_sdram_io_sdram_clk
  output CLK_sdram_io_sdram_clk;


  wire CLK_GATE_sdram_io_sdram_clk;

  // value method bootrom_master_m_awvalid
  wire bootrom_master_awvalid;

  // value method bootrom_master_m_awaddr
  wire [31 : 0] bootrom_master_awaddr;

  // value method bootrom_master_m_awuser

  // value method bootrom_master_m_awprot
  wire [2 : 0] bootrom_master_awprot;

  // value method bootrom_master_m_awsize
  wire [1 : 0] bootrom_master_awsize;

  // action method bootrom_master_m_awready
  wire  bootrom_master_m_awready_awready;

  // value method bootrom_master_m_wvalid
  wire bootrom_master_wvalid;

  // value method bootrom_master_m_wdata
  wire [31 : 0] bootrom_master_wdata;

  // value method bootrom_master_m_wstrb
  wire [3 : 0] bootrom_master_wstrb;

  // action method bootrom_master_m_wready
  wire  bootrom_master_m_wready_wready;

  // action method bootrom_master_m_bvalid
  wire  bootrom_master_m_bvalid_bvalid;
  wire  [1 : 0] bootrom_master_m_bvalid_bresp;

  // value method bootrom_master_m_bready
  wire bootrom_master_bready;

  // value method bootrom_master_m_arvalid
  wire bootrom_master_arvalid;

  // value method bootrom_master_m_araddr
  wire [31 : 0] bootrom_master_araddr;

  // value method bootrom_master_m_aruser

  // value method bootrom_master_m_arprot
  wire [2 : 0] bootrom_master_arprot;

  // value method bootrom_master_m_arsize
  wire [1 : 0] bootrom_master_arsize;

  // action method bootrom_master_m_arready
  wire  bootrom_master_m_arready_arready;

  // action method bootrom_master_m_rvalid
  wire  bootrom_master_m_rvalid_rvalid;
  wire  [1 : 0] bootrom_master_m_rvalid_rresp;
  wire  [31 : 0] bootrom_master_m_rvalid_rdata;

  // value method bootrom_master_m_rready
  wire bootrom_master_rready;
  reg [31:0] resetpc;
  // boot mode options:
  // 'b00: debug mode
  // 'b01: bootrom from i2c
  // 'b10: bootrom from qspi
  // 'b11: bootrom TBD
  always@(boot_mode) begin
    case (boot_mode)
      2'b00: resetpc    =  32'h00000010;
      default: resetpc  =  32'h00040300;
    endcase
  end

  mkbootrom bootrom ( .CLK(CLK),
                      .RST_N(RST_N),
		                  .slave_m_awvalid_awvalid    (bootrom_master_awvalid),
		                  .slave_m_awvalid_awaddr     (bootrom_master_awaddr),
		                  .slave_m_awvalid_awsize     (bootrom_master_awsize),
		                  .slave_m_awvalid_awprot     (bootrom_master_awprot),
		                  .slave_awready              (bootrom_master_m_awready_awready),
		                  .slave_m_wvalid_wvalid      (bootrom_master_wvalid),
		                  .slave_m_wvalid_wdata       (bootrom_master_wdata),
		                  .slave_m_wvalid_wstrb       (bootrom_master_wstrb),
		                  .slave_wready               (bootrom_master_m_wready_wready),
		                  .slave_bvalid               (bootrom_master_m_bvalid_bvalid),
		                  .slave_bresp                (bootrom_master_m_bvalid_bresp),
		                  .slave_m_bready_bready      (bootrom_master_bready),
		                  .slave_m_arvalid_arvalid    (bootrom_master_arvalid),
		                  .slave_m_arvalid_araddr     (bootrom_master_araddr),
		                  .slave_m_arvalid_arsize     (bootrom_master_arsize),
		                  .slave_m_arvalid_arprot     (bootrom_master_arprot),
		                  .slave_arready              (bootrom_master_m_arready_arready),
		                  .slave_rvalid               (bootrom_master_m_rvalid_rvalid),
		                  .slave_rresp                (bootrom_master_m_rvalid_rresp),
		                  .slave_rdata                (bootrom_master_m_rvalid_rdata),
		                  .slave_m_rready_rready      (bootrom_master_rready)    );

  mkSoc soc ( .resetpc                        (resetpc                        ),
              .spi0_io_mosi                   (spi0_io_mosi                   ),
              .spi0_io_sclk                   (spi0_io_sclk                   ),
              .spi0_io_nss                    (spi0_io_nss                    ),
              .spi1_io_mosi                   (spi1_io_mosi                   ),
              .spi1_io_sclk                   (spi1_io_sclk                   ),
              .spi1_io_nss                    (spi1_io_nss                    ),
              .uart0_io_SOUT                  (uart0_io_SOUT                  ),
              .i2c_out_scl_out                (i2c_out_scl_out                ),
              .i2c_out_scl_out_en             (i2c_out_scl_out_en             ),
              .i2c_out_sda_out                (i2c_out_sda_out                ),
              .i2c_out_sda_out_en             (i2c_out_sda_out_en             ),
              .iocell_io_io7_cell_out         (iocell_io_io7_cell_out         ),
              .iocell_io_io8_cell_out         (iocell_io_io8_cell_out         ),
              .iocell_io_io9_cell_out         (iocell_io_io9_cell_out         ),
              .iocell_io_io10_cell_out        (iocell_io_io10_cell_out        ),
              .iocell_io_io12_cell_out        (iocell_io_io12_cell_out        ),
              .iocell_io_io13_cell_out        (iocell_io_io13_cell_out        ),
              .iocell_io_io16_cell_out        (iocell_io_io16_cell_out        ),
              .iocell_io_io17_cell_out        (iocell_io_io17_cell_out        ),
              .iocell_io_io18_cell_out        (iocell_io_io18_cell_out        ),
              .iocell_io_io19_cell_out        (iocell_io_io19_cell_out        ),
              .iocell_io_io20_cell_out        (iocell_io_io20_cell_out        ),
              .iocell_io_io7_cell_outen       (iocell_io_io7_cell_outen       ),
              .iocell_io_io8_cell_outen       (iocell_io_io8_cell_outen       ),
              .iocell_io_io9_cell_outen       (iocell_io_io9_cell_outen       ),
              .iocell_io_io10_cell_outen      (iocell_io_io10_cell_outen      ),
              .iocell_io_io12_cell_outen      (iocell_io_io12_cell_outen      ),
              .iocell_io_io13_cell_outen      (iocell_io_io13_cell_outen      ),
              .iocell_io_io16_cell_outen      (iocell_io_io16_cell_outen      ),
              .iocell_io_io17_cell_outen      (iocell_io_io17_cell_outen      ),
              .iocell_io_io18_cell_outen      (iocell_io_io18_cell_outen      ),
              .iocell_io_io19_cell_outen      (iocell_io_io19_cell_outen      ),
              .iocell_io_io20_cell_outen      (iocell_io_io20_cell_outen      ),
              .qspi_io_clk_o                  (qspi_io_clk_o                  ),
              .qspi_io_io_o                   (qspi_io_io_out                 ),
              .qspi_io_io_enable              (qspi_io_io_enable              ),
              .qspi_io_ncs_o                  (qspi_io_ncs_o                  ),
              .wire_tdo                       (wire_tdo                       ),
	            .gpio_4_out		                  (gpio_4_out		      ),
	            .gpio_7_out		                  (gpio_7_out		      ),
	            .gpio_8_out		                  (gpio_8_out		      ),
	            .gpio_14_out		                (gpio_14_out		      ),
	            .gpio_15_out		                (gpio_15_out		      ),
	            .gpio_4_outen		                (gpio_4_outen		      ),
	            .gpio_7_outen		                (gpio_7_outen		      ),
	            .gpio_8_outen		                (gpio_8_outen		      ),
	            .gpio_14_outen		              (gpio_14_outen		      ),
	            .gpio_15_outen		              (gpio_15_outen		      ),
              .sdram_io_osdr_dout             (sdram_io_osdr_dout             ),
              .sdram_io_osdr_den_n            (sdram_io_osdr_den_n            ),
              .sdram_io_osdr_cke              (sdram_io_osdr_cke              ),
              .sdram_io_osdr_cs_n             (sdram_io_osdr_cs_n             ),
              .sdram_io_osdr_ras_n            (sdram_io_osdr_ras_n            ),
              .sdram_io_osdr_cas_n            (sdram_io_osdr_cas_n            ),
              .sdram_io_osdr_we_n             (sdram_io_osdr_we_n             ),
              .sdram_io_osdr_dqm              (sdram_io_osdr_dqm              ),
              .sdram_io_osdr_ba               (sdram_io_osdr_ba               ),
              .sdram_io_osdr_addr             (sdram_io_osdr_addr             ),
              .CLK_sdram_io_sdram_clk         (CLK_sdram_io_sdram_clk         ),
              .CLK_GATE_sdram_io_sdram_clk    (CLK_GATE_sdram_io_sdram_clk    ),
              .CLK_tck_clk                    (CLK_tck_clk                    ),
              .RST_N_trst                     (RST_N_trst                     ),
              .CLK                            (CLK                            ),
              .RST_N                          (RST_N                          ),
              .spi0_io_miso_dat               (spi0_io_miso_dat               ),
              .spi1_io_miso_dat               (spi1_io_miso_dat               ),
              .uart0_io_SIN                   (uart0_io_SIN                   ),
              .i2c_out_scl_in_in              (i2c_out_scl_in_in              ),
              .i2c_out_sda_in_in              (i2c_out_sda_in_in              ),
              .iocell_io_io7_cell_in_in       (iocell_io_io7_cell_in_in       ),
              .iocell_io_io8_cell_in_in       (iocell_io_io8_cell_in_in       ),
              .iocell_io_io9_cell_in_in       (iocell_io_io9_cell_in_in       ),
              .iocell_io_io10_cell_in_in      (iocell_io_io10_cell_in_in      ),
              .iocell_io_io12_cell_in_in      (iocell_io_io12_cell_in_in      ),
              .iocell_io_io13_cell_in_in      (iocell_io_io13_cell_in_in      ),
              .iocell_io_io16_cell_in_in      (iocell_io_io16_cell_in_in      ),
              .iocell_io_io17_cell_in_in      (iocell_io_io17_cell_in_in      ),
              .iocell_io_io18_cell_in_in      (iocell_io_io18_cell_in_in      ),
              .iocell_io_io19_cell_in_in      (iocell_io_io19_cell_in_in      ),
              .iocell_io_io20_cell_in_in      (iocell_io_io20_cell_in_in      ),
              .qspi_io_io_i_io_i              (qspi_io_io_in_io_in            ),
              .wire_tms_tms_in                (wire_tms_tms_in                ),
              .wire_tdi_tdi_in                (wire_tdi_tdi_in                ),
	            .gpio_4_in 		                  (gpio_4_in 		      ),
	            .gpio_7_in 		                  (gpio_7_in 		      ),
	            .gpio_8_in 		                  (gpio_8_in 		      ),
	            .gpio_14_in 		                (gpio_14_in 		      ),
	            .gpio_15_in 		                (gpio_15_in 		      ),
              .sdram_io_ipad_sdr_din_pad_sdr_din  (sdram_io_ipad_sdr_din_pad_sdr_din),
	            .bootrom_master_awvalid             (bootrom_master_awvalid),
	            .bootrom_master_awaddr              (bootrom_master_awaddr),
	            .bootrom_master_awprot              (bootrom_master_awprot),
	            .bootrom_master_awsize              (bootrom_master_awsize),
	            .bootrom_master_m_awready_awready   (bootrom_master_m_awready_awready),
	            .bootrom_master_wvalid              (bootrom_master_wvalid),
	            .bootrom_master_wdata               (bootrom_master_wdata),
	            .bootrom_master_wstrb               (bootrom_master_wstrb),
	            .bootrom_master_m_wready_wready     (bootrom_master_m_wready_wready),
	            .bootrom_master_m_bvalid_bvalid     (bootrom_master_m_bvalid_bvalid),
	            .bootrom_master_m_bvalid_bresp      (bootrom_master_m_bvalid_bresp),
	            .bootrom_master_bready              (bootrom_master_bready),
	            .bootrom_master_arvalid             (bootrom_master_arvalid),
	            .bootrom_master_araddr              (bootrom_master_araddr),
	            .bootrom_master_arprot              (bootrom_master_arprot),
	            .bootrom_master_arsize              (bootrom_master_arsize),
	            .bootrom_master_m_arready_arready   (bootrom_master_m_arready_arready),
	            .bootrom_master_m_rvalid_rvalid     (bootrom_master_m_rvalid_rvalid),
	            .bootrom_master_m_rvalid_rresp      (bootrom_master_m_rvalid_rresp),
	            .bootrom_master_m_rvalid_rdata      (bootrom_master_m_rvalid_rdata),
	            .bootrom_master_rready              (bootrom_master_rready)    );

endmodule

