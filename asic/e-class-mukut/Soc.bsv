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
  import uart :: *;
  import spi :: *;
  import i2c :: *;
  import gpio :: *;
  import bootrom :: *;
  import debug_types::*;                                                                          
  import jtagdtm::*;                                                                              
  import riscvDebug013::*;                                                                        
  import debug_halt_loop::*;


  // package imports
  import Connectable:: *;
  import GetPut:: *;
  import Vector::*;

 
  function Bit#(TLog#(`Num_Slaves)) fn_slave_map (Bit#(`paddr) addr);
    Bit#(TLog#(`Num_Slaves)) slave_num = 0;
     if(addr >= `ClintBase && addr <= `ClintEnd)
      slave_num = `Clint_slave_num;
    else if(addr >= `DebugBase && addr <= `DebugEnd)
      slave_num = `Debug_slave_num;
    else if(addr >= `Spi0Base && addr <= `Spi0End)
      slave_num = `Spi0_slave_num;
    else if(addr >= `Spi1Base && addr <= `Spi1End)
      slave_num = `Spi1_slave_num;
    else if(addr >= `I2CBase && addr <= `I2CEnd)
      slave_num = `I2C_slave_num;
    else if(addr >= `UART0Base && addr <= `UART0End)
      slave_num = `Uart0_slave_num;
    else if(addr >= `BootromBase && addr <= `BootromEnd)
      slave_num = `Bootrom_slave_num;
    else if(addr >= `GPIOBase && addr <= `GPIOEnd)
      slave_num = `Gpio_slave_num;
    else
      slave_num = `Err_slave_num;
      
    return slave_num;
  endfunction:fn_slave_map

  (*always_enabled,always_ready*)

  interface Ifc_Soc;
    interface Ifc_spi_io spi0_io;
    interface Ifc_spi_io spi1_io;
    interface RS232 uart0_io;
		method I2C_out i2c_out;									//I2c IO interface
    (*always_ready, always_enabled*)
    interface GPIO#(16) gpio_io;						//GPIO IO interface
      // ------------- JTAG IOs ----------------------//
    (*always_enabled,always_ready*)                                                               
    method Action wire_tms(Bit#(1)tms_in);                                                        

    (*always_enabled,always_ready*)                                                               
    method Action wire_tdi(Bit#(1)tdi_in);                                                        

    (*always_enabled,always_ready*)                                                               
    method Bit#(1)wire_tdo;                                                                       
      // ---------------------------------------------//
    
  endinterface
  
  (*synthesize*)
  module mkuart(Ifc_uart_axi4lite#(32, 32, 0, 16));
	  let core_clock<-exposeCurrentClock;
  	let core_reset<-exposeCurrentReset;
    let ifc();
    mkuart_axi4lite#(core_clock, core_reset, 163) _temp(ifc);
    return ifc;
  endmodule
  
  (*synthesize*)
  module mkspi(Ifc_spi_controller#(32, 32, 0));
	  let core_clock<-exposeCurrentClock;
  	let core_reset<-exposeCurrentReset;
    let ifc();
    mkspi_controller#(core_clock, core_reset) _temp(ifc);
    return ifc;
  endmodule
  
  (*synthesize*)
  module mki2c (Ifc_i2c_axi4lite#(32, 32, 0));
	  let core_clock<-exposeCurrentClock;
  	let core_reset<-exposeCurrentReset;
    let ifc();
    mki2c_axi4lite#(core_clock, core_reset) _temp(ifc);
    return ifc;
  endmodule
  
  (*synthesize*)
  module mkgpio(Ifc_gpio_axi4lite#(32, 32, 0, 16));
    let ifc();
    mkgpio_axi4lite _temp(ifc);
    return ifc;
  endmodule
  
  (*synthesize*)
  module mkbootrom(Ifc_bootrom_axi4lite#(32, 32, 0, 8));
    let ifc();
    mkbootrom_axi4lite#(`BootromBase) _temp(ifc);
    return ifc;
  endmodule

  (*synthesize*)
  module mkSoc#(Bit#(`vaddr) resetpc, Clock tck_clk, Reset trst)(Ifc_Soc);

    let curr_clk<-exposeCurrentClock;
    let curr_reset<-exposeCurrentReset;

    Ifc_eclass_axi4lite eclass <- mkeclass_axi4lite(resetpc);

    AXI4_Lite_Fabric_IFC #(`Num_Masters, `Num_Slaves, `paddr, XLEN, USERSPACE) 
                                                        fabric <- mkAXI4_Lite_Fabric(fn_slave_map);
    //I2C module 
    let i2c <- mki2c;
    //CLINT
    Ifc_clint_axi4lite#(`paddr, XLEN, 0, 1, 16) clint <- mkclint_axi4lite();
    //DEBUG_MEMORY
    Ifc_debug_halt_loop_axi4lite#(`paddr, XLEN, USERSPACE) debug_memory <- mkdebug_halt_loop_axi4lite;
    //UART-0
    let uart0 <- mkuart;
    //SPI-2
    let spi0 <- mkspi;
    let spi1 <- mkspi;
    //GPIO 16
    let gpio <- mkgpio;

    Ifc_err_slave_axi4lite#(`paddr,XLEN,0) err_slave <- mkerr_slave_axi4lite;
    //BOOTROM
    let bootrom <- mkbootrom;


    // -------------------------------- JTAG + Debugger Setup ---------------------------------- //
    // null crossing registers to transfer input signals from current_domain to tck domain
    CrossingReg#(Bit#(1)) tdi<-mkNullCrossingReg(tck_clk,0);                                        
    CrossingReg#(Bit#(1)) tms<-mkNullCrossingReg(tck_clk,0);                                        
    // null crossing registers to transfer signals from tck to curr_clock domain.
    CrossingReg#(Bit#(1)) tdo<-mkNullCrossingReg(curr_clk,0,clocked_by tck_clk, reset_by trst);     
                                                                                                    
    Ifc_jtagdtm jtag_tap <- mkjtagdtm(clocked_by tck_clk, reset_by trst);                           
    Ifc_riscvDebug013 debug_module <- mkriscvDebug013();                                           

    // synFIFOs to transact data between JTAG and debug module                                                                                                    
    SyncFIFOIfc#(Bit#(41)) sync_request_to_dm <-mkSyncFIFOToCC(1,tck_clk,trst);                     
    SyncFIFOIfc#(Bit#(34)) sync_response_from_dm <-mkSyncFIFOFromCC(1,tck_clk);                     
                           
             // ----------- Connect JTAG IOs through null-crossing registers ------ //
    rule      assign_jtag_inputs;                                                                                
      jtag_tap.tms_i(tms.crossed);                                                                  
      jtag_tap.tdi_i(tdi.crossed);                                                                  
      jtag_tap.bs_chain_i(0);                                                                       
      jtag_tap.debug_tdi_i(0);                                                                      
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

    rule drive_gpio_to_plic;
      let interrupts<-gpio.sb_gpio_to_plic.get;
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

    
    mkConnection (eclass.debug_server ,debug_module.hart);
      
    // ------------------------------------------------------------------------------------------//
    mkConnection(debug_module.debug_master,fabric.v_from_masters[`Debug_master_num]);
   	mkConnection(eclass.master_d,	fabric.v_from_masters[`Mem_master_num]);
   	mkConnection(eclass.master_i, fabric.v_from_masters[`Fetch_master_num]);

  	mkConnection (fabric.v_to_slaves [`Clint_slave_num ],clint.slave);
    mkConnection (fabric.v_to_slaves [`Debug_slave_num ] ,debug_memory.slave);
    mkConnection (fabric.v_to_slaves [`Uart0_slave_num],uart0.slave);
    mkConnection (fabric.v_to_slaves [`Spi0_slave_num],spi0.slave);
    mkConnection (fabric.v_to_slaves [`Spi1_slave_num],spi1.slave);
    mkConnection (fabric.v_to_slaves [`I2C_slave_num],i2c.slave);
    mkConnection (fabric.v_to_slaves [`Gpio_slave_num],gpio.slave);
    mkConnection (fabric.v_to_slaves [`Bootrom_slave_num],bootrom.slave);
    mkConnection (fabric.v_to_slaves [`Err_slave_num ] ,err_slave.slave);

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

    method Bit#(1)wire_tdo;                                                                       
      return tdo.crossed();                                                                       
    endmethod
    interface spi0_io = spi0.io;
    interface spi1_io = spi1.io;
    interface uart0_io = uart0.io;
		method  i2c_out = i2c.io;									//I2c IO interface
    interface gpio_io = gpio.io;						//GPIO IO interface


  endmodule: mkSoc
endpackage: Soc
