module type (sw1, sw2, sw3, out);
	input sw1, sw2, sw3;
	output reg[6:0] out;
	
	always @(*)begin
		if(sw3 == 1) begin
			out = {1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1}; //H
		end
		else if(sw2 == 1) begin
			out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}; //b
		end
		else if(sw1 == 1) begin
			out = {1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1}; //d
		end
		else begin
			out = {1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}; //E
		end
	end
	
endmodule 