`timescale 1s / 100 ns
	`include "drill1_2.v"

module testbench;
	reg	a,b,borrowIn;
	wire	diff, borrowOut;
	full_subtract		fs(diff,borrowOut,a,b,borrowIn);

	initial begin
		a = 1'b1;
		b = 1'b1;
		borrowIn = 1'b0;
		#10 a = 1'b1;
		#10 a = 1'b0; b = 1'b1;
		#10 a = 1'b1; b = 1'b0;
		#10 borrowIn = 1'b1;
		end
initial begin
		$monitor("%b %b %b %b %b %d",a,b,borrowIn,diff,borrowOut,$time);
	#10 $finish;
	end
endmodule