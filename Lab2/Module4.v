module Module4(a, b, cin, sum, cout);
   input [3:0] a, b;
   input cin;
   output [3:0] sum;
   output cout;
   FullAdder Add4(0, ~b, cin, sum, cout);
endmodule 