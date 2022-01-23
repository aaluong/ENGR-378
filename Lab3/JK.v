module JK(J, K, Q, CLK, reset);
	input J, K, CLK, reset;
	output reg Q;

	always @(posedge CLK) begin
			if (reset == 1)begin
				Q <= 0;
			end
			else if(J == 1'b0 && K == 1'b0)begin
				Q <= Q;
			end
			else if (J == 1'b0 && K == 1'b1)begin
				Q <= 1'b0;
			end
			else if (J == 1'b1 && K == 1'b0)begin
				Q <= 1'b1;
			end
			else if (J == 1'b1 && K == 1'b1)begin
				Q <= ~Q;	
			end
		end
endmodule 