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
package Soc;
  // project related imports
	import Semi_FIFOF:: *;
	import AXI4_Lite_Types:: *;
	import AXI4_Lite_Fabric:: *;
  import Clocks :: *;
  import common_types::*;
  `include "Soc.defines"

  // peripheral imports
  import clint::*;
  import err_slave::*;
  import eclass:: * ;
  import pwm_cluster :: * ;
  import uart_cluster :: * ;
  import spi_cluster :: * ;
  import mixed_cluster :: * ;
  import uart :: *;
  import spi :: *;
  import pwm :: *;
  import sdram_axi4_lite :: *;
  import i2c :: *;
  import gpio :: *;
  import bram :: *;
  import debug_types::*;     
  `ifdef bscan2e                                                         
	import xilinxdtm::*;                                                                              
  `else 
	import jtagdtm::*;
  `endif                                                                                                                         
  import riscvDebug013::*;                                                                        
  import debug_halt_loop::*;
  import debug_types::*;                


  // package imports
  import Connectable:: *;
  import GetPut:: *;
  import Vector::*;

 
  function Bit#(TLog#(`Num_Slaves)) fn_slave_map (Bit#(`paddr) addr);
    Bit#(TLog#(`Num_Slaves)) slave_num = 0;
    if(addr >= `MemoryBase && addr<= `MemoryEnd)
      slave_num = `Memory_slave_num;
    else if(addr >= `ClintBase && addr <= `ClintEnd)
      slave_num = `Clint_slave_num;
    else if(addr >= `DebugBase && addr <= `DebugEnd)
      slave_num = `Debug_slave_num;
    else if(addr >= `PWMClusterBase && addr <= `PWMClusterEnd)
      slave_num = `PWMCluster_slave_num;
    else if(addr >= `UARTClusterBase && addr <= `UARTClusterEnd)
      slave_num = `UARTCluster_slave_num;
    else if(addr >= `SPIClusterBase && addr <= `SPIClusterEnd)
      slave_num = `SPICluster_slave_num;
    else if(addr >= `MixedClusterBase && addr <= `MixedClusterEnd)
      slave_num = `MixedCluster_slave_num;
    else
      slave_num = `Err_slave_num;
      
    return slave_num;
  endfunction:fn_slave_map

  interface Ifc_Soc;
    interface PWMIO pwm0_io;
    interface PWMIO pwm1_io;
    interface PWMIO pwm2_io;
    interface PWMIO pwm3_io;
    interface PWMIO pwm4_io;
    interface PWMIO pwm5_io;
    interface Ifc_spi_io spi0_io;
    interface Ifc_spi_io spi1_io;
    interface Ifc_spi_io spi2_io;
    interface RS232 uart0_io;
    interface RS232 uart1_io;
    interface RS232 uart2_io;
    interface Ifc_sdram_out#(32) sdram_io;
		method I2C_out i2c_out;									//I2c IO interface
    (*always_ready, always_enabled*)
    interface GPIO#(32) gpio_io;						//GPIO IO interface
    interface AXI4_Lite_Master_IFC#(`paddr, 32, 0) xadc_master;
// ------------- JTAG IOs ----------------------//
    (*always_enabled,always_ready*)
    method Action wire_tms(Bit#(1) tms_in);
    (*always_enabled,always_ready*)
    method Action wire_tdi(Bit#(1) tdi_in);
    `ifdef bscan2e //---  Shift Register Control ---//
      (*always_enabled,always_ready*)
      method Action wire_capture(Bit#(1) capture_in);
      (*always_enabled,always_ready*)
      method Action wire_run_test(Bit#(1) run_test_in);
      (* always_enabled,always_ready*)
      method Action wire_sel (Bit#(1) sel_in);
      (* always_enabled,always_ready*)
      method Action wire_shift (Bit#(1) shift_in);
      (* always_enabled,always_ready*)
      method Action wire_update (Bit#(1) update_in);
    `endif
    (*always_enabled,always_ready*)
    method Bit#(1) wire_tdo;                                                            
    // ---------------------------------------------//
    (*always_ready, always_enabled*)
    method Action ext_interrupts(Bit#(2) i);
  endinterface
    
  (*synthesize*)
  module mkeclass(Ifc_eclass_axi4lite);
    let ifc();
    mkeclass_axi4lite#(`resetpc) _temp(ifc);
    return ifc;
  endmodule

  (*synthesize*)
  module mkSoc#(Clock tck_clk, Reset trst)(Ifc_Soc);
    let curr_clk<-exposeCurrentClock;
    let curr_reset<-exposeCurrentReset;

    let eclass <- mkeclass();

    AXI4_Lite_Fabric_IFC #(`Num_Masters, `Num_Slaves, `paddr, XLEN, USERSPACE) 
                                                        fabric <- mkAXI4_Lite_Fabric(fn_slave_map);
    Ifc_clint_axi4lite#(`paddr, XLEN, 0, 1, 16) clint <- mkclint_axi4lite();
    Ifc_debug_halt_loop_axi4lite#(`paddr, XLEN, USERSPACE) debug_memory <-
                                                                        mkdebug_halt_loop_axi4lite;
    Ifc_pwm_cluster pwm_cluster <- mkpwm_cluster;
    Ifc_uart_cluster uart_cluster <- mkuart_cluster;
    Ifc_spi_cluster spi_cluster <- mkspi_cluster;
    Ifc_mixed_cluster mixed_cluster <- mkmixed_cluster;
    Ifc_err_slave_axi4lite#(`paddr,XLEN,0) err_slave <- mkerr_slave_axi4lite;
//    Ifc_bram_axi4lite#(`paddr, XLEN, 0,  17) mem <- mkbram_axi4lite('h80000000, "code.mem", "code.mem","Memory");
	Ifc_sdram_wrap#(32, 32, 32, 32, 0, 32, 12, 3)
			sdram			<- mksdram_wrap(curr_clk, curr_reset);
    Wire#(Bit#(2)) wr_ext_interrutps <- mkWire();

    // -------------------------------- JTAG + Debugger Setup ---------------------------------- //
    // null crossing registers to transfer input signals from current_domain to tck domain
    CrossingReg#(Bit#(1)) tdi<-mkNullCrossingReg(tck_clk,0);                                        
    CrossingReg#(Bit#(1)) tms<-mkNullCrossingReg(tck_clk,0);
`ifdef bscan2e
    CrossingReg#(Bit#(1)) capture <- mkNullCrossingReg(tck_clk,0);
    CrossingReg#(Bit#(1)) run_test <- mkNullCrossingReg(tck_clk,0);
    CrossingReg#(Bit#(1)) sel <- mkNullCrossingReg(tck_clk,0);
    CrossingReg#(Bit#(1)) shift <- mkNullCrossingReg(tck_clk,0);
    CrossingReg#(Bit#(1)) update <- mkNullCrossingReg(tck_clk,0);   
`endif                                        
    // null crossing registers to transfer signals from tck to curr_clock domain.
    CrossingReg#(Bit#(1)) tdo<-mkNullCrossingReg(curr_clk,0,clocked_by tck_clk, reset_by trst);     
    // Tap Controller jtag_tap
    `ifdef bscan2e
      Ifc_xilinxdtm jtag_tap <- mkxilinxdtm(clocked_by tck_clk, reset_by trst);                                         
    `else
      Ifc_jtagdtm jtag_tap <- mkjtagdtm(clocked_by tck_clk, reset_by trst);            
    `endif
    Ifc_riscvDebug013 debug_module <- mkriscvDebug013();                                           

    // synFIFOs to transact data between JTAG and debug module                                                                                                    
    SyncFIFOIfc#(Bit#(41)) sync_request_to_dm <-mkSyncFIFOToCC(1,tck_clk,trst);                     
    SyncFIFOIfc#(Bit#(34)) sync_response_from_dm <-mkSyncFIFOFromCC(1,tck_clk);                     
                           
		Wire#(Bit#(8)) wr_external_interrupts <- mkDWire('d0);
             // ----------- Connect JTAG IOs through null-crossing registers ------ //
    rule assign_jtag_inputs;                                                                                
      jtag_tap.tms_i(tms.crossed);                                                                  
      jtag_tap.tdi_i(tdi.crossed);                                                                  
      `ifdef bscan2e
        jtag_tap.capture_i(capture.crossed);
      	jtag_tap.run_test_i(run_test.crossed);
      	jtag_tap.sel_i(sel.crossed);
      	jtag_tap.shift_i(shift.crossed);
      	jtag_tap.update_i(update.crossed);                                                                   
      `endif
    endrule                                                                                         
                                                                                                    
    rule assign_jtag_output;                                                                                 
      tdo <= jtag_tap.tdo(); //  Launched by a register clocked by inverted tck                     
    endrule                                                                                        
            // ------------------------------------------------------------------- //

    // capture jtag tap request into a syncfifo first.                                                                                                                  
    rule connect_tap_request_to_syncfifo;                                                           
      let x<-jtag_tap.request_to_dm;                                                                
      sync_request_to_dm.enq(zeroExtend(x));          
    endrule                                                                                         

    // send captured synced jtag tap request to the debug module
    rule read_synced_request_to_dm;                                                                 
      sync_request_to_dm.deq;                                                                       
      debug_module.dtm.putCommand.put(sync_request_to_dm.first);                                    
    endrule                                                                                         

    // collect debug response into a syncfifo
    rule connect_debug_response_to_syncfifo;                                                        
      let x <- debug_module.dtm.getResponse.get;                                                    
      sync_response_from_dm.enq(x);          
    endrule                                  

    // send synced debug response back to the JTAG
    rule read_synced_response_from_dm;                                                              
      sync_response_from_dm.deq;                                                                    
      jtag_tap.response_from_dm(sync_response_from_dm.first);                                       
    endrule                                                                                         

    rule connect_interrupt_lines;
      mixed_cluster.interrupts({wr_ext_interrutps, pwm_cluster.pwm0_sb_interrupt, 
                                                  pwm_cluster.pwm1_sb_interrupt, 
                                                  pwm_cluster.pwm2_sb_interrupt, 
                                                  pwm_cluster.pwm3_sb_interrupt, 
                                                  pwm_cluster.pwm4_sb_interrupt, 
                                                  pwm_cluster.pwm5_sb_interrupt});
    endrule
    
    mkConnection (eclass.debug_server ,debug_module.hart);
      
    // ------------------------------------------------------------------------------------------//
    mkConnection(debug_module.debug_master,fabric.v_from_masters[`Debug_master_num]);
   	mkConnection(eclass.master_d,	fabric.v_from_masters[`Mem_master_num]);
   	mkConnection(eclass.master_i, fabric.v_from_masters[`Fetch_master_num]);

  	mkConnection (fabric.v_to_slaves [`Clint_slave_num ],clint.slave);
    mkConnection (fabric.v_to_slaves [`Debug_slave_num ] , debug_memory.slave);
    mkConnection (fabric.v_to_slaves [`PWMCluster_slave_num], pwm_cluster.slave);
    mkConnection (fabric.v_to_slaves [`UARTCluster_slave_num], uart_cluster.slave);
    mkConnection (fabric.v_to_slaves [`SPICluster_slave_num], spi_cluster.slave);
    mkConnection (fabric.v_to_slaves [`MixedCluster_slave_num], mixed_cluster.slave);
    mkConnection (fabric.v_to_slaves [`Err_slave_num ] , err_slave.slave);
//	mkConnection (fabric.v_to_slaves [`Memory_slave_num], mem.slave);
    mkConnection (fabric.v_to_slaves [`Memory_cfg_slave_num], sdram.slave_cfg);
    mkConnection (fabric.v_to_slaves [`Memory_slave_num], sdram.slave_mem);

    // sideband connection
    mkConnection(eclass.sb_clint_msip,clint.sb_clint_msip);
    mkConnection(eclass.sb_clint_mtip,clint.sb_clint_mtip);
    mkConnection(eclass.sb_clint_mtime,clint.sb_clint_mtime);


    // ------------- JTAG IOs ----------------------//
    method Action wire_tms(Bit#(1)tms_in);                                                        
      tms <= tms_in;                                                                              
    endmethod                    
    method Action wire_tdi(Bit#(1)tdi_in);                                                        
      tdi <= tdi_in;                                                                              
    endmethod                                                                                     
    `ifdef bscan2e
      method Action wire_capture(Bit#(1) capture_in);
        capture <= capture_in;
      endmethod
      method Action wire_run_test(Bit#(1) run_test_in);
        run_test <= run_test_in;
      endmethod
      method Action wire_sel (Bit#(1) sel_in);
        sel <= sel_in;
      endmethod
      method Action wire_shift (Bit#(1) shift_in);
        shift <= shift_in;
      endmethod
      method Action wire_update (Bit#(1) update_in);
        update <= update_in;
      endmethod
    `endif
    method Bit#(1)wire_tdo;                                                                       
      return tdo.crossed();                                                                       
    endmethod
    // -------------------------------------------- //
    interface pwm0_io = pwm_cluster.pwm0_io;
    interface pwm1_io = pwm_cluster.pwm1_io;
    interface pwm2_io = pwm_cluster.pwm2_io;
    interface pwm3_io = pwm_cluster.pwm3_io;
    interface pwm4_io = pwm_cluster.pwm4_io;
    interface pwm5_io = pwm_cluster.pwm5_io;
    interface spi0_io = spi_cluster.spi0_io;
    interface spi1_io = spi_cluster.spi1_io;
    interface spi2_io = spi_cluster.spi2_io;
	interface sdram_io = sdram.io;
    interface uart0_io = uart_cluster.uart0_io;
    interface uart1_io = uart_cluster.uart1_io;
    interface uart2_io = uart_cluster.uart2_io;
		method  i2c_out = mixed_cluster.i2c_out;									//I2c IO interface
    interface gpio_io = mixed_cluster.gpio_io;						//GPIO IO interface
    interface xadc_master = mixed_cluster.xadc_master;
    method Action ext_interrupts(Bit#(2) i);
      wr_ext_interrutps <= i;
    endmethod

  endmodule: mkSoc
endpackage: Soc
