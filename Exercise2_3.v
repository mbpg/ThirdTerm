`define pi 3.14
module exercise2_3;
	real A,B,AnsrRem;
	initial begin
		A = 4;
		B = 3;
		AnsrRem = (A**A*`pi)/B;
		$display("The volume of the cylinder: ", AnsrRem);
	end
endmodule