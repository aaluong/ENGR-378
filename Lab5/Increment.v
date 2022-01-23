module Increment(current, CLK, out, cond1, cond2);
	input CLK, cond1, cond2;
	input [6:0] current;
	output reg[6:0] out;
	
	always @(posedge CLK)begin		
		if(cond1) begin
			out = current + 1;
		end
		else if(cond2) begin
			out = current + 10;
		end
		else begin
			out = current;
		end
		if(out >= 7'b1100011)begin
			out = 7'b1100011;
		end
	end
	
endmodule 