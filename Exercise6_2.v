module counter(output A,B,C, input clk);
	reg Ta, Tb, Tc;
	T_FF Q2(A,Ta,clk,1'b1);
	T_FF Q1(B,Tb,clk,1'b0);
	T_FF Q0(C,Tc,clk,1'b1);
	always @(clk) begin
	    Ta = (~B&C)|(A&C)|(~A&B&~C);
		Tb = A|~B|C;
		Tc = A|~B|~C;
	end
endmodule

module T_FF(output reg Q,input Tin, clk,startVal);
    wire T;
	initial Q = startVal;
	assign T=Q^Tin;
	always @(posedge clk) begin
	    Q=T;
	end
endmodule

module testbench;
    wire [2:0] Q;
	reg clk;
	counter testb(Q[2],Q[1],Q[0],clk);
	
	always #1 clk = ~clk;
	
	initial begin
	    clk = 0;
		$display("\nCounts with Sequence: 5,2,7,0,3,1,6");
		$display("\n    A   B   C   Clock");
		$monitor("    %b   %b   %b     %b", Q[2],Q[1],Q[0],clk);
		#20 $finish;
	end
endmodule