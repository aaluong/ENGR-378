module Lab2Test();
	reg [3:0] A, B; 
   reg Cin, s0, s1;
	wire [3:0] Sum; 
   wire Cout;
	parameter time_out = 100;
	
	initial $monitor (A, B, Cin, s1, s0, Sum, Cout);
	always
	begin
		#10 s1=0; s0=0; Cin=0; A=4'b1001; B=4'b0011;
		#10 s1=0; s0=1; Cin=0; A=4'b1001; B=4'b0011;
		#10 s1=1; s0=0; Cin=0; A=4'b1001; B=4'b0011;
		#10 s1=1; s0=1; Cin=0; A=4'b1001; B=4'b0011;
		#10 s1=0; s0=0; Cin=1; A=4'b1001; B=4'b0011;
		#10 s1=0; s0=1; Cin=1; A=4'b1001; B=4'b0011;
		#10 s1=1; s0=0; Cin=1; A=4'b1001; B=4'b0011;
		#10 s1=1; s0=1; Cin=1; A=4'b1001; B=4'b0011;

	end
	Lab2 test(A, B, Cin, s1, s0, Sum, Cout);
	
endmodule 