`timescale 1ns / 1ps

//XOR gate for 4 bit.
module XOR_gate4(
input [3:0]A,
input [3:0]B,
output [3:0]XOR
    );
    
    xor X0(XOR[0],A[0],B[0]);
    xor X1(XOR[1],A[1],B[1]);
    xor X2(XOR[2],A[2],B[2]);
    xor X3(XOR[3],A[3],B[3]);
    
endmodule
