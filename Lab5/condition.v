module condition(one, ten, CLK, cond1, cond2);
	input one, ten, CLK;
	output cond1, cond2;
	wire oneone, twoone, tenone, tentwo;
	
	DFlip Oneone(one, CLK, oneone);
	DFlip Onetwo(oneone, CLK, twoone);
	assign cond1 = twoone & ~oneone;
	
	DFlip Tenone(ten, CLK, tenone);
	DFlip Tentwo(tenone, CLK, tentwo);
	assign cond2 = tenone & ~tentwo;
endmodule 