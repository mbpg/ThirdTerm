module tff(clk, reset, t_in, t_out);
	input clk, reset, t_in;
	output
	reg t_out;

	always @ (negedge clk)
	begin

		if(reset==1)
	
		begin
	
			t_out <= 0;
		end

		else

		begin

			t_out <= t_out;

		end

	end
endmodule

module circuit_tff(input clk, reset, x, output[2:0]t_out);
	
	wire clk1, clk2;
	tff tff0(clk, reset, x, clk1);
	buf bf1(t_out[0], clk1);
	tff tff1(clk1, reset, x, clk2);
	buf bf2(t_out[1], clk2);
	tff tff2(clk2, reset, x, t_out[2]);
endmodule



module testff;

	reg clk, reset, t_in;
	wire [2:0] t_out;
	circuit_tff ctff(clk, reset, t_in, t_out);


	initial begin 
		clk=0; reset=1; t_in=0;
		$monitor(" clk= %b resert = %b counter state = %b%b", clk, reset, t_out, clk);

		end
		initial begin
			forever #1 clk = ~clk;
		end
		initial fork 
			#1 reset = 0;
			#2 t_in = 1;
			#16 $finish;
		join
	endmodule 