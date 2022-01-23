module ALUTest();
	reg [31:0] srcA, srcB;
	reg [2:0] aluCtrl;
	wire [31:0] aluRslt;
	wire zero;
	parameter time_out = 100;
	initial $monitor (srcA, srcB, aluCtrl, aluRslt, zero);
	always begin
		#0 srcA=32'b00001010101010101010101000101010; srcB=32'b00000100010100111000110100010100;
		#5 aluCtrl=3'b000;
		#5 aluCtrl=3'b001;
		#5 aluCtrl=3'b010;
		#5 aluCtrl=3'b110;
		#5 aluCtrl=3'b111;
		#5 aluCtrl=3'b101;
	end
	alu test (srcA, srcB, aluCtrl, aluRslt, zero);
endmodule
