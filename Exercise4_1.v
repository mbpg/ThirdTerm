primitive mux1(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 1;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux2(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 1;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux3(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 1;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux4(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 1;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux5(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 1;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux6(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 1;
	1 1 1 0 : 0;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux7(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 1;
	1 1 1 1 : 0;
	endtable
endprimitive

primitive mux8(x,y,a,b,c);
	input y,a,b,c;
	output x;
	table
	// y a b c : x
	0 ? ? ? : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 0;
	1 0 1 1 : 0;
	1 1 0 0 : 0;
	1 1 0 1 : 0;
	1 1 1 0 : 0;
	1 1 1 1 : 1;
	endtable
endprimitive

	module test;
	reg y,a,b,c;
	wire [7:0] x;
	mux1 tb(x[0],y,a,b,c);
	mux2 tb(x[1],y,a,b,c);
	mux3 tb(x[2],y,a,b,c);
	mux4 tb(x[3],y,a,b,c);
	mux5 tb(x[4],y,a,b,c);
	mux6 tb(x[5],y,a,b,c);
	mux7 tb(x[6],y,a,b,c);
	mux8 tb(x[7],y,a,b,c);
	
initial begin
	#2 y = 0; a = 0; b =0; c = 0;
	$display(" D0  D1  D2  D3  D4  D5  D6  D7  A   B   C   F");
	$monitor("  %b   %b   %b   %b  %b   %b   %b   %b | %b   %b   %b   %b", x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], a, b, c, y);
	#2 y = 0; a = 0; b = 0; c = 1;
	#2 y = 0; a = 0; b = 1; c = 0;
	#2 y = 0; a = 0; b = 1; c = 1;
	#2 y = 0; a = 1; b = 0; c = 0;
	#2 y = 0; a = 1; b = 0; c = 1;
	#2 y = 0; a = 1; b = 1; c = 0;
	#2 y = 0; a = 1; b = 1; c = 1;
	#2 y = 1; a = 0; b = 0; c = 0;
	#2 y = 1; a = 0; b = 0; c = 1;
	#2 y = 1; a = 0; b = 1; c = 0;
	#2 y = 1; a = 0; b = 1; c = 1;
	#2 y = 1; a = 1; b = 0; c = 0;
	#2 y = 1; a = 1; b = 0; c = 1;
	#2 y = 1; a = 1; b = 1; c = 0;
	#2 y = 1; a = 1; b = 1; c = 1;
	#100 $finish;
	end
endmodule