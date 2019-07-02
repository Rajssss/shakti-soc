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
    boot_mode,
	  CLK_tck_clk,
	  RST_N_trst,
	  CLK,
	  RST_N,

	  pwm0_io_pwm_o,

	  pwm1_io_pwm_o,

	  pwm2_io_pwm_o,

	  pwm3_io_pwm_o,

	  pwm4_io_pwm_o,

	  pwm5_io_pwm_o,

	  spi0_io_mosi,

	  spi0_io_sclk,

	  spi0_io_nss,

	  spi0_io_miso_dat,

	  spi1_io_mosi,

	  spi1_io_sclk,

	  spi1_io_nss,

	  spi1_io_miso_dat,

	  spi2_io_mosi,

	  spi2_io_sclk,

	  spi2_io_nss,

	  spi2_io_miso_dat,

	  uart0_io_SIN,

	  uart0_io_SOUT,

	  uart1_io_SIN,

	  uart1_io_SOUT,

	  uart2_io_SIN,

	  uart2_io_SOUT,

	  i2c_out_scl_out,

	  i2c_out_scl_in_in,

	  i2c_out_scl_out_en,

	  i2c_out_sda_out,

	  i2c_out_sda_in_in,

	  i2c_out_sda_out_en,

	  gpio_io_gpio_in_inp,

	  gpio_io_gpio_out,

	  gpio_io_gpio_out_en,

	  qspi_io_clk_o,

	  qspi_io_io_out,

	  qspi_io_io_enable,

	  qspi_io_io_in_io_in,

	  qspi_io_ncs_o,

	  wire_tms_tms_in,

	  wire_tdi_tdi_in,

	  wire_tdo,

	  ext_interrupts_i,

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

	  CLK_sdram_io_sdram_clk,
	  CLK_GATE_sdram_io_sdram_clk );

  input [1:0] boot_mode;
  input  CLK_tck_clk;
  input  RST_N_trst;
  input  CLK;
  input  RST_N;

  // value method pwm0_io_pwm_o
  output pwm0_io_pwm_o;

  // value method pwm1_io_pwm_o
  output pwm1_io_pwm_o;

  // value method pwm2_io_pwm_o
  output pwm2_io_pwm_o;

  // value method pwm3_io_pwm_o
  output pwm3_io_pwm_o;

  // value method pwm4_io_pwm_o
  output pwm4_io_pwm_o;

  // value method pwm5_io_pwm_o
  output pwm5_io_pwm_o;

  // value method spi0_io_mosi
  output spi0_io_mosi;

  // value method spi0_io_sclk
  output spi0_io_sclk;

  // value method spi0_io_nss
  output spi0_io_nss;

  // action method spi0_io_miso
  input  spi0_io_miso_dat;

  // value method spi1_io_mosi
  output spi1_io_mosi;

  // value method spi1_io_sclk
  output spi1_io_sclk;

  // value method spi1_io_nss
  output spi1_io_nss;

  // action method spi1_io_miso
  input  spi1_io_miso_dat;

  // value method spi2_io_mosi
  output spi2_io_mosi;

  // value method spi2_io_sclk
  output spi2_io_sclk;

  // value method spi2_io_nss
  output spi2_io_nss;

  // action method spi2_io_miso
  input  spi2_io_miso_dat;

  // action method uart0_io_sin
  input  uart0_io_SIN;

  // value method uart0_io_sout
  output uart0_io_SOUT;

  // action method uart1_io_sin
  input  uart1_io_SIN;

  // value method uart1_io_sout
  output uart1_io_SOUT;

  // action method uart2_io_sin
  input  uart2_io_SIN;

  // value method uart2_io_sout
  output uart2_io_SOUT;

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
  input  [15 : 0] gpio_io_gpio_in_inp;

  // value method gpio_io_gpio_out
  output [15 : 0] gpio_io_gpio_out;

  // value method gpio_io_gpio_out_en
  output [15 : 0] gpio_io_gpio_out_en;

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

  // action method ext_interrupts
  input  [1 : 0] ext_interrupts_i;

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
  output CLK_GATE_sdram_io_sdram_clk;

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

  mkSoc soc ( .resetpc                        (resetpc                        ),
              .pwm0_io_pwm_o                  (pwm0_io_pwm_o                  ),
              .pwm1_io_pwm_o                  (pwm1_io_pwm_o                  ),
              .pwm2_io_pwm_o                  (pwm2_io_pwm_o                  ),
              .pwm3_io_pwm_o                  (pwm3_io_pwm_o                  ),
              .pwm4_io_pwm_o                  (pwm4_io_pwm_o                  ),
              .pwm5_io_pwm_o                  (pwm5_io_pwm_o                  ),
              .spi0_io_mosi                   (spi0_io_mosi                   ),
              .spi0_io_sclk                   (spi0_io_sclk                   ),
              .spi0_io_nss                    (spi0_io_nss                    ),
              .spi1_io_mosi                   (spi1_io_mosi                   ),
              .spi1_io_sclk                   (spi1_io_sclk                   ),
              .spi1_io_nss                    (spi1_io_nss                    ),
              .spi2_io_mosi                   (spi2_io_mosi                   ),
              .spi2_io_sclk                   (spi2_io_sclk                   ),
              .spi2_io_nss                    (spi2_io_nss                    ),
              .uart0_io_SOUT                  (uart0_io_SOUT                  ),
              .uart1_io_SOUT                  (uart1_io_SOUT                  ),
              .uart2_io_SOUT                  (uart2_io_SOUT                  ),
              .i2c_out_scl_out                (i2c_out_scl_out                ),
              .i2c_out_scl_out_en             (i2c_out_scl_out_en             ),
              .i2c_out_sda_out                (i2c_out_sda_out                ),
              .i2c_out_sda_out_en             (i2c_out_sda_out_en             ),
              .gpio_io_gpio_out               (gpio_io_gpio_out               ),
              .gpio_io_gpio_out_en            (gpio_io_gpio_out_en            ),
              .qspi_io_clk_o                  (qspi_io_clk_o                  ),
              .qspi_io_io_o                   (qspi_io_io_o                   ),
              .qspi_io_io_enable              (qspi_io_io_enable              ),
              .qspi_io_ncs_o                  (qspi_io_ncs_o                  ),
              .wire_tdo                       (wire_tdo                       ),
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
              .spi2_io_miso_dat               (spi2_io_miso_dat               ),
              .uart0_io_SIN                   (uart0_io_SIN                   ),
              .uart1_io_SIN                   (uart1_io_SIN                   ),
              .uart2_io_SIN                   (uart2_io_SIN                   ),
              .i2c_out_scl_in_in              (i2c_out_scl_in_in              ),
              .i2c_out_sda_in_in              (i2c_out_sda_in_in              ),
              .gpio_io_gpio_in_inp            (gpio_io_gpio_in_inp            ),
              .qspi_io_io_i_io_i              (qspi_io_io_i_io_i              ),
              .wire_tms_tms_in                (wire_tms_tms_in                ),
              .wire_tdi_tdi_in                (wire_tdi_tdi_in                ),
              .ext_interrupts_i               (ext_interrupts_i               ),
              .sdram_io_ipad_sdr_din_pad_sdr_din(sdram_io_ipad_sdr_din_pad_sdr_din) );
endmodule

