module mux_4x1c (a, b, c, d, sel, out);
   input a, b, c, d;
   input [1:0] sel;
   output out;

   assign out = sel[1] ? (sel[0]?d:c):(sel[0]?b:a);
   
endmodule 