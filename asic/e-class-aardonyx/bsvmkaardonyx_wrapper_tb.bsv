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

Author: Deepa N. Sarma
Email id: deepans.88@gmail.com
Details:

--------------------------------------------------------------------------------------------------
*/
package bsvmkaardonyx_wrapper_tb;
 
  import Soc::*;
  import Clocks::*;
  import GetPut::*;
	import Semi_FIFOF::*;
	import AXI4_Types::*;
	import AXI4_Fabric::*;
  import uart::*;
	import common_types::*;
  `include "common_params.bsv"
  `include "Logger.bsv"
  `include "Soc.defines"
  import device_common::*;
  import DReg ::*;
  import bram ::*;
  import Connectable ::*;
  import bootrom ::*;
  import i2c ::* ;
  import pinmux ::* ;
  import qspi ::* ;
  import spi ::* ;
  import bsvmkissiwrapper_aardonyx :: *;
  import sdram_axi4_lite :: * ;
  import TriState :: * ;
  import bsvmkaardonyx_wrapper ::*;
	import qspi :: * ;
	import spi :: * ;
	import bsvmkCypressFlashWrapper::*;
	import bsvmkissiflashwrapper::*;
  import bsvmkM24AA1025::*;

`ifdef openocd
  import "BDPI" function ActionValue #(int) init_rbb_jtag(Bit#(1) dummy);
  import "BDPI" function ActionValue #(Bit #(8))get_frame(int client_fd);
  import "BDPI" function Action send_tdo(Bit #(1) tdo , int client_fd);
`endif
  
  module mktb_wrapper(Empty);

    let def_clk <- exposeCurrentClock;
    let def_rst <- exposeCurrentReset;

    MakeClockIfc#(Bit#(1)) tck_clk <-mkUngatedClock(1);
    MakeResetIfc trst <- mkReset(0,False,tck_clk.new_clk);
    /*doc:wire: */
    Wire#(Bit#(32)) wr_reset_pc <- mkDWire(`MemoryBase);
    rule set_reset_pc;
      let bootmode <- $test$plusargs("debugmode");
      if(bootmode)
        wr_reset_pc <= `DebugBase;
    endrule


    Ifc_aardonyx_wrapper soc_top<-mkaardonyx_wrapper(tck_clk.new_clk,trst.new_rst);
 //   let bootrom <- mkbootrom;
		Ifc_issi_aardonyx sdram_bfm <- mkissiwrapper_aardonyx();
		
    // ------------------- sdram connections ----------------------------------//
		
//    TriState#(Bit#(32)) tri_sio0 <- mkTriState(soc.sdram_io.osdr_den_n[0]==0,
//  
//    soc.sdram_io.osdr_dout);
    mkConnection(soc_top.ioSDRAM_D0,sdram_bfm.dq_0);
    mkConnection(soc_top.ioSDRAM_D1,sdram_bfm.dq_1);
    mkConnection(soc_top.ioSDRAM_D2,sdram_bfm.dq_2);
    mkConnection(soc_top.ioSDRAM_D3,sdram_bfm.dq_3);
    mkConnection(soc_top.ioSDRAM_D4,sdram_bfm.dq_4);
    mkConnection(soc_top.ioSDRAM_D5,sdram_bfm.dq_5);
    mkConnection(soc_top.ioSDRAM_D6,sdram_bfm.dq_6);
    mkConnection(soc_top.ioSDRAM_D7,sdram_bfm.dq_7);
    mkConnection(soc_top.ioSDRAM_D8,sdram_bfm.dq_8);
    mkConnection(soc_top.ioSDRAM_D9,sdram_bfm.dq_9);
    mkConnection(soc_top.ioSDRAM_D10,sdram_bfm.dq_10);
    mkConnection(soc_top.ioSDRAM_D11,sdram_bfm.dq_11);
    mkConnection(soc_top.ioSDRAM_D12,sdram_bfm.dq_12);
    mkConnection(soc_top.ioSDRAM_D13,sdram_bfm.dq_13);
    mkConnection(soc_top.ioSDRAM_D14,sdram_bfm.dq_14);
    mkConnection(soc_top.ioSDRAM_D15,sdram_bfm.dq_15);
    mkConnection(soc_top.ioSDRAM_D16,sdram_bfm.dq_16);
    mkConnection(soc_top.ioSDRAM_D17,sdram_bfm.dq_17);
    mkConnection(soc_top.ioSDRAM_D18,sdram_bfm.dq_18);
    mkConnection(soc_top.ioSDRAM_D19,sdram_bfm.dq_19);
    mkConnection(soc_top.ioSDRAM_D20,sdram_bfm.dq_20);
    mkConnection(soc_top.ioSDRAM_D21,sdram_bfm.dq_21);
    mkConnection(soc_top.ioSDRAM_D22,sdram_bfm.dq_22);
    mkConnection(soc_top.ioSDRAM_D23,sdram_bfm.dq_23);
    mkConnection(soc_top.ioSDRAM_D24,sdram_bfm.dq_24);
    mkConnection(soc_top.ioSDRAM_D25,sdram_bfm.dq_25);
    mkConnection(soc_top.ioSDRAM_D26,sdram_bfm.dq_26);
    mkConnection(soc_top.ioSDRAM_D27,sdram_bfm.dq_27);
    mkConnection(soc_top.ioSDRAM_D28,sdram_bfm.dq_28);
    mkConnection(soc_top.ioSDRAM_D29,sdram_bfm.dq_29);
    mkConnection(soc_top.ioSDRAM_D30,sdram_bfm.dq_30);
    mkConnection(soc_top.ioSDRAM_D31,sdram_bfm.dq_31);
//    rule rl_connect_input_datapins;                                                             
//      soc.sdram_io.ipad_sdr_din(tri_sio0._read);                                             
//    endrule   
      
      
  TriState#(Bit#(1)) linescl0 <- mkTriState(False,1'b1);
   IFC_EEPROM i2c_bfm_slave0 <- mkM24AA1025(); 
      
   mkConnection(soc_top.ioI2C0_SDA,i2c_bfm_slave0.linesda);
   mkConnection(soc_top.ioI2C0_SCL,linescl0.io);
 
    
    rule connect_i2c0;
      i2c_bfm_slave0.iSCL(linescl0._read);
      i2c_bfm_slave0.iA0(1'b0);
      i2c_bfm_slave0.iA1(1'b0);
      i2c_bfm_slave0.iA2(1'b1);
      i2c_bfm_slave0.iWP(1'b0);
    endrule


    rule rl_iAddr_connection;                                                                   
      //let in = soc.sdram_io.osdr_addr();
      Bit#(13) in = {soc_top.oSDRAM_A12,soc_top.oSDRAM_A11,soc_top.oSDRAM_A10,soc_top.oSDRAM_A9,
      soc_top.oSDRAM_A8,soc_top.oSDRAM_A7,soc_top.oSDRAM_A6,soc_top.oSDRAM_A5,soc_top.oSDRAM_A4,
      soc_top.oSDRAM_A3,soc_top.oSDRAM_A2,soc_top.oSDRAM_A1,soc_top.oSDRAM_A0};
      sdram_bfm.iaddr(truncate(in));                                                          
    endrule                                                                                       
                                                                                                  
    rule rl_iBa_connection;                                                                       
      let in = {soc_top.oSDRAM_BA1,soc_top.oSDRAM_BA0};                                                         
      sdram_bfm.iba(in);                                                                     
    endrule                                                                                       
                                                                                                  
    rule rl_iCke_connection;                                                                      
      let in = soc_top.oSDRAM_CKE;                                                        
      sdram_bfm.icke(pack(in));                                                              
    endrule                                                                                       
                                                                                                  
    rule rl_iCs_n_connection;                                                                     
      let in = soc_top.oSDRAM_CS;                                                       
      sdram_bfm.ics_n(pack(in));                                                             
    endrule                                                                                       
                                                                                                  
    rule rl_iRas_n_connection;                                                                    
      let in = soc_top.oSDRAM_RAS ;                                                      
      sdram_bfm.iras_n(pack(in));                                                            
    endrule                                                                                       
                                                                                                  
    rule rl_iCas_n_connection;                                                                    
      let in = soc_top.oSDRAM_CAS;                                                      
      sdram_bfm.icas_n(pack(in));                                                            
    endrule                                                                                       
                                                                                                  
    rule rl_iWe_n_connection;                                                                     
      let in = soc_top.oSDRAM_WE();                                                       
      sdram_bfm.iwe_n(pack(in));                                                             
    endrule                                                                                       
                                                                                                  
    rule rl_iDqm_connection;                                                                      
      let in = {soc_top.oSDRAM_DQ3,soc_top.oSDRAM_DQ2,soc_top.oSDRAM_DQ1,soc_top.oSDRAM_DQ0};                                                        
      sdram_bfm.idqm(extend(in));                                                            
    endrule
    // ------------------------------------------------------------------------- //

    UserInterface#(`paddr,XLEN,16) uart0 <- mkuart_user(5,0,0);
    UserInterface#(`paddr,XLEN,16) uart1 <- mkuart_user(5,0,0);
    UserInterface#(`paddr,XLEN,16) uart2 <- mkuart_user(5,0,0);
    Reg#(Bool) rg_read_rx_0<- mkDReg(False);
    Reg#(Bool) rg_read_rx_1<- mkDReg(False);
    Reg#(Bool) rg_read_rx_2<- mkDReg(False);

    Reg#(Bit#(5)) rg_cnt <-mkReg(0);

    rule display_eol;
	    let timeval <- $time;
      `logLevel( tb, 0, $format("\n[%10d]", timeval))
    endrule

  `ifdef rtldump
 	  let dump <- mkReg(InvalidFile) ;
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

	//---------------UART0 connections--------------------//   

	let dump1 <- mkReg(InvalidFile) ;
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

	rule connect_UART0_out;
	  soc_top.iUART0_RX(uart0.io.sout);
	endrule
	rule connect_UART0_in;
	  uart0.io.sin(soc_top.oUART0_TX);
	endrule

	rule uart0_check_if_character_present(!rg_read_rx_0);
	  let {data,err}<- uart0.read_req('hc,Byte);
	  if (data[2]==1) // character present
	    rg_read_rx_0<=True;
	endrule
	
	rule uart0_write_received_character(rg_cnt>=5 && rg_read_rx_0);
		let {data,err}<-uart0.read_req('h8,Byte);
		$fwrite(dump1,"%c",data);
	endrule

    // ------------------------------------------------------------------------- //

	Reg#(Bit#(1)) rg_count1 <- mkReg(0);

	 TriState#(Bit#(1)) gpi0_1_uart_tx <- mkTriState(False,1'b1);
	 TriState#(Bit#(1)) gpi0_0_uart_rx <- mkTriState(True,uart1.io.sout);
	 mkConnection(soc_top.ioGPIO_0,gpi0_0_uart_rx.io);
	 mkConnection(soc_top.ioGPIO_1,gpi0_1_uart_tx.io);

  // -------- when uart1 is enabled through pinmux ----------//
	rule connect_uart1_in;
		Bit#(1) temp = gpi0_1_uart_tx._read;
		if(rg_count1 ==0) begin
			if(temp ==1)
				rg_count1 <= 1;
			uart1.io.sin(1);
		end
		else
			uart1.io.sin(temp);
   endrule

    Reg#(Bit#(5)) rg_cnt1 <-mkReg(0);
   let dump2 <- mkReg(InvalidFile) ;
    rule open_file_app_1(rg_cnt1<5);
      String dumpFile1 = "app_log_1" ;
    	File lfh1 <- $fopen( dumpFile1, "w" ) ;
    	if (lfh1==InvalidFile )begin
    	  `logLevel( tb, 0, $format("TB: cannot open %s", dumpFile1))
    	  $finish(0);
    	end
      dump2 <= lfh1;
    rg_cnt1 <= rg_cnt1+1 ;
    endrule
	
	rule uart1_check_if_character_present(!rg_read_rx_1);
	  let {data,err}<- uart1.read_req('hc,Byte);
	  if (data[2]==1) // character present
	    rg_read_rx_1<=True;
//	 $display("\n UART1 Checking status from TbSoc %x ",data);	
	endrule
	
	rule uart1_write_received_character(rg_cnt1>=5 && rg_read_rx_1 && rg_count1 == 1);
	  let {data,err}<-uart1.read_req('h8,Byte);
	  $fwrite(dump2,"%c",data);
//	  $display("\n UART1 Dumping to file from TbSoc %x ",data);	
	endrule
    // ------------------------------------------------------------------------- //

  // -------- when uart2 is enabled through pinmux ----------//

	Reg#(Bit#(1)) rg_count2 <- mkReg(0);

	 TriState#(Bit#(1)) gpi0_3_uart_tx <- mkTriState(False,1'b1);
	 TriState#(Bit#(1)) gpi0_2_uart_rx <- mkTriState(True,uart2.io.sout);
	  mkConnection(soc_top.ioGPIO_2,gpi0_2_uart_rx.io);
	  mkConnection(soc_top.ioGPIO_3,gpi0_3_uart_tx.io);

  
	rule connect_uart2_in;
		Bit#(1) temp = gpi0_3_uart_tx._read;
		if(rg_count2 ==0) begin
			if(temp ==1)
				rg_count2 <= 1;
			uart2.io.sin(1);
		end
		else
			uart2.io.sin(temp);
   endrule
    
    Reg#(Bit#(5)) rg_cnt2 <-mkReg(0);
   let dump3 <- mkReg(InvalidFile) ;
    rule open_file_app_2(rg_cnt2<5);
      String dumpFile1 = "app_log_2" ;
    	File lfh1 <- $fopen( dumpFile1, "w" ) ;
    	if (lfh1==InvalidFile )begin
    	  `logLevel( tb, 0, $format("TB: cannot open %s", dumpFile1))
    	  $finish(0);
    	end
      dump3 <= lfh1;
    rg_cnt2 <= rg_cnt2+1 ;
    endrule

   rule uart2_check_if_character_present(!rg_read_rx_2);
     let {data,err}<- uart2.read_req('hc,Byte);
     if (data[2]==1) // character present
       rg_read_rx_2<=True;
   endrule

   rule uart2_write_received_character(rg_cnt2>=5 && rg_read_rx_2 && rg_count2 == 1);
     let {data,err}<-uart2.read_req('h8,Byte);
     $fwrite(dump3,"%c",data);
   endrule

// --------------------------------------------------------//

//================UART_V2_verification=====================//
//	
//	 TriState#(Bit#(1)) gpi0_1_uart_tx <- mkTriState(False,1'b1);
//	 TriState#(Bit#(1)) gpi0_0_uart_rx <- mkTriState(True,uart1.io.sout);
//	 mkConnection(soc_top.ioGPIO_0,gpi0_0_uart_rx.io);
//	 mkConnection(soc_top.ioGPIO_1,gpi0_1_uart_tx.io);
//	
//	
//	 TriState#(Bit#(1)) gpi0_3_uart_tx <- mkTriState(False,1'b1);
//	 TriState#(Bit#(1)) gpi0_2_uart_rx <- mkTriState(True,gpi0_1_uart_tx._read);
//	 mkConnection(soc_top.ioGPIO_2,gpi0_2_uart_rx.io);
//	 mkConnection(soc_top.ioGPIO_3,gpi0_3_uart_tx.io);
//	
//	
//========================================================//

	//===========================QSPI connection=========================//
	
	Ifc_issiflashwrapper flash1 <- mkissiflashwrapper(clocked_by def_clk, reset_by def_rst);

//  TriState#(Bit#(1)) qspi0tri_sio0 <- mkTriState(soc.qspi_io.io_enable[0]==1, soc.qspi_io.io_o[0],clocked_by def_clk, reset_by def_rst);
//  TriState#(Bit#(1)) qspi0tri_sio1 <- mkTriState(soc.qspi_io.io_enable[1]==1, soc.qspi_io.io_o[1],clocked_by def_clk, reset_by def_rst);
//	TriState#(Bit#(1)) qspi0tri_sio2 <- mkTriState(soc.qspi_io.io_enable[2]==1, soc.qspi_io.io_o[2],clocked_by def_clk, reset_by def_rst);
//	TriState#(Bit#(1)) qspi0tri_sio3 <- mkTriState(soc.qspi_io.io_enable[3]==1, soc.qspi_io.io_o[3],clocked_by def_clk, reset_by def_rst);

  	mkConnection(soc_top.ioQSPI0_IO0,flash1.si);
  	mkConnection(soc_top.ioQSPI0_IO1,flash1.so);
  	mkConnection(soc_top.ioQSPI0_IO2,flash1.wp);
  	mkConnection(soc_top.ioQSPI0_IO3,flash1.sio3);

  rule connect_flash1_ports1;
  	flash1.ics(soc_top.oQSPI0_NCS);
    flash1.isclk(soc_top.oQSPI0_CLK);
  endrule

//  rule connect_flash1_input_ports;
//  	soc.qspi_io.io_i({qspi0tri_sio3._read,qspi0tri_sio2._read,qspi0tri_sio1._read,qspi0tri_sio0._read});
//  endrule

	//====================================================================//


	//========================SPI Connection============================//
		
	Ifc_FlashWrapper flash2 <- mkCypressFlashWrapper(clocked_by def_clk, reset_by def_rst);
	Ifc_FlashWrapper flash3 <- mkCypressFlashWrapper(clocked_by def_clk, reset_by def_rst);
	Ifc_FlashWrapper flash4 <- mkCypressFlashWrapper(clocked_by def_clk, reset_by def_rst);

	TriState#(Bit#(1)) spi0_mosi <- mkTriState(True,soc_top.oSPI0_MOSI, clocked_by def_clk, reset_by def_rst);
	TriState#(Bit#(1)) spi0_miso <- mkTriState(False, ?, clocked_by def_clk, reset_by def_rst);
	
	TriState#(Bit#(1)) spi1_mosi <- mkTriState(True,soc_top.oSPI1_MOSI, clocked_by def_clk, reset_by def_rst);
	TriState#(Bit#(1)) spi1_miso <- mkTriState(False, ?, clocked_by def_clk, reset_by def_rst);
	
	TriState#(Bit#(1)) spi2_sclk <- mkTriState(False,1'b1);
	TriState#(Bit#(1)) spi2_ncs  <- mkTriState(False,1'b1);

	mkConnection(spi0_mosi.io,flash2.si);
	mkConnection(spi0_miso.io,flash2.so);
	
	mkConnection(spi1_mosi.io,flash3.si);
	mkConnection(spi1_miso.io,flash3.so);
	
	mkConnection(soc_top.ioGPIO_11,flash4.si);
	mkConnection(soc_top.ioGPIO_12,flash4.so);
	mkConnection(soc_top.ioGPIO_13,spi2_sclk.io);
	mkConnection(soc_top.ioGPIO_10,spi2_ncs.io);
	
	rule rl_connect_flash0_ports1;
		flash2.iCSNeg(soc_top.oSPI0_NCS);
		flash2.iSCK(soc_top.oSPI0_CLK);
		flash3.iCSNeg(soc_top.oSPI1_NCS);
		flash3.iSCK(soc_top.oSPI1_CLK);
	endrule

	rule rl_spi2_connections;
		flash4.iCSNeg(spi2_ncs._read);
		flash4.iSCK(spi2_sclk._read);
	endrule

	rule rl_connect_io;
		soc_top.iSPI0_MISO(spi0_miso._read);
		soc_top.iSPI1_MISO(spi1_miso._read);
	endrule
	
	//=================================================================//
   
//    // -------- when uart1 is enabled through pinmux ----------//
//    rule connect_uart1_out(soc.iocell_io.io7_cell_outen==1);
//      soc.iocell_io.io8_cell_in(uart1.io.sout);
//    endrule
//    rule connect_uart1_in(soc.iocell_io.io8_cell_outen==0);
//      uart1.io.sin(soc.iocell_io.io8_cell_out);
//    endrule
//    // --------------------------------------------------------//
//    
//    // -------- when uart1 is enabled through pinmux ----------//
//    rule connect_uart2_out(soc.iocell_io.io9_cell_outen==1);
//      soc.iocell_io.io10_cell_in(uart2.io.sout);
//    endrule
//    rule connect_uart2_in(soc.iocell_io.io10_cell_outen==0);
//      uart2.io.sin(soc.iocell_io.io10_cell_out);
//    endrule
//    // --------------------------------------------------------//
//
//    rule check_if_character_present(!rg_read_rx);
//      let {data,err}<- uart0.read_req('hc,Byte);
//      if (data[3]==1) // character present
//        rg_read_rx<=True;
//    endrule
//
//    rule write_received_character(rg_cnt>=5 && rg_read_rx);
//      let {data,err}<-uart0.read_req('h8,Byte);
//      $fwrite(dump1,"%c",data);
//    endrule

    rule drive_constants;
		soc_top.iBOOT_MODE0(0);
		soc_top.iBOOT_MODE1(1);
		soc_top.iTEST_MODE(0);
//      soc.gpio_14(0);
//      soc.gpio_15(0);
//      soc.gpio_4(0);
//      soc.gpio_7(0);
//      soc.gpio_8(0);
//      soc.i2c0_out.scl_in(0);
//      soc.i2c1_out.scl_in(0);
//      soc.i2c0_out.sda_in(0);
//      soc.i2c1_out.sda_in(0);
//      soc.iocell_io.io7_cell_in(0);
//      soc.iocell_io.io9_cell_in(0);
//      soc.iocell_io.io12_cell_in(0);

	endrule
   
//  `ifdef rtldump
//    rule write_dump_file(rg_cnt>=5);
//      let generate_dump <- $test$plusargs("rtldump");
//      let {prv, pc, instruction, rd, data}<- soc.io_dump.get;
//    `ifndef openocd
//      if(instruction=='h00006f||instruction =='h00a001)
//        $finish(0);
//      else
//    `endif
//      if(generate_dump)begin
//      	$fwrite(dump, prv, " 0x%16h", pc, " (0x%8h", instruction, ")");
//    	  $fwrite(dump, " x%d", rd, " 0x%8h", data[31:0], "\n");
//      end
//    endrule
//  `endif

  `ifdef debug
    Wire#(Bit#(1)) wr_tdi <-mkWire();
    Wire#(Bit#(1)) wr_tms <-mkWire();
    rule connect_jtag_io;
      soc_top.iTDI (wr_tdi);
      soc_top.iTMS (wr_tms);
      //soc_top.itck (tck_clk.new_clk);
     // soc_top.itrst (trst.new_rst);
    endrule
  `endif
  `ifdef openocd
    Wire#(Bit#(1)) wr_tdo <-mkWire();
    Wire#(Bit#(1)) wr_tck <-mkWire();
    Wire#(Bit#(1)) wr_trst <-mkWire();
    rule rl_wr_tdo;
      wr_tdo <= soc_top.oTDO();
    endrule
    Reg#(Bit#(1)) rg_initial <- mkRegA(0);
    Reg#(Bit#(1)) rg_end_sim <- mkRegA(0);
    Reg#(int) rg_client_fd <- mkRegA(32'hffffffff);
    Reg#(Bit#(5)) delayed_actor <- mkReg(0);
    Reg#(Bit#(5)) delayed_actor2 <- mkReg(0);
    Reg#(Bit#(5)) delayed_actor3 <- mkReg(0);
    Reg#(Bit#(5)) delayed_actor4 <- mkReg(0);
    Reg#(Bit#(5)) delayed_actor5 <- mkReg(0);
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
endpackage
