`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 17:17:21
// Design Name: 
// Module Name: carrylookaheadadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carrylookaheadadder(A,B,Cin,Sum,Cout);
input wire[3:0] A,B;
input Cin;
output wire[3:0] Sum;
output Cout;
wire [3:0]P;
wire [3:0]G;
wire [3:0]C;
assign P[0] = A[0] ^ B[0] ;
assign P[1] = A[1] ^ B[1] ;
assign P[2] = A[2] ^ B[2] ;
assign P[3] = A[3] ^ B[3] ;

assign G[0] = A[0] & B[0] ;
assign G[1] = A[1] & B[1] ;
assign G[2] = A[2] & B[2] ;
assign G[3] = A[3] & B[3] ;

assign C[0] = Cin;
assign C[1] = G[0] | (P[0]&C[0]) ;
assign C[2] = G[1] | (P[1]&C[1]) ;
assign C[3] = G[2] | (P[2]&C[2]) ;
assign Cout = G[3] | (P[3] & C[3]) ;

fulladder uut1(A[0],B[0],C[0],Sum[0]);
fulladder uut2(A[1],B[1],C[1],Sum[1]);
fulladder uut3(A[2],B[2],C[2],Sum[2]);
fulladder uut4(A[3],B[3],C[3],Sum[3]);




endmodule

  