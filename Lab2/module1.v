module module1(a, b, cin, sum, cout);
	input [3:0] a, b;
	input cin;
	output [3:0] sum;
	output cout;
	FullAdder Add1(a, b, cin, sum, cout);
endmodule 