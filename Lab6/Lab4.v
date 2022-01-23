module Lab4(in, outlsb, outmsb, outtype, sw1, sw2, sw3);
	input [3:0] in;
	input sw1, sw2, sw3;
	output [6:0] outlsb, outmsb, outtype;
	wire [4:0] hex, fourbit, baseten1, baseten2, decode;
	wire b1, b2, b3;
	
	assign b1 = ~sw1;
	assign b2 = ~sw2;
	assign b3 = ~sw3;
	
	assign hex = in;
	Converter bit(in, fourbit);
	dec base10(in, baseten1, baseten2);
	
	mux lsb(b1, b2, b3, hex, fourbit, baseten1, decode);
	
	encoder LSB(outlsb[0], outlsb[1], outlsb[2], outlsb[3], outlsb[4], outlsb[5], outlsb[6], decode, 1'b1);
	encoder MSB(outmsb[0], outmsb[1], outmsb[2], outmsb[3], outmsb[4], outmsb[5], outmsb[6], baseten2, b3);
	type display(b1, b2, b3, outtype);
endmodule 