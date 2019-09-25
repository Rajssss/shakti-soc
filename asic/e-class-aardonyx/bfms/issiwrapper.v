module issiwrapper (dq, addr, ba, old_Clk, cke, cs_n, ras_n, cas_n, we_n, dqm);


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
    inout  [DQ_BITS - 1 : 0]   dq   ;

wire clk = ~old_Clk;
//wire clk = old_Clk;

IS42s32160#(.FILENAME("code.mem")) issi	(
			.Dq(dq),
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
