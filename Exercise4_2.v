primitive subtractorbinary(d, a1, a0, b1, b0);
    input a1, a0, b1, b0;
	output d;
	table
	0 0 0 0 : 0;
	0 0 0 1 : 1;
	0 0 1 0 : 1;
	0 0 1 1 : 1;
	0 1 0 0 : 0;
	0 1 0 1 : 0;
	0 1 1 0 : 1;
	0 1 1 1 : 1;
	1 0 0 0 : 0;
	1 0 0 1 : 1;
	1 0 1 0 : 0;
	1 0 1 1 : 1;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive subtractorbin(d,a1,a0,b1,b0);
    input a1,a0,b1,b0;
	output d;
	table
	0 0 0 0 : 0;
	0 0 0 1 : 0;
	0 0 1 0 : 1;
	0 0 1 1 : 1;
	0 1 0 0 : 0;
	0 1 0 1 : 0;
	0 1 1 0 : 0;
	0 1 1 1 : 1;
	1 0 0 0 : 1;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 1;
	1 1 0 1 : 1;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive binsubtractor(d,a1,a0,b1,b0);
	input a1, a0, b1, b0;
	output d;
	table
	0 0 0 0 : 0;
	0 0 0 1 : 1;
	0 0 1 0 : 0;
	0 0 1 1 : 1;
	0 1 0 0 : 1;
	0 1 0 1 : 0;
	0 1 1 0 : 1;
	0 1 1 1 : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 1;
	1 0 1 0 : 0;
	1 0 1 1 : 1;
	1 1 0 0 : 1;
	1 1 0 1 : 0;
	1 1 1 0 : 1;
	1 1 1 1 : 0;
	endtable
endprimitive

module test;
    reg a1, a0, b1, b0;
	wire [2:0] d;
	subtractorbinary tb(d[0],a1,a0,b1,b0);
	subtractorbin tb(d[1],a1,a0,b1,b0);
	binsubtractor tb(d[2],a1,a0,b1,b0);
	initial begin
	    #2 a1 = 0; a0 = 0; b1 = 0; b0 = 0;
		$display("  a1 a0 b1 b0 Sign d1 d0");
		$monitor("  %b  %b  %b  %b   %b   %b   %b", a1,a0,b1,b0,d[0],d[1],d[2]);
		#2 a1 = 0; a0 = 0;b1 = 0; b0 = 1;
		#2 a1 = 0; a0 = 0;b1 = 1; b0 = 0;
		#2 a1 = 0; a0 = 0;b1 = 1; b0 = 1;
		#2 a1 = 0; a0 = 1;b1 = 0; b0 = 0;
		#2 a1 = 0; a0 = 1;b1 = 0; b0 = 1;
		#2 a1 = 0; a0 = 1;b1 = 1; b0 = 0;
		#2 a1 = 0; a0 = 1;b1 = 1; b0 = 1;
		#2 a1 = 1; a0 = 0;b1 = 0; b0 = 0;
		#2 a1 = 1; a0 = 0;b1 = 0; b0 = 1;
		#2 a1 = 1; a0 = 0;b1 = 1; b0 = 0;
		#2 a1 = 1; a0 = 0;b1 = 1; b0 = 1;
		#2 a1 = 1; a0 = 1;b1 = 0; b0 = 0;
		#2 a1 = 1; a0 = 1;b1 = 0; b0 = 1;
		#2 a1 = 1; a0 = 1;b1 = 1; b0 = 0;
		#2 a1 = 1; a0 = 1;b1 = 1; b0 = 1;
		#100 $finish;
	end
endmodule
		