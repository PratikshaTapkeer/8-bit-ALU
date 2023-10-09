`timescale 1ns / 1ps
//OR gate for 8 bit
module OR_gate8(
input [7:0]A,
input [7:0]B,
output [7:0]out
    );
    
    OR_gate4 O1(.A(A[3:0]),.B(B[3:0]),.out(out[3:0]));
    OR_gate4 O2(.A(A[7:4]),.B(B[7:4]),.out(out[7:4]));
    
endmodule
