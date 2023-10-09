`timescale 1ns / 1ps

//NOT gate for 4 bit.
module NOT_gate4(
input [3:0]A,
output [3:0]NOT
    );
    
    not N0(NOT[0],A[0]);
    not N1(NOT[1],A[1]);
    not N2(NOT[2],A[2]);
    not N3(NOT[3],A[3]);
 
endmodule
