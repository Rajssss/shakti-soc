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
module fpga_top#( parameter AXI_ID_WIDTH   = 4, parameter AXI_ADDR_WIDTH = 28) (
  // ---- DDR ports --------------//
  inout  [15:0] ddr3_dq,
  inout  [1:0]  ddr3_dqs_n,
  inout  [1:0]  ddr3_dqs_p,    
  output [13:0] ddr3_addr,
  output [2:0]  ddr3_ba,
  output        ddr3_ras_n,
  output        ddr3_cas_n,
  output        ddr3_we_n,
  output        ddr3_reset_n,
  output        ddr3_ck_p,
  output        ddr3_ck_n,
  output        ddr3_cke,
  output        ddr3_cs_n,
  output [1:0]  ddr3_dm,
  output        ddr3_odt,
  output        pin_aresetn,
  output        init_calib_complete,
  // ---- JTAG ports ------- //
  `ifndef JTAG_BSCAN2E
    input       pin_tck,
    input       pin_trst,
    input       pin_tms,
    input       pin_tdi,
    output      pin_tdo,
  `endif
  // ---- UART ports --------//
  input         uart_SIN,
  output        uart_SOUT,      
  // ---- I2C ports --------//
  inout         i2c_sda,
  inout         i2c_scl,    
  // ---- GPIO ports --------//
  inout [15:0]  gpio,   
  // ---- External interrupts ports --------//
  input [7:0]   interrupts,   
  // ---- System Reset ------//
  input         sys_rst,	//Active Low
  // ---- System Clock ------//
  input         sys_clk);

  // ---                       Wire Instantioations                       --- //
  wire                              soc_reset;      // reset to the SoC
  wire                              core_clk;       // clock to the SoC
  wire                              ddr3_main;      // main clock to the ddr3-mig
  wire                              ddr3_ref;       // reference clock to dr3 mig
  wire                              locked;         // indicates pll is stable
  wire                              clk;            // mig ui clk            
  wire                              rst;            // mig ui reset
  wire                              mmcm_locked;    // indicates the ui clock from mig is stable
  reg                               aresetn;
  reg                               aresetn_s;
  // Signals driven by axi converter to DDR slave ports
  wire [AXI_ID_WIDTH-1:0]           m_axi_awid;
  wire [AXI_ADDR_WIDTH-1:0]         m_axi_awaddr;
  wire [7:0]                        m_axi_awlen;
  wire [2:0]                        m_axi_awsize;
  wire [1:0]                        m_axi_awburst;
  wire [0:0]                        m_axi_awlock;
  wire [3:0]                        m_axi_awcache;
  wire [2:0]                        m_axi_awprot;
  wire                              m_axi_awvalid;
  wire                              m_axi_awready;    
  wire [63:0]                       m_axi_wdata;
  wire [7:0]                        m_axi_wstrb;
  wire                              m_axi_wlast;
  wire                              m_axi_wvalid;
  wire                              m_axi_wready;   
  wire                              m_axi_bready;
  wire [AXI_ID_WIDTH-1:0]           m_axi_bid;
  wire [1:0]                        m_axi_bresp;
  wire                              m_axi_bvalid;   
  wire [AXI_ID_WIDTH-1:0]           m_axi_arid;
  wire [AXI_ADDR_WIDTH-1:0]         m_axi_araddr;
  wire [7:0]                        m_axi_arlen;
  wire [2:0]                        m_axi_arsize;
  wire [1:0]                        m_axi_arburst;
  wire [0:0]                        m_axi_arlock;
  wire [3:0]                        m_axi_arcache;
  wire [2:0]                        m_axi_arprot;
  wire                              m_axi_arvalid;
  wire                              m_axi_arready;    
  wire                              m_axi_rready;
  wire [AXI_ID_WIDTH-1:0]           m_axi_rid;
  wire [127:0]                      m_axi_rdata;
  wire [1:0]                        m_axi_rresp;
  wire                              m_axi_rlast;
  wire                              m_axi_rvalid;   
  // Signals from SoC Master to axi converter
  wire [AXI_ID_WIDTH-1:0]           s_axi_awid;
  wire [AXI_ADDR_WIDTH-1:0]         s_axi_awaddr;
  wire [7:0]                        s_axi_awlen;
  wire [2:0]                        s_axi_awsize;
  wire [1:0]                        s_axi_awburst;
  wire [0:0]                        s_axi_awlock;
  wire [3:0]                        s_axi_awcache;
  wire [2:0]                        s_axi_awprot;
  wire                              s_axi_awvalid;
  wire                              s_axi_awready;    
  wire [63:0]                       s_axi_wdata;
  wire [7:0]                        s_axi_wstrb;
  wire                              s_axi_wlast;
  wire                              s_axi_wvalid;
  wire                              s_axi_wready;
  wire                              s_axi_bready;
  wire [AXI_ID_WIDTH-1:0]           s_axi_bid;
  wire [1:0]                        s_axi_bresp;
  wire                              s_axi_bvalid;
  wire [AXI_ID_WIDTH-1:0]           s_axi_arid;
  wire [AXI_ADDR_WIDTH-1:0]         s_axi_araddr;
  wire [7:0]                        s_axi_arlen;
  wire [2:0]                        s_axi_arsize;
  wire [1:0]                        s_axi_arburst;
  wire [0:0]                        s_axi_arlock;
  wire [3:0]                        s_axi_arcache;
  wire [2:0]                        s_axi_arprot;
  wire                              s_axi_arvalid;
  wire                              s_axi_arready;
  wire                              s_axi_rready;
  wire [AXI_ID_WIDTH-1:0]           s_axi_rid;
  wire [63:0]                       s_axi_rdata;
  wire [1:0]                        s_axi_rresp;
  wire                              s_axi_rlast;
  wire                              s_axi_rvalid;   
  wire [11:0]                       device_temp;    
  wire i2c_scl_out, i2c_scl_in, i2c_scl_out_en;
  wire i2c_sda_out, i2c_sda_in, i2c_sda_out_en;
  wire [15:0] gpio_in, gpio_out, gpio_out_en;

   // ---------------------------------------------------------------------------- //
  `ifdef JTAG_BSCAN2E
    wire wire_tck_clk;
    wire wire_trst;
    wire wire_capture;
    wire wire_run_test;
    wire wire_sel;
    wire wire_shift;
    wire wire_tdi;
    wire wire_tms;
    wire wire_update;
    wire wire_tdo;

    BSCANE2 #(
      .JTAG_CHAIN(4) // Value for USER command.
    )
    bse2_inst (
      .CAPTURE(wire_capture), // 1-bit output: CAPTURE output from TAP controller.
      .DRCK(), // 1-bit output: Gated TCK output. When SEL is asserted, DRCK toggles when CAPTURE or SHIFT are asserted.
      .RESET(wire_trst), // 1-bit output: Reset output for TAP controller.
      .RUNTEST(wire_run_test), // 1-bit output: Output asserted when TAP controller is in Run Test/Idle state.
      .SEL(wire_sel), // 1-bit output: USER instruction active output.
      .SHIFT(wire_shift), // 1-bit output: SHIFT output from TAP controller.
      .TCK(wire_tck_clk), // 1-bit output: Test Clock output. Fabric connection to TAP Clock pin.
      .TDI(wire_tdi), // 1-bit output: Test Data Input (TDI) output from TAP controller.
      .TMS(wire_tms), // 1-bit output: Test Mode Select output. Fabric connection to TAP.
      .UPDATE(wire_update), // 1-bit output: UPDATE output from TAP controller
      .TDO(wire_tdo) // 1-bit input: Test Data Output (TDO) input for USER function.
    );
  `endif

  // --------- Address width truncation and Reset generation for SoC ------------ //
  wire [31:0] temp_s_axi_awaddr, temp_s_axi_araddr;
  assign s_axi_awaddr= temp_s_axi_awaddr [AXI_ADDR_WIDTH-1:0];
  assign s_axi_araddr= temp_s_axi_araddr [AXI_ADDR_WIDTH-1:0];
  assign soc_reset = locked & init_calib_complete;
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
  // ------------ MIG for DDR3 ---------------//
  mig_ddr3 mig_ddr3 (
 // Memory interface ports
      .ddr3_addr                      (ddr3_addr),
      .ddr3_ba                        (ddr3_ba),
      .ddr3_cas_n                     (ddr3_cas_n),
      .ddr3_ck_n                      (ddr3_ck_n),
      .ddr3_ck_p                      (ddr3_ck_p),
      .ddr3_cke                       (ddr3_cke),
      .ddr3_ras_n                     (ddr3_ras_n),
      .ddr3_we_n                      (ddr3_we_n),
      .ddr3_dq                        (ddr3_dq),
      .ddr3_dqs_n                     (ddr3_dqs_n),
      .ddr3_dqs_p                     (ddr3_dqs_p),
      .ddr3_reset_n                   (ddr3_reset_n),
      .init_calib_complete            (init_calib_complete),

      .ddr3_cs_n                      (ddr3_cs_n),
      .ddr3_dm                        (ddr3_dm),
      .ddr3_odt                       (ddr3_odt),
      .ui_clk                         (clk),
      .ui_clk_sync_rst                (rst),
      .mmcm_locked                    (mmcm_locked),
      .aresetn                        (aresetn),
      .app_sr_req                     ( 1'b0),
      .app_ref_req                    ( 1'b0),
      .app_zq_req                     ( 1'b0),
      .app_sr_active                  (),
      .app_ref_ack                    (),
      .app_zq_ack                     (),
      // Slave Interface Write Address Ports
      .s_axi_awid                     (m_axi_awid),
      .s_axi_awaddr                   (m_axi_awaddr),
      .s_axi_awlen                    (m_axi_awlen),
      .s_axi_awsize                   (m_axi_awsize),
      .s_axi_awburst                  (m_axi_awburst),
      .s_axi_awlock                   (m_axi_awlock),
      .s_axi_awcache                  (m_axi_awcache),
      .s_axi_awprot                   (m_axi_awprot),
      .s_axi_awqos                    (4'h0),
      .s_axi_awvalid                  (m_axi_awvalid),
      .s_axi_awready                  (m_axi_awready),
      // Slave Interface Write Data Ports
      .s_axi_wdata                    (m_axi_wdata),
      .s_axi_wstrb                    (m_axi_wstrb),
      .s_axi_wlast                    (m_axi_wlast),
      .s_axi_wvalid                   (m_axi_wvalid),
      .s_axi_wready                   (m_axi_wready),
      // Slave Interface Write Response Ports
      .s_axi_bid                      (m_axi_bid),
      .s_axi_bresp                    (m_axi_bresp),
      .s_axi_bvalid                   (m_axi_bvalid),
      .s_axi_bready                   (m_axi_bready),
      // Slave Interface Read Address Ports
      .s_axi_arid                     (m_axi_arid),
      .s_axi_araddr                   (m_axi_araddr),
      .s_axi_arlen                    (m_axi_arlen),
      .s_axi_arsize                   (m_axi_arsize),
      .s_axi_arburst                  (m_axi_arburst),
      .s_axi_arlock                   (m_axi_arlock),
      .s_axi_arcache                  (m_axi_arcache),
      .s_axi_arprot                   (m_axi_arprot),
      .s_axi_arqos                    (4'h0),
      .s_axi_arvalid                  (m_axi_arvalid),
      .s_axi_arready                  (m_axi_arready),
      // Slave Interface Read Data Ports
      .s_axi_rid                      (m_axi_rid),
      .s_axi_rdata                    (m_axi_rdata),
      .s_axi_rresp                    (m_axi_rresp),
      .s_axi_rlast                    (m_axi_rlast),
      .s_axi_rvalid                   (m_axi_rvalid),
      .s_axi_rready                   (m_axi_rready),
      .sys_clk_i                      (ddr3_main),
      .clk_ref_i                      (ddr3_ref),
      .device_temp                    (device_temp),
      .sys_rst                        (locked)
   );

   always @(posedge clk) begin
     aresetn <= ~rst;
   end
   
   assign pin_aresetn= rst;

   // Instantiating the clock converter between the SoC and DDR3 MIG
   clk_converter clock_converter (
       .s_axi_aclk(core_clk),
       .s_axi_aresetn(locked),
       .s_axi_awid(s_axi_awid),
       .s_axi_awaddr(s_axi_awaddr),
       .s_axi_awlen(s_axi_awlen),
       .s_axi_awsize(s_axi_awsize),
       .s_axi_awburst(s_axi_awburst),
       .s_axi_awlock(1'b0),
       .s_axi_awcache(4'b10),
       .s_axi_awprot(s_axi_awprot),
       .s_axi_awregion(4'b0),
       .s_axi_awqos(4'b0),
       .s_axi_awvalid(s_axi_awvalid),
       .s_axi_awready(s_axi_awready),
       .s_axi_wdata(s_axi_wdata),
       .s_axi_wstrb(s_axi_wstrb),
       .s_axi_wlast(s_axi_wlast),
       .s_axi_wvalid(s_axi_wvalid),
       .s_axi_wready(s_axi_wready),
       .s_axi_bid(s_axi_bid),
       .s_axi_bresp(s_axi_bresp),
       .s_axi_bvalid(s_axi_bvalid),
       .s_axi_bready(s_axi_bready),
       .s_axi_arid(s_axi_arid),
       .s_axi_araddr(s_axi_araddr),
       .s_axi_arlen(s_axi_arlen),
       .s_axi_arsize(s_axi_arsize),
       .s_axi_arburst(s_axi_arburst),
       .s_axi_arlock(1'b0),
       .s_axi_arcache(4'b10),
       .s_axi_arprot(s_axi_arprot),
       .s_axi_arregion(4'b0),
       .s_axi_arqos(4'b0),
       .s_axi_arvalid(s_axi_arvalid),
       .s_axi_arready(s_axi_arready),
       .s_axi_rid(s_axi_rid),
       .s_axi_rdata(s_axi_rdata),
       .s_axi_rresp(s_axi_rresp),
       .s_axi_rlast(s_axi_rlast),
       .s_axi_rvalid(s_axi_rvalid),
       .s_axi_rready(s_axi_rready),
       .m_axi_aclk(clk),
       .m_axi_aresetn(aresetn),
       .m_axi_awid(m_axi_awid),
       .m_axi_awaddr(m_axi_awaddr),
       .m_axi_awlen(m_axi_awlen),
       .m_axi_awsize(m_axi_awsize),
       .m_axi_awburst(m_axi_awburst),
       .m_axi_awlock(m_axi_awlock),
       .m_axi_awcache(m_axi_awcache),
       .m_axi_awprot(m_axi_awprot),
       .m_axi_awregion(),
       .m_axi_awqos(),
       .m_axi_awvalid(m_axi_awvalid),
       .m_axi_awready(m_axi_awready),
       .m_axi_wdata(m_axi_wdata),
       .m_axi_wstrb(m_axi_wstrb),
       .m_axi_wlast(m_axi_wlast),
       .m_axi_wvalid(m_axi_wvalid),
       .m_axi_wready(m_axi_wready),
       .m_axi_bid(m_axi_bid),
       .m_axi_bresp(m_axi_bresp),
       .m_axi_bvalid(m_axi_bvalid),
       .m_axi_bready(m_axi_bready),
       .m_axi_arid(m_axi_arid),
       .m_axi_araddr(m_axi_araddr),
       .m_axi_arlen(m_axi_arlen),
       .m_axi_arsize(m_axi_arsize),
       .m_axi_arburst(m_axi_arburst),
       .m_axi_arlock(m_axi_arlock),
       .m_axi_arcache(m_axi_arcache),
       .m_axi_arprot(m_axi_arprot),
       .m_axi_arregion(),
       .m_axi_arqos(),
       .m_axi_arvalid(m_axi_arvalid),
       .m_axi_arready(m_axi_arready),
       .m_axi_rid(m_axi_rid),
       .m_axi_rdata(m_axi_rdata),
       .m_axi_rresp(m_axi_rresp),
       .m_axi_rlast(m_axi_rlast),
       .m_axi_rvalid(m_axi_rvalid), 
       .m_axi_rready(m_axi_rready)
   );

   
   // ---- Instantiating the C-class SoC -------------//
   mkSoc core(
       // Main Clock and Reset to the SoC
       .CLK(core_clk),
       .RST_N(soc_reset),
`ifndef JTAG_BSCAN2E       
       // JTAG port definitions
       .CLK_tck_clk(pin_tck),
       .RST_N_trst(pin_trst),
       .wire_tms_tms_in(pin_tms),
       .wire_tdi_tdi_in(pin_tdi),
       .wire_tdo(pin_tdo),
`else
        .CLK_tck_clk(wire_tck_clk),
        .RST_N_trst(~wire_trst),
        .wire_capture_capture_in(wire_capture),     
        .wire_run_test_run_test_in(wire_run_test),     
        .wire_sel_sel_in(wire_sel),     
        .wire_shift_shift_in(wire_shift),     
        .wire_tdi_tdi_in(wire_tdi),     
        .wire_tms_tms_in(wire_tms),     
        .wire_update_update_in(wire_update),     
        .wire_tdo(wire_tdo),
`endif
       // UART port definitions
       .uart_io_SIN(uart_SIN),
       .uart_io_SOUT(uart_SOUT),

       // AXI4 Master interface to be connected to DDR3
		   .mem_master_AWVALID (s_axi_awvalid),
		   .mem_master_AWADDR  (temp_s_axi_awaddr),
		   .mem_master_AWSIZE  (s_axi_awsize),
		   .mem_master_AWPROT  (s_axi_awprot),
		   .mem_master_AWLEN   (s_axi_awlen),
		   .mem_master_AWBURST (s_axi_awburst),
		   .mem_master_AWID    (s_axi_awid),
		   .mem_master_AWREADY (s_axi_awready),
                
		   .mem_master_WVALID  (s_axi_wvalid),
		   .mem_master_WDATA   (s_axi_wdata),
		   .mem_master_WSTRB   (s_axi_wstrb),
		   .mem_master_WLAST   (s_axi_wlast),
		   .mem_master_WID     (),
		   .mem_master_WREADY  (s_axi_wready),
                
		   .mem_master_BVALID  (s_axi_bvalid),
		   .mem_master_BRESP   (s_axi_bresp),
		   .mem_master_BID     (s_axi_bid),
		   .mem_master_BREADY  (s_axi_bready),
                
		   .mem_master_ARVALID (s_axi_arvalid),
		   .mem_master_ARADDR  (temp_s_axi_araddr),
		   .mem_master_ARSIZE  (s_axi_arsize),
		   .mem_master_ARPROT  (s_axi_arprot),
		   .mem_master_ARLEN   (s_axi_arlen),
		   .mem_master_ARBURST (s_axi_arburst),
		   .mem_master_ARID    (s_axi_arid),
		   .mem_master_ARREADY (s_axi_arready),
                
		   .mem_master_RVALID (s_axi_rvalid),
		   .mem_master_RRESP  (s_axi_rresp),
		   .mem_master_RDATA  (s_axi_rdata),
		   .mem_master_RLAST  (s_axi_rlast),
		   .mem_master_RID    (s_axi_rid),
		   .mem_master_RREADY(s_axi_rready),

			 //I2C ports
		   .i2c_out_scl_out (i2c_scl_out),
       .i2c_out_scl_in_in(i2c_scl_in),
       .i2c_out_scl_out_en(i2c_scl_out_en),
       .i2c_out_sda_out(i2c_sda_out),
       .i2c_out_sda_in_in(i2c_sda_in),
       .i2c_out_sda_out_en(i2c_sda_out_en),

			 //External interrupts ports
       .interrupts_inp(interrupts),
       
			 //GPIO ports
       .gpio_io_gpio_in_inp(gpio_in),
       .gpio_io_gpio_out(gpio_out),
       .gpio_io_gpio_out_en(gpio_out_en)
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
