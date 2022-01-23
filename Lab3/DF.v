module DF (Q, D, clk);

input D;
input clk;

output reg Q;

always @ (posedge clk)
begin
	if (D == 1)
	Q <= 1;
	else
	Q <= 0;
 end

endmodule 

////OG code

//module DFF (Q, D, clk);
//
//input D;
//input clk;
//
//output reg Q;
//
//always @ (posedge clk)
//begin
//	Q<=D;
// end
//
//endmodule 