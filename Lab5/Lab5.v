module Lab5(addone, addten, reset, CLK, lsb, msb);
	input addone, addten, reset, CLK;
	output [6:0] lsb, msb;
	reg [6:0] current;
	wire [6:0] LSB, MSB, updated;
	wire cond1, cond2, state;
	
	initial
	begin
		current = 7'b0000000;
	end
	
	condition con(addone, addten, CLK, cond1, cond2);
	Increment inc(current, CLK, updated, cond1, cond2);
	reset re(reset, CLK, state);
	
	always@(*)begin
		current = updated;
		if(state)begin
			current = 7'b0000000;
		end
	end
	
	basenumber base(current, MSB, LSB);
	encoder disp1(LSB, lsb);
	encoder disp2(MSB, msb);
	
endmodule 