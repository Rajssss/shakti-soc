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
package bootrom;
	import Semi_FIFOF        :: *;
	import AXI4_Lite_Types   :: *;
	import AXI4_Lite_Fabric  :: *;
//  import Tilelink_lite_Types::*;
	import BUtils::*;
	import DReg :: * ;
  import GetPut::*;
  import device_common::*;

  `include "Logger.bsv"
  export mkbootrom_axi4lite;
  export Ifc_bootrom_axi4lite (..);

  interface UserInterface#(numeric type addr_width,  numeric type data_width,
                            numeric type index_size);
    method ActionValue#(Tuple2#(Bool,Bit#(data_width))) read_request
                                                          (Bit#(addr_width) addr, AccessSize size);
    method Action write_request (Tuple3#(Bit#(addr_width), Bit#(data_width),
                                                            Bit#(TDiv#(data_width, 8))) req);
    method ActionValue#(Bool) write_response;
  endinterface

  // to make is synthesizable replace addr_width with Physical Address width
  // data_width with data lane width
  module mkbootrom#(parameter Integer slave_base)(UserInterface#(addr_width, data_width, index_size))
    provisos(Add#(data_width, a, 64), // provisos ensures we support only up-to 64-bit data width.
             Mul#(8, a__, data_width), // data_width should always be multiple of 8. 16 and 32.
             Mul#(16, b__, data_width),
             Mul#(32, c__, data_width));

    let size = valueOf(TExp#(index_size));
    Integer byte_offset = valueOf(TDiv#(data_width, 32));
    Bit#(addr_width) base_address=fromInteger(slave_base);
  	// we create 2 32-bit BRAMs since the xilinx tool is easily able to map them to BRAM32BE cells
  	// which makes it easy to use data2mem for updating the bit file.

    // in case data_width is 32-bits, dmemMSB width becomes 0 and only dmemLSB is functional
    /*doc:reg: */
    Reg#(Bit#(data_width)) rg_boot_arr [size] ;
    for (Integer i = 0; i< size; i = i + 1) begin
      rg_boot_arr[i] <- mkReg(0);
    end

    // A write request to bootrom has no significance.
    method Action write_request (Tuple3#(Bit#(addr_width), Bit#(data_width),  Bit#(TDiv#(data_width, 8))) req);
    	`logLevel( bootrom, 0, $format("BootROM: Illegal Write operation on BootROM"))
  	endmethod

    // The write response will always be an error.
    method ActionValue#(Bool) write_response;
      return True;
    endmethod

    // capture a read_request and latch the address on a BRAM.
    method ActionValue#(Tuple2#(Bool,Bit#(data_width))) read_request
                                                          (Bit#(addr_width) addr, AccessSize access);

  	  Bit#(index_size) index_address=(addr-(base_address))[byte_offset+ valueOf(index_size) :
                                                                                  byte_offset+1];
      `logLevel( bootrom, 0, $format("BootROM: Recieved Read Request for Address: %h \
Index Address: %h b: %d", addr, index_address, byte_offset))
      return tuple2(False, rg_boot_arr[index_address]);
  	endmethod
  endmodule

  interface Ifc_bootrom_axi4lite#(numeric type addr_width, numeric type data_width,
                              numeric type user_width, numeric type index_size);
    interface AXI4_Lite_Slave_IFC#(addr_width, data_width, user_width) slave;
  endinterface


  module mkbootrom_axi4lite#(parameter Integer slave_base)(Ifc_bootrom_axi4lite#(addr_width,
                                                              data_width, user_width, index_width))
    provisos(Add#(data_width, a, 64),
             Mul#(8, a__, data_width),
             Mul#(16, b__, data_width),
             Mul#(32, c__, data_width));
    UserInterface#(addr_width, data_width, index_width) dut <- mkbootrom(slave_base);
	  AXI4_Lite_Slave_Xactor_IFC #(addr_width, data_width, user_width)  s_xactor <- mkAXI4_Lite_Slave_Xactor;
    Integer byte_offset = valueOf(TDiv#(data_width, 32));
    // If the request is single then simple send ERR. If it is a burst write request then change
    // state to Burst and do not send response.
    rule write_request_address_channel;
      let aw <- pop_o (s_xactor.o_wr_addr);
      let w  <- pop_o (s_xactor.o_wr_data);
	    let b = AXI4_Lite_Wr_Resp {bresp: AXI4_LITE_SLVERR, buser: aw.awuser};
	  	s_xactor.i_wr_resp.enq (b);
    endrule
    // read first request and send it to the dut. If it is a burst request then change state to
    // Burst. capture the request type and keep track of counter.
    rule read_request;
		  let ar<- pop_o(s_xactor.o_rd_addr);
      let {err, data0}<-dut.read_request(ar.araddr,unpack(truncate(ar.arsize)));
      AXI4_Lite_Rd_Data#(data_width, user_width) r = AXI4_Lite_Rd_Data {rresp: AXI4_LITE_OKAY, rdata: data0 ,
        ruser: 0};
      `logLevel( bootrom, 1, $format("BootROM : Responding Read Request with Data: %h ", data0))
      s_xactor.i_rd_data.enq(r);
    endrule
    interface slave = s_xactor.axi_side;
  endmodule
endpackage
