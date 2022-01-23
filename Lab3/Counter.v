module counter(CLK, reset, F);
	input CLK, reset;
	output [1:0] F;
	wire J, K, Q0, Q1;
	
	assign K=1'b1;
	assign J=1'b1;
	
	JK JK_1(J, K, Q0, CLK, reset);
	JK JK_2(Q0, Q0, Q1, CLK, reset);
	assign F = {Q1, Q0};
		
	
endmodule 