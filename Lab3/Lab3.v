module Lab3(D, G, J, K, Q_JK, Q_D, reset, CLK, F);
	input J, K, reset, CLK, D, G;
	output Q_JK, Q_D;
	output [1:0] F;
	
	DF DLatchTest(Q_D, D, G);
	JK JKtest(J, K, Q_JK, CLK, reset);
	counter Countertest(CLK, reset, F);
	
endmodule 