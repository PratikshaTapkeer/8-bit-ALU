`timescale 1ns / 1ps

//XOR gate for 8 bit
module XOR_gate8(
input [7:0]A,
input [7:0]B,
output [7:0]XOR
    );
    
    XOR_gate4 X0(.A(A[3:0]),.B(B[3:0]),.XOR(XOR[3:0]));
    XOR_gate4 X1(.A(A[7:4]),.B(B[7:4]),.XOR(XOR[7:4]));
    
endmodule
