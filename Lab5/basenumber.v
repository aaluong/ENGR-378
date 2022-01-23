module basenumber(in, msbout, lsbout);
	input [6:0] in;
	output reg[6:0] msbout, lsbout;
	
	always @(*)begin
		msbout = in/10;
		lsbout = in%10;
	end
endmodule 