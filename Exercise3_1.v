module exer3_1(x1,x2,x3,y2,y3,z1,z2,z3);
	input x1,x2,x3,y2,y3;
	output z1,z2,z3;

	buf (z1,x1);
	xnor (z2,x2,y2);
	nand (z3,x3,y3);
endmodule

module tbex3_1;
	reg x1,x2,x3,y2,y3;
	wire z1,z2,z3;
	
	exer3_1 tbex3_1(x1,x2,x3,y2,y3,z1,z2,z3);
	initial begin
	x1 = 0;
	x2 = 0; 
	y2 = 0;
	x3 = 0;
	y3 = 0;
	#100 $finish;
	end

	initial begin
	$display("Truth Table for buf");
	$display("X Output");	
	$monitor("%b %b", x1, z1);

	#2 x1 = 1;
	#2 x1 = 1;

	$display("Truth Table for xnor");
	$display("X Y Output");
	$monitor("%b %b %b", x2, y2, z2);

	#2 x2 = 0; y2 = 1;
	#2 x2 = 1; y2 = 0;
	#2 x2 = 1; y2 = 1;
	#2 x2 = 1; y2 = 1;

	$display("Truth Table for nand");
	$display("X Y Output");
	$monitor("%b %b %b",x3,y3,z3);

	#2 x3 = 0; y3 = 1;
	#2 x3 = 1; y3 = 0;
	#2 x3 = 1; y3 = 1;

	end
endmodule
