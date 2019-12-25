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

Author: Neel Gala
Email id: neelgala@gmail.com
Details:

--------------------------------------------------------------------------------------------------
*/
package TbSoc;
  import Soc:: *;
  import Clocks::*;
  import GetPut:: *;
	import Semi_FIFOF:: *;
	import AXI4_Types:: *;
	import AXI4_Fabric:: *;
  import uart::*;
	import common_types::*;
  `include "common_params.bsv"
  `include "Logger.bsv"
  `include "Soc.defines"
  import device_common::*;
  import DReg :: *;
  import bram :: *;
  import Connectable :: *;
  import bootrom :: *;
  import i2c :: * ;
  import pinmux :: * ;
  import qspi :: * ;
  import spi :: * ;

  import bsvmkissiwrapper :: *;
  import sdram_axi4_lite :: * ;

  import TriState :: * ;

`ifdef openocd
  import "BDPI" function ActionValue #(int) init_rbb_jtag(Bit#(1) dummy);
  import "BDPI" function ActionValue #(Bit #(8))get_frame(int client_fd);
  import "BDPI" function Action send_tdo(Bit #(1) tdo , int client_fd);
`endif
  module mkTbSoc(Empty);

    MakeClockIfc#(Bit#(1)) tck_clk <-mkUngatedClock(1);
    MakeResetIfc trst <- mkReset(0,False,tck_clk.new_clk);

    /*doc:wire: */
    Wire#(Bit#(32)) wr_reset_pc <- mkDWire(`MemoryBase);
    rule set_reset_pc;
      let bootmode <- $test$plusargs("debugmode");
      if(bootmode)
        wr_reset_pc <= `DebugBase;
    endrule


    Ifc_Soc soc <- mkSoc(wr_reset_pc, tck_clk.new_clk, trst.new_rst);
    let bootrom <- mkbootrom;
		Ifc_issi sdram_bfm <- mkissiwrapper();

		// ------------------- SDRAM connections ----------------------------------//
		TriState#(Bit#(32)) tri_sio0 <- mkTriState(soc.sdram_io.osdr_den_n[0]==0,
                                          		soc.sdram_io.osdr_dout);
    mkConnection(tri_sio0.io, sdram_bfm.dq);
    rule rl_connect_input_datapins;                                                             
      soc.sdram_io.ipad_sdr_din(tri_sio0._read);                                             
    endrule                                                                                     
    rule rl_iAddr_connection;                                                                   
      let in = soc.sdram_io.osdr_addr();                                                       
      sdram_bfm.iaddr(truncate(in));                                                          
    endrule                                                                                       
                                                                                                  
    rule rl_iBa_connection;                                                                       
      let in = soc.sdram_io.osdr_ba();                                                         
      sdram_bfm.iba(in);                                                                     
    endrule                                                                                       
                                                                                                  
    rule rl_iCke_connection;                                                                      
      let in = soc.sdram_io.osdr_cke();                                                        
      sdram_bfm.icke(pack(in));                                                              
    endrule                                                                                       
                                                                                                  
    rule rl_iCs_n_connection;                                                                     
      let in = soc.sdram_io.osdr_cs_n();                                                       
      sdram_bfm.ics_n(pack(in));                                                             
    endrule                                                                                       
                                                                                                  
    rule rl_iRas_n_connection;                                                                    
      let in = soc.sdram_io.osdr_ras_n();                                                      
      sdram_bfm.iras_n(pack(in));                                                            
    endrule                                                                                       
                                                                                                  
    rule rl_iCas_n_connection;                                                                    
      let in = soc.sdram_io.osdr_cas_n();                                                      
      sdram_bfm.icas_n(pack(in));                                                            
    endrule                                                                                       
                                                                                                  
    rule rl_iWe_n_connection;                                                                     
      let in = soc.sdram_io.osdr_we_n();                                                       
      sdram_bfm.iwe_n(pack(in));                                                             
    endrule                                                                                       
                                                                                                  
    rule rl_iDqm_connection;                                                                      
      let in = soc.sdram_io.osdr_dqm();                                                        
      sdram_bfm.idqm(extend(in));                                                            
    endrule
    // ------------------------------------------------------------------------- //

		mkConnection(soc.bootrom_master, bootrom.slave);

    UserInterface#(`paddr,XLEN,16) uart0 <- mkuart_user(5,0,0);
    UserInterface#(`paddr,XLEN,16) uart1 <- mkuart_user(5,0,0);
    UserInterface#(`paddr,XLEN,16) uart2 <- mkuart_user(5,0,0);
    Reg#(Bool) rg_read_rx<- mkDRegA(False);

    Reg#(Bit#(5)) rg_cnt <-mkRegA(0);

    rule display_eol;
	    let timeval <- $time;
      `logLevel( tb, 0, $format("\n[%10d]", timeval))
    endrule

  `ifdef rtldump
 	  let dump <- mkRegA(InvalidFile) ;
    rule open_file_rtldump(rg_cnt<5);
      let generate_dump <- $test$plusargs("rtldump");
      if(generate_dump) begin
        String dumpFile = "rtl.dump" ;
    	  File lfh <- $fopen( dumpFile, "w" ) ;
    	  if ( lfh == InvalidFile )begin
    	    `logLevel( tb, 0, $format("TB: cannot open %s", dumpFile))
    	    $finish(0);
    	  end
    	  dump <= lfh ;
      end
    endrule
  `endif

 	  let dump1 <- mkRegA(InvalidFile) ;
    rule open_file_app(rg_cnt<5);
      String dumpFile1 = "app_log" ;
    	File lfh1 <- $fopen( dumpFile1, "w" ) ;
    	if (lfh1==InvalidFile )begin
    	  `logLevel( tb, 0, $format("TB: cannot open %s", dumpFile1))
    	  $finish(0);
    	end
      dump1 <= lfh1;
    	rg_cnt <= rg_cnt+1 ;
    endrule

    rule connect_uart0_out;
      soc.uart0_io.sin(uart0.io.sout);
    endrule
    rule connect_uart0_in;
      uart0.io.sin(soc.uart0_io.sout);
    endrule
   
    // -------- when uart1 is enabled through pinmux ----------//
    rule connect_uart1_out(soc.iocell_io.io7_cell_outen==1);
      soc.iocell_io.io8_cell_in(uart1.io.sout);
    endrule
    rule connect_uart1_in(soc.iocell_io.io8_cell_outen==0);
      uart1.io.sin(soc.iocell_io.io8_cell_out);
    endrule
    // --------------------------------------------------------//
    
    // -------- when uart1 is enabled through pinmux ----------//
    rule connect_uart2_out(soc.iocell_io.io9_cell_outen==1);
      soc.iocell_io.io10_cell_in(uart2.io.sout);
    endrule
    rule connect_uart2_in(soc.iocell_io.io10_cell_outen==0);
      uart2.io.sin(soc.iocell_io.io10_cell_out);
    endrule
    // --------------------------------------------------------//

    rule check_if_character_present(!rg_read_rx);
      let {data,err}<- uart0.read_req('hc,Byte);
      if (data[3]==1) // character present
        rg_read_rx<=True;
    endrule

    rule write_received_character(rg_cnt>=5 && rg_read_rx);
      let {data,err}<-uart0.read_req('h8,Byte);
      $fwrite(dump1,"%c",data);
    endrule

    rule drive_constants;
      soc.gpio_14(0);
      soc.gpio_15(0);
      soc.gpio_4(0);
      soc.gpio_7(0);
      soc.gpio_8(0);
      soc.i2c0_out.scl_in(0);
      soc.i2c1_out.scl_in(0);
      soc.i2c0_out.sda_in(0);
      soc.i2c1_out.sda_in(0);
      soc.iocell_io.io7_cell_in(0);
      soc.iocell_io.io9_cell_in(0);
      soc.iocell_io.io12_cell_in(0);
      soc.iocell_io.io13_cell_in(0);
      soc.iocell_io.io16_cell_in(0);
      soc.iocell_io.io17_cell_in(0);
      soc.iocell_io.io18_cell_in(0);
      soc.iocell_io.io19_cell_in(0);
      soc.iocell_io.io20_cell_in(0);
      soc.qspi_io.io_i(0);
      soc.spi0_io.miso(0);
      soc.spi1_io.miso(0);
    endrule

  `ifdef rtldump
    rule write_dump_file(rg_cnt>=5);
      let generate_dump <- $test$plusargs("rtldump");
      let {prv, pc, instruction, rd, data}<- soc.io_dump.get;
    `ifndef openocd
      if(instruction=='h00006f||instruction =='h00a001)
        $finish(0);
      else
    `endif
      if(generate_dump)begin
      	$fwrite(dump, prv, " 0x%16h", pc, " (0x%8h", instruction, ")");
    	  $fwrite(dump, " x%d", rd, " 0x%8h", data[31:0], "\n");
      end
    endrule
  `endif

  `ifdef debug
    Wire#(Bit#(1)) wr_tdi <-mkWire();
    Wire#(Bit#(1)) wr_tms <-mkWire();
    rule connect_jtag_io;
      soc.wire_tdi(wr_tdi);
      soc.wire_tms(wr_tms);
    endrule
  `endif
  `ifdef openocd
    Wire#(Bit#(1)) wr_tdo <-mkWire();
    Wire#(Bit#(1)) wr_tck <-mkWire();
    Wire#(Bit#(1)) wr_trst <-mkWire();
    rule rl_wr_tdo;
      wr_tdo <= soc.wire_tdo();
    endrule
    Reg#(Bit#(1)) rg_initial <- mkRegA(0);
    Reg#(Bit#(1)) rg_end_sim <- mkRegA(0);
    Reg#(int) rg_client_fd <- mkRegA(32'hffffffff);
    Reg#(Bit#(5)) delayed_actor <- mkRegA(0);
    Reg#(Bit#(5)) delayed_actor2 <- mkRegA(0);
    Reg#(Bit#(5)) delayed_actor3 <- mkRegA(0);
    Reg#(Bit#(5)) delayed_actor4 <- mkRegA(0);
    Reg#(Bit#(5)) delayed_actor5 <- mkRegA(0);
    rule rl_initial(rg_initial == 0);
      let x <- init_rbb_jtag(0);
      if(x != 32'hffffffff)begin
        rg_initial <= 1'b1;
        rg_client_fd <= x;
      end
    endrule
    rule rl_get_frame((rg_initial == 1'b1));
      let x <- get_frame(rg_client_fd);
      delayed_actor <= truncate(x);
      delayed_actor2 <= delayed_actor;
      delayed_actor3 <= delayed_actor2;
      delayed_actor4 <= delayed_actor3;
      delayed_actor5 <= delayed_actor4;
      tck_clk.setClockValue(delayed_actor2[2]);
      if(delayed_actor2[4] == 1)
        trst.assertReset();
      if(delayed_actor5[3] == 1 )
        send_tdo(wr_tdo,rg_client_fd);
      wr_tdi <= delayed_actor[0];
      wr_tms <= delayed_actor[1];
      if( x[5] == 1)begin
        $display("OpenOcd Exit");
        $finish();
      end
    endrule
  `endif
  endmodule
endpackage: TbSoc
