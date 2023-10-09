`timescale 1ns / 1ps

//OR gate for 4 bit.
module OR_gate4(
input [3:0]A,
input [3:0]B,
output [3:0]out
    );
    
    or O1(out[0],A[0],B[0]);
    or O2(out[1],A[1],B[1]);
    or O3(out[2],A[2],B[2]);
    or O4(out[3],A[3],B[3]);
    
endmodule
