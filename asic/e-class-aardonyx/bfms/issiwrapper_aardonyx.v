module issiwrapper_aardonyx (dq_31,dq_30,dq_29,dq_28,dq_27,dq_26,dq_25,dq_24,dq_23,dq_22,dq_21,dq_20,dq_19,dq_18,dq_17,dq_16,dq_15,dq_14,dq_13,dq_12,dq_11,dq_10,dq_9,dq_8,dq_7,dq_6,dq_5,dq_4,dq_3,dq_2,dq_1,dq_0,addr, ba, old_Clk, cke, cs_n, ras_n, cas_n, we_n, dqm);


    parameter ADDR_BITS        =      13; // Set this parameter to control how many Address bits are used
    parameter ROW_BITS         =      13; // Set this parameter to control how many Row bits are used
    parameter DQ_BITS          =      32; // Set this parameter to control how many Data bits are used
    parameter DM_BITS          =       4; // Set this parameter to control how many DM bits are used
    parameter COL_BITS         =       9; // Set this parameter to control how many Column bits are used
    parameter BA_BITS          =       2; // Bank bits


    input                      old_Clk ;
    input                      cke  ;
    input  [ADDR_BITS - 1 : 0] addr ;
    input  [BA_BITS - 1 : 0]   ba   ;
    input                      cs_n ;
    input                      ras_n;
    input                      cas_n;
    input                      we_n ;
    input  [DM_BITS - 1 : 0]   dqm  ;
    inout     dq_0   ;
    inout     dq_1   ;
    inout     dq_2   ;
    inout     dq_3   ;
    inout     dq_4   ;
    inout     dq_5   ;
    inout     dq_6   ;
    inout     dq_7   ;
    inout     dq_8   ;
    inout     dq_9   ;
    inout     dq_10   ;
    inout     dq_11   ;
    inout     dq_12   ;
    inout     dq_13   ;
    inout     dq_14   ;
    inout     dq_15   ;
    inout     dq_16   ;
    inout     dq_17   ;
    inout     dq_18   ;
    inout     dq_19   ;
    inout     dq_20   ;
    inout     dq_21   ;
    inout     dq_22   ;
    inout     dq_23   ;
    inout     dq_24   ;
    inout     dq_25   ;
    inout     dq_26   ;
    inout     dq_27   ;
    inout     dq_28   ;
    inout     dq_29   ;
    inout     dq_30   ;
    inout     dq_31   ;

wire clk = ~old_Clk;
//wire clk = old_Clk;
assign data_inout = {dq_31,dq_30,dq_29,dq_28,dq_27,dq_26,dq_25,dq_24,dq_23,dq_22,dq_21,
  dq_20,dq_19,dq_18,dq_17,dq_16,dq_15,dq_14,dq_13,dq_12,dq_11,dq_10,dq_9,dq_8,dq_7,dq_6   
 ,dq_5,dq_4,dq_3,dq_2,dq_1,dq_0};

IS42s32160#(.FILENAME("code.mem")) issi	(
			.Dq(data_inout),
			.Addr(addr),
			.Ba(ba),
			.Clk(clk),
			.Cke(cke),
			.Cs_n(cs_n),
			.Ras_n(ras_n),
			.Cas_n(cas_n),
			.We_n(we_n),
			.Dqm(dqm) );

endmodule
