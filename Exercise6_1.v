module testBench;
	reg[7:0] A,B;
	wire [255:0] disp;
	
	checkCntr tb(disp,A,B);
	
	initial begin
	A=0; B=0;
	$display("\n Set Bits Comparator\n");
	$display("\t|      A     |     B       | Set Bits Comparison |");
	$monitor("\t|   %b |   %b  |        A&0sB        |",A,B,disp);
	#2 A=8'd64; B=8'd31;
	#2 A=8'd21; B=8'd129;
	#2 A=8'd224; B=8'd7;
	#2 A=8'd2; B=8'd7;
	#2 A=8'd9; B=8'd2;
	#2 $finish;
	end
endmodule

module checkCntr(disp,A,B);
	output reg [255:0] disp;
	input [7:0] A,B;
	reg [7:0] tmpA, tmpB;
	integer Acnt, Bcnt;
	wire gthan,lthan,eqls;
	
	always @(A,B) begin
		Acnt=0; Bcnt=0;
		tmpA=A; tmpB=B;
		repeat (8) begin
			Acnt = Acnt + tmpA[0];
			Bcnt = Bcnt +tmpB[0];
			tmpA = tmpA >> 1;
			tmpB = tmpB >> 1;
		end
		if(gthan) disp=">";
		else if(lthan) disp="<";
		else disp="=";
	end
	
	assign gthan = (Acnt > Bcnt);
	assign lthan = (Acnt < Bcnt);
	assign eqls = (Acnt == Bcnt);
endmodule
