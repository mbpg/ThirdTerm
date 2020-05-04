module exer3_2(w,x,y,z,o1,o2,o3,o4);
	input w,x,y,z;
	output o1,o2,o3,o4;
	wire wnot,xnot,ynot,znot;

	not (wnot,w),(xnot,x),(ynot,y),(znot,z);
	and (o1,wnot,xnot,ynot);
	xor (o2,x,y);
	assign o3 = y;
	assign o4 = znot;
endmodule

module tbez3_2;
	wire x1,x2,x3,x4;
	reg z1,z2,z3,z4;
	exer3_2 tbez3_2(z1,z2,z3,z4,x1,x2,x3,x4);
	
	initial begin
	z1 = 1'b0; z2 = 1'b0; z3 = 1'b0; z4 = 1'b0;
	#100 $finish;
end

	initial begin
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b0; z3 = 1'b0; z4 = 1'b1;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b0; z3 = 1'b1; z4 = 1'b0;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b0; z3 = 1'b1; z4 = 1'b1;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b1; z3 = 1'b0; z4 = 1'b0;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b1; z3 = 1'b0; z4 = 1'b1;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b1; z3 = 1'b1; z4 = 1'b0;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b0; z2 = 1'b1; z3 = 1'b1; z4 = 1'b1;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b1; z2 = 1'b0; z3 = 1'b0; z4 = 1'b0;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	#2 z1 = 1'b1; z2 = 1'b0; z3 = 1'b0; z4 = 1'b1;
	#2 $display(z1,z2,z3,z4," ",x1,x2,x3,x4);
	end
endmodule
