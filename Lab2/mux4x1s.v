module mux_4X1s (a, b, c, d, sel, out);
   input [3:0] a,b,c,d;
   input [1:0] sel;
   output [3:0] out;
	
	assign out = sel[1] ? (sel[0]?d:c):(sel[0]?b:a);
   
endmodule 