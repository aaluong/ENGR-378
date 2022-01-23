module Lab2(a,b,cin,s1,s0,F,cout);
   input [3:0] a,b;
   input s1,s0,cin;
   output [3:0] F;
   output cout;
   wire [3:0] M1, M2, M3, M4; //values of F from different modules
   wire C1,C2,C3,C4; ////values of Cout from different modules
   
   module1 Mod1(a, b, cin, M1, C1);
   module2 Mod2(a, b, cin, M2, C2);
   Module3 Mod3(a, b, cin, M3, C3);
   Module4 Mod4(a, b, cin, M4, C4);
   
   mux_4x1c Carry(C1,C2,C3,C4,{s1,s0},cout);
   mux_4X1s Sum(M1,M2,M3,M4,{s1,s0},F);

endmodule 