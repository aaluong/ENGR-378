module Lab3Test();
	reg D, G, J, K, reset, CLK;
	wire [1:0] F;
	wire Q_JK, Q_D;
	parameter time_out = 100;
	
	initial $monitor (D, G, J, K, Q_JK, Q_D, reset, CLK, F);
	always 
	begin
		#0 #5 G=0; D=0;CLK=0;J=0;K=0;reset=1;
		#10 G=1; D=0;
		#5 G=0;
		#5 G=1; D=1;
		#5 G=0; D=0;
		#5 G=0; D=1;
		
		#5 reset=0;
		#5 CLK=0; J=0; K=0;
		#5 CLK=0; J=0; K=1;
		#5 CLK=0; J=1; K=0;
		#5 CLK=0; J=1; K=1;
		#5 CLK=1; J=0; K=0;
		#5 CLK=0;
		#5 CLK=1; J=0; K=1;
		#5 CLK=0;
		#5 CLK=1; J=1; K=0;
		#5 CLK=0;
		#5 CLK=1; J=1; K=1;
		
		#5 CLK=0; reset=0;
		#5 CLK=1;
		#5 CLK=0;
		#5 CLK=1;
		#5 CLK=0;
		#5 CLK=1;
		#5 CLK=0;
		#5 CLK=1;
		#5 CLK=0;
		#5 CLK=1;
		#5 CLK=0;
		#5 CLK=1; reset=1;

	end
	Lab3 test(D,G,J,K,Q_JK,Q_D,reset,CLK,F);
		
endmodule 