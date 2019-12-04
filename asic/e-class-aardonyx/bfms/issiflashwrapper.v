module issiflashwrapper(sclk, cs, si, so, wp, sio3, clk, rst);

input sclk;
input cs;
inout si;
inout so;
inout wp;
inout sio3;
input clk;
input rst;




IS25LP256D flash(   .SCLK(sclk), 
					.CS(cs), 
		    		.SI(si), 
		    		.SO(so), 
		    		.WP(wp), 
		    		.SIO3(sio3) );


endmodule


