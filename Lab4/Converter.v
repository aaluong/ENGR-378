module Converter(in, out);
	input [3:0] in;
	output reg [3:0] out;
	
	always @(*) begin
		if (in > 4'b1001) begin
			out = 4'b1001;
		end
		else begin
			out = in;
		end
	end
endmodule 