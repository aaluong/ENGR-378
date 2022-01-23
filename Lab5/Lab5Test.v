module Lab5Test();
   reg addone, addten, reset, CLK;
   wire [6:0] lsb, msb;
   parameter time_out = 100;

   initial $monitor (addone, addten, reset, CLK, msb, lsb);
   always 
		begin
			if (CLK ==1)
				#1 CLK=0;
			else
				#1 CLK=1;
		end
	always 
		begin
			#0 reset=1;
			#5 reset=0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=0; addten=1;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 addone=1; addten=0;
			#5 addone = 0; addten = 0;
			#5 reset = 1;
			#5 reset = 0;
			#10 reset = 1;
			#10 reset = 0;
			#10 reset = 0;
		end
		Lab5 test (addone, addten, reset, CLK, lsb, msb);
endmodule
