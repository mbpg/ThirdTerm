module exercise3_3(A,B,C);
 input [1:0]A;
 input [1:0]B;
 output [3:0]C;

 wire w,x,y,z;

 and and1(w,A[0],B[1]);
 and and2(C[0],A[0],B[0]);
 and and3(x,A[1],B[0]);
 and and4(z,B[1],B[1]);

 Half_adder Ha1(C[1],y,x,z);
 Half_adder Ha2(C[2],C[3],y,z);
 endmodule

 module Half_adder(S,Ca,a,b);
 input a,b;
 output S,Ca;

 xor xor1(S,a,b);
 and and5(Ca,a,b);
 endmodule

 module exer3_3;
 wire [3:0]C;
 reg [1:0]A;
 reg [1:0]B;
 exercise3_3 ex3_3(A,B,C);

 initial begin
 B=2'b00; A=2'b00;
 $display("\t \t       A1A0*B1B0 = C3C2C1C0");
 $monitor($time,,"| %b  *  %b = %b",B,A,C);
 #1 B=2'b00;A=2'b01;
 #1 B=2'b00;A=2'b10;
 #1 B=2'b00;A=2'b11;

 #1 B=2'b01;A=2'b00;
 #1 B=2'b01;A=2'b01;
 #1 B=2'b01;A=2'b10;
 #1 B=2'b01;A=2'b11;

 #1 B=2'b10;A=2'b00;
 #1 B=2'b10;A=2'b01;
 #1 B=2'b10;A=2'b10;
 #1 B=2'b10;A=2'b11;

 #1 B=2'b11;A=2'b00;
 #1 B=2'b11;A=2'b01;
 #1 B=2'b11;A=2'b10;
 #1 B=2'b11;A=2'b11;

 #2 $finish;
 end
 endmodule
