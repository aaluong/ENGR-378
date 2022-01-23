module dec (in, out1, out2);
	input [3:0] in;
	output [3:0] out1, out2;
	reg [3:0] ten = 4'b1010;
	reg [3:0] lsb, msb;
	
	always @(*) begin
		if (in < 4'b1010) begin
			lsb = in;
			msb = 4'b0000;
		end
		else begin
			lsb = in - ten;
			msb = 4'b0001;
		end
	end
	
	Converter S0(lsb, out1);
	assign out2 = msb;
endmodule 