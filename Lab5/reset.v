module reset(in,CLK,out);
	input in, CLK;
	output reg out;
	reg [2:0] count;
	
	always @(posedge CLK)begin
		if(in)begin
			if(count==3'b000)begin
				count = 3'b001;
			end
		end
		else begin
			count = 3'b000;
		end
		if(count>3'b000)begin
			count = count + 1;
			if(count>3'b101)begin
				count = 3'b000;
				out = 1;
			end
		end
		else begin
			out = 0;
		end
	end
endmodule 