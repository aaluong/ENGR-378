module mux(s0, s1, s2, hex, binary, baseten, out);
	input s0, s1, s2;
	input [3:0] hex, binary, baseten;
	output reg [3:0] out;
	wire [2:0] sel;
	
	assign sel = {s2, s1, s0};
	
	always @(*)begin
		if(sel == 3'b001)begin
			out = hex;
		end
		else if(sel == 3'b010 || sel == 3'b011)begin
			out = binary;
		end
		else if (sel == 3'b100 || sel == 3'b110 || sel == 3'b101 || sel == 3'b111)begin
			out = baseten;
		end
		else begin
			out = 4'b0000;
		end
	end
endmodule 