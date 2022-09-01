`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 17:09:54
// Design Name: 
// Module Name: fulladder
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


module fulladder(A,B,Cin,S,Co);
input A,B;
input Cin;
output S;
output Co;

assign S = A^B^Cin;
assign Co = (A&B) | (B&Cin) | (Cin&A);

endmodule
