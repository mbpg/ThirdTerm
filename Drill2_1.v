//This Verilog test bench illustrates the different Verilog constants
module drill2_1;
	reg [7:0] a, b, c, d, e, f, g, h;
reg [9:0] j;
	
	initial begin
		a=5'O37;
			b=3'D4;
			c=7'hx;
			d=8 'h AF;
			e=10'b01;
			f=5'd10;
			g=32;
			h=4'd5;
			$write("Testing");
			j=3.6E2;
			$write(" %o %b %b %h %b",a,b,c,d,e);
			$write(" %d %d %d  %d",f,g,h,j);
		end
endmodule
