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
package Tbstage0;
  import Vector::*;
  import FIFOF::*;
  import DReg::*;
  import SpecialFIFOs::*;
  import BRAMCore::*;
  import FIFO::*;

  import stage0::*;

  (*synthesize*)
  module mkTbstage0(Empty);
    Ifc_stage0 stage0 <- mkstage0;
    Reg#(Bit#(32)) rg_counter <- mkReg(0);
    FIFOF#(PIPE0) ff <- mkSizedFIFOF(2);
    RX#(PIPE0) rx <-mkRX;
    mkConnection(ff,stage0.tx_to_stage1);
    mkConnection(ff,rx.e);
    rule newline;
      $display("");
    endrule
    rule dummy_imem;
      let x<- stage0.request_to_imem.get;
      `logLevel( 0,$format("TB: Imem request: ",fshow(x)))
    endrule
    rule dummy_stage1;
      let x=rx.u.first;
      rx.u.deq;
      `logLevel( 0,$format("TB: Stage1 Input: ",fshow(x)))
    endrule
    rule train(rg_counter==258);
      let training=Training_data{pc:64'h1010,branch_address:64'h2000,state:3 
          `ifdef ras ,ras:False `endif } ;
      stage0.training(training);
      `logLevel( 0,$format("TB: Training: ",fshow(training)))
    endrule
    rule train2(rg_counter==259);
      let training=Training_data{pc:64'h2010,branch_address:64'h1000,state:2
        `ifdef ras ,ras:True `endif };
      stage0.training(training);
      `logLevel( 0,$format("TB: Training: ",fshow(training)))
    endrule
    rule flush_btb(rg_counter==278);
      stage0.flush('hff0, False, True);
    endrule

    rule update_epoch(rg_counter==278);
      stage0.update_eEpoch();
    endrule
    rule end_sim;
      if(rg_counter==300)
        $finish(0);
      else
        rg_counter<=rg_counter+1;
    endrule

  endmodule
endpackage

