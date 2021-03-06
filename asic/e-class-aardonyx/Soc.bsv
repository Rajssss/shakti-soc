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
  import i2c :: *;
  import gpio :: *;
  import qspi :: *;
  import debug_types::*;
  import jtagdtm::*;
  import riscvDebug013::*;
  import debug_halt_loop::*;
  import pinmux::*;
  import pinmux_axi4lite :: * ;
  import bootrom :: * ;
`ifdef fpga_arty
  import bram :: * ;
`else
  import sdram_axi4_lite :: *;
`endif

  // package imports
  import Connectable:: *;
  import GetPut:: *;
  import Vector::*;


  function Bit#(TLog#(`Num_Slaves)) fn_slave_map (Bit#(`paddr) addr);
    Bit#(TLog#(`Num_Slaves)) slave_num = 0;
    if(addr >= `MemoryBase && addr<= `MemoryEnd)
      slave_num = `Memory_slave_num;
  `ifndef fpga_arty
    else if( addr >= `SDRAMCfgBase && addr <= `SDRAMCfgEnd )
      slave_num = `Memory_cfg_slave_num;
  `endif
    else if(addr >= `ClintBase && addr <= `ClintEnd)
      slave_num = `Clint_slave_num;
    else if(addr >= `DebugBase && addr <= `DebugEnd)
      slave_num = `Debug_slave_num;
    else if(addr >= `QSPI0Base && addr <= `QSPI0End)
      slave_num = `QSPI_slave_num;
    else if(addr >= `QSPI0MemBase && addr <= `QSPI0MemEnd)
      slave_num = `QSPI_slave_num;
    else if(addr >= `PWMClusterBase && addr <= `PWMClusterEnd)
      slave_num = `PWMCluster_slave_num;
    else if(addr >= `UARTClusterBase && addr <= `UARTClusterEnd)
      slave_num = `UARTCluster_slave_num;
    else if(addr >= `SPIClusterBase && addr <= `SPIClusterEnd)
      slave_num = `SPICluster_slave_num;
    else if(addr >= `MixedClusterBase && addr <= `MixedClusterEnd)
      slave_num = `MixedCluster_slave_num;
    else if(addr >= `PLICBase && addr <= `PLICEnd)
      slave_num = `MixedCluster_slave_num;
    else
      slave_num = `Err_slave_num;

    return slave_num;
  endfunction:fn_slave_map

  (*synthesize*)
  module mkbootrom(Ifc_bootrom_axi4lite#(32, 32, 0, 8));
    let ifc();
    mkbootrom_axi4lite#(`BootromBase) _temp(ifc);
    return ifc;
  endmodule

  (*synthesize*)
  module mkqspi(Ifc_qspi_axi4lite#(`paddr,XLEN,0));
    let curr_clk <- exposeCurrentClock;
    let curr_reset <- exposeCurrentReset;
    let ifc();
    mkqspi_axi4lite#(curr_clk, curr_reset) _temp(ifc);
    return ifc;
  endmodule

  interface Ifc_Soc;
    interface Ifc_spi_io spi0_io;
    interface Ifc_spi_io spi1_io;
    interface RS232 uart0_io;
  	method I2C_out i2c0_out;									//I2c IO interface
  	method I2C_out i2c1_out;									//I2c IO interface
    (*always_ready, always_enabled*)
    interface QSPI_out qspi_io;
    interface IOCellSide iocell_io;
      // ------------- JTAG IOs ----------------------//
    (*always_enabled,always_ready*)
    method Action wire_tms(Bit#(1)tms_in);

    (*always_enabled,always_ready*)
    method Action wire_tdi(Bit#(1)tdi_in);

    (*always_enabled,always_ready*)
    method Bit#(1)wire_tdo;
    (*always_enabled,always_ready*)
    method Action  gpio_4(Bit#(1) in);
    (*always_enabled,always_ready*)
    method Action  gpio_7(Bit#(1) in);
    (*always_enabled,always_ready*)
    method Action  gpio_8(Bit#(1) in);
    (*always_enabled,always_ready*)
    method Action  gpio_14(Bit#(1) in);
    (*always_enabled,always_ready*)
    method Action  gpio_15(Bit#(1) in);

    (*always_enabled,always_ready*)
    method Bit#(1)gpio_4_out;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_7_out;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_8_out;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_14_out;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_15_out;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_4_outen;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_7_outen;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_8_outen;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_14_outen;
    (*always_enabled,always_ready*)
    method Bit#(1)gpio_15_outen;
      // ---------------------------------------------//
  `ifndef fpga_arty
    (*always_ready, always_enabled*)
    interface Ifc_sdram_out#(32) sdram_io;
  `endif
    interface AXI4_Lite_Master_IFC#(`paddr, 32, 0) bootrom_master;
  `ifdef rtldump
    interface Get#(DumpType) io_dump;
  `endif
  endinterface

  (*synthesize*)
  module mkSoc#(Bit#(`vaddr) resetpc, Clock tck_clk, Reset trst)(Ifc_Soc);
    let curr_clk<-exposeCurrentClock;
    let curr_reset<-exposeCurrentReset;

    Ifc_eclass_axi4lite eclass <- mkeclass_axi4lite(resetpc);

    AXI4_Lite_Fabric_IFC #(`Num_Masters, `Num_Slaves, `paddr, XLEN, USERSPACE)
                                                        fabric <- mkAXI4_Lite_Fabric(fn_slave_map);
    Ifc_clint_axi4lite#(`paddr, XLEN, 0, 1, 16) clint <- mkclint_axi4lite();
    Ifc_debug_halt_loop_axi4lite#(`paddr, XLEN, USERSPACE) debug_memory <-
                                                                        mkdebug_halt_loop_axi4lite;
    let qspi <- mkqspi();
    Ifc_pwm_cluster pwm_cluster <- mkpwm_cluster;
    Ifc_uart_cluster uart_cluster <- mkuart_cluster;
    Ifc_spi_cluster spi_cluster <- mkspi_cluster;
    Ifc_mixed_cluster mixed_cluster <- mkmixed_cluster;
    Ifc_err_slave_axi4lite#(`paddr,XLEN,0) err_slave <- mkerr_slave_axi4lite;
  `ifdef fpga_arty
    Ifc_bram_axi4lite#(`paddr, XLEN, 0, 19) bram <- mkbram_axi4lite(`MemoryBase,"code.mem","MainMEM");
  `else
	  Ifc_sdram_wrap#(`paddr,XLEN,`paddr,XLEN,0,32,12,3) sdram <- mksdram_wrap ;
	`endif

    Wire#(Bit#(1)) wr_gpio4_in <- mkDWire(0);
    Wire#(Bit#(1)) wr_gpio7_in <- mkDWire(0);
    Wire#(Bit#(1)) wr_gpio8_in <- mkDWire(0);
    Wire#(Bit#(1)) wr_gpio14_in <- mkDWire(0);
    Wire#(Bit#(1)) wr_gpio15_in <- mkDWire(0);
    // -------------------------------- JTAG + Debugger Setup ---------------------------------- //
    // null crossing registers to transfer input signals from current_domain to tck domain
    CrossingReg#(Bit#(1)) tdi<-mkNullCrossingRegA(tck_clk,0);
    CrossingReg#(Bit#(1)) tms<-mkNullCrossingRegA(tck_clk,0);
    // null crossing registers to transfer signals from tck to curr_clock domain.
    CrossingReg#(Bit#(1)) tdo<-mkNullCrossingRegA(curr_clk,0,clocked_by tck_clk, reset_by trst);

    Ifc_jtagdtm jtag_tap <- mkjtagdtm(clocked_by tck_clk, reset_by trst);
    Ifc_riscvDebug013 debug_module <- mkriscvDebug013();

    // synFIFOs to transact data between JTAG and debug module
    SyncFIFOIfc#(Bit#(41)) sync_request_to_dm <-mkSyncFIFOToCC(1,tck_clk,trst);
    SyncFIFOIfc#(Bit#(34)) sync_response_from_dm <-mkSyncFIFOFromCC(1,tck_clk);

		Wire#(Bit#(8)) wr_external_interrupts <- mkDWire('d0);
             // ----------- Connect JTAG IOs through null-crossing registers ------ //
    rule assign_jtag_inputs;
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

    // TODO qspi interrupts
    rule connect_interrupt_lines;
      mixed_cluster.interrupts({uart_cluster.uart_interrupts,
																pwm_cluster.pwm0_sb_interrupt,
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
  `ifdef fpga_arty
    mkConnection (fabric.v_to_slaves [`Memory_slave_num], bram.slave);
  `else
  	mkConnection (fabric.v_to_slaves [`Memory_slave_num], sdram.slave_mem);
  	mkConnection (fabric.v_to_slaves [`Memory_cfg_slave_num], sdram.slave_cfg);
  `endif
    mkConnection (fabric.v_to_slaves [`QSPI_slave_num ], qspi.slave);
    mkConnection (fabric.v_to_slaves [`Debug_slave_num ] , debug_memory.slave);
    mkConnection (fabric.v_to_slaves [`PWMCluster_slave_num], pwm_cluster.slave);
    mkConnection (fabric.v_to_slaves [`UARTCluster_slave_num], uart_cluster.slave);
    mkConnection (fabric.v_to_slaves [`SPICluster_slave_num], spi_cluster.slave);
    mkConnection (fabric.v_to_slaves [`MixedCluster_slave_num], mixed_cluster.slave);
    mkConnection (fabric.v_to_slaves [`Err_slave_num ] , err_slave.slave);

    // sideband connection
    mkConnection(eclass.sb_clint_msip,clint.sb_clint_msip);
    mkConnection(eclass.sb_clint_mtip,clint.sb_clint_mtip);
    mkConnection(eclass.sb_clint_mtime,clint.sb_clint_mtime);
    rule connect_ext_plic_interrupt;
      eclass.sb_ext_interrupt.put(mixed_cluster.sb_ext_interrupt);
    endrule

    rule connect_pinmux_peripheral_output_lines;
      mixed_cluster.pinmuxtop_peripheral_side.pwm0.out.put(pwm_cluster.pwm0_io.pwm_o);
      mixed_cluster.pinmuxtop_peripheral_side.pwm1.out.put(pwm_cluster.pwm1_io.pwm_o);
      mixed_cluster.pinmuxtop_peripheral_side.pwm2.out.put(pwm_cluster.pwm2_io.pwm_o);
      mixed_cluster.pinmuxtop_peripheral_side.pwm3.out.put(pwm_cluster.pwm3_io.pwm_o);
      mixed_cluster.pinmuxtop_peripheral_side.pwm4.out.put(pwm_cluster.pwm4_io.pwm_o);
      mixed_cluster.pinmuxtop_peripheral_side.pwm5.out.put(pwm_cluster.pwm5_io.pwm_o);

		  mixed_cluster.pinmuxtop_peripheral_side.gpioa.out.put(
						{ mixed_cluster.gpio_io.gpio_out[13],
						  mixed_cluster.gpio_io.gpio_out[12],
						  mixed_cluster.gpio_io.gpio_out[11],
						  mixed_cluster.gpio_io.gpio_out[10],
						  mixed_cluster.gpio_io.gpio_out[9],
						  mixed_cluster.gpio_io.gpio_out[6],
						  mixed_cluster.gpio_io.gpio_out[5],
						  mixed_cluster.gpio_io.gpio_out[3],
						  mixed_cluster.gpio_io.gpio_out[2],
						  mixed_cluster.gpio_io.gpio_out[1],
    					mixed_cluster.gpio_io.gpio_out[0]} );
		  mixed_cluster.pinmuxtop_peripheral_side.gpioa.out_en.put(
						{ mixed_cluster.gpio_io.gpio_out_en[13],
						  mixed_cluster.gpio_io.gpio_out_en[12],
						  mixed_cluster.gpio_io.gpio_out_en[11],
						  mixed_cluster.gpio_io.gpio_out_en[10],
						  mixed_cluster.gpio_io.gpio_out_en[9],
						  mixed_cluster.gpio_io.gpio_out_en[6],
						  mixed_cluster.gpio_io.gpio_out_en[5],
						  mixed_cluster.gpio_io.gpio_out_en[3],
						  mixed_cluster.gpio_io.gpio_out_en[2],
						  mixed_cluster.gpio_io.gpio_out_en[1],
						  mixed_cluster.gpio_io.gpio_out_en[0]} );

		   mixed_cluster.pinmuxtop_peripheral_side.mspi.clk.put(spi_cluster.spi2_io.sclk);
		   mixed_cluster.pinmuxtop_peripheral_side.mspi.nss.put(spi_cluster.spi2_io.nss);
		   mixed_cluster.pinmuxtop_peripheral_side.mspi.mosi.put(spi_cluster.spi2_io.mosi);

		   mixed_cluster.pinmuxtop_peripheral_side.uart1.tx.put(uart_cluster.uart1_io.sout);
		   mixed_cluster.pinmuxtop_peripheral_side.uart2.tx.put(uart_cluster.uart2_io.sout);
    endrule

    rule connect_pinmux_peripheral_input_lines;
		  let pinmux_gpio_in <- (mixed_cluster.pinmuxtop_peripheral_side.gpioa.in.get);
      let gpio_in_combined = unpack({
			  wr_gpio15_in,
			  wr_gpio14_in,
			  pinmux_gpio_in[10],
			  pinmux_gpio_in[9],
			  pinmux_gpio_in[8],
			  pinmux_gpio_in[7],
			  pinmux_gpio_in[6],
			  wr_gpio8_in,
			  wr_gpio7_in,
			  pinmux_gpio_in[5],
			  pinmux_gpio_in[4],
			  wr_gpio4_in,
			  pinmux_gpio_in[3],
			  pinmux_gpio_in[2],
			  pinmux_gpio_in[1],
			  pinmux_gpio_in[0]	});
		   mixed_cluster.gpio_io.gpio_in(gpio_in_combined);

		   let pinmux_spi2_miso <- mixed_cluster.pinmuxtop_peripheral_side.mspi.miso.get;
		   spi_cluster.spi2_io.miso(pinmux_spi2_miso);

		   let pinmux_uart1_rx <- (mixed_cluster.pinmuxtop_peripheral_side.uart1.rx.get);
		   uart_cluster.uart1_io.sin(pinmux_uart1_rx);
		   let pinmux_uart2_rx <- (mixed_cluster.pinmuxtop_peripheral_side.uart2.rx.get);
		   uart_cluster.uart2_io.sin(pinmux_uart2_rx);
    endrule

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

    method Action  gpio_4(Bit#(1) in);
         wr_gpio4_in <= in;
    endmethod
    method Action  gpio_7(Bit#(1) in);
         wr_gpio7_in <= in;
    endmethod
    method Action  gpio_8(Bit#(1) in);
         wr_gpio8_in <= in;
    endmethod
    method Action  gpio_14(Bit#(1) in);
         wr_gpio14_in <= in;
    endmethod
    method Action  gpio_15(Bit#(1) in);
         wr_gpio15_in <= in;
    endmethod

    method Bit#(1)gpio_4_out = mixed_cluster.gpio_io.gpio_out[4];
    method Bit#(1)gpio_7_out = mixed_cluster.gpio_io.gpio_out[7];
    method Bit#(1)gpio_8_out = mixed_cluster.gpio_io.gpio_out[8];
    method Bit#(1)gpio_14_out = mixed_cluster.gpio_io.gpio_out[14];
    method Bit#(1)gpio_15_out = mixed_cluster.gpio_io.gpio_out[15];

    method gpio_4_outen = mixed_cluster.gpio_io.gpio_out_en[4];
    method gpio_7_outen = mixed_cluster.gpio_io.gpio_out_en[7];
    method gpio_8_outen = mixed_cluster.gpio_io.gpio_out_en[8];
    method gpio_14_outen = mixed_cluster.gpio_io.gpio_out_en[14];
    method gpio_15_outen = mixed_cluster.gpio_io.gpio_out_en[15];

    interface spi0_io = spi_cluster.spi0_io;
    interface spi1_io = spi_cluster.spi1_io;
    interface uart0_io = uart_cluster.uart0_io;
		method  i2c0_out = mixed_cluster.i2c0_out;									//I2c IO interface
		method  i2c1_out = mixed_cluster.i2c1_out;									//I2c IO interface
    interface qspi_io = qspi.io;
    interface iocell_io = mixed_cluster.pinmuxtop_iocell_side;

  `ifndef fpga_arty
    interface sdram_io = sdram.io;
  `endif
    interface bootrom_master = mixed_cluster.bootrom_master;
  `ifdef rtldump
    interface io_dump = eclass.io_dump;
  `endif

  endmodule: mkSoc
endpackage: Soc
