module Lab4Test();
	reg sw1, sw2, sw3;
	reg [3:0] in;
	wire [6:0] outlsb, outmsb, outtype;
	parameter time_out = 100;
	
	initial $monitor (in, sw1, sw2, sw3, outtype, outmsb, outlsb);
	always
	begin
		#0 in = 4'b0000; sw1 = 1; sw2 = 1; sw3 = 1;
		#5 in = 4'b1001; sw1 = 0;
		#5 sw1 = 1; sw2 = 0;
		#5 sw2 = 1; sw3 = 0;
		#5 sw1 = 0;
		#5 sw2 = 0;
		#5 sw3 = 1;
		#5 sw2 = 1;
		#5 sw1 = 1;
		#5 in = 4'b1111; sw1 = 0;
		#5 sw1 = 1; sw2 = 0;
		#5 sw2 = 1; sw3 = 0;
		#5 sw3 = 0;
	end
	Lab4 test(in, outlsb, outmsb, outtype, sw1, sw2, sw3);

endmodule 