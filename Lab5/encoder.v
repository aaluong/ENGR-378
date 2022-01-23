module encoder(in, out);
	input [6:0] in;
	output reg [6:0] out;
	
	always@(*)begin
		if(in==7'b0000000)begin
			out=7'b1000000;
		end
		else if(in==7'b0000001)begin
			out=7'b1111001;
		end
		else if(in==7'b0000010)begin
			out=7'b0100100;
		end
		else if(in==7'b0000011)begin
			out=7'b0110000;
		end
		else if(in==7'b0000100)begin
			out=7'b0011001;
		end
		else if(in==7'b0000101)begin
			out=7'b0010010;
		end
		else if(in==7'b0000110)begin
			out=7'b0000010;
		end
		else if(in==7'b0000111)begin
			out=7'b1111000;
		end
		else if(in==7'b0001000)begin
			out=7'b0000000;
		end
		else if(in==7'b0001001)begin
			out=7'b0011000;
		end
		else begin
			out=7'b0000110; //E
		end
	end
endmodule 