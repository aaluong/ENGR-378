module Module3(a, b, cin, sum, cout);
   input [3:0] a, b;
   input cin;
   output [3:0] sum;
   output cout;
   FullAdder Add3(~a, b, cin, sum, cout);
endmodule 