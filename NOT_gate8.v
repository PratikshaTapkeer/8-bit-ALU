`timescale 1ns / 1ps

//NOT gate for 8 bit.

module NOT_gate8(
input [7:0]A,
output [7:0]NOT
    );
    
    NOT_gate4 N0(.A(A[3:0]),.NOT(NOT[3:0]));
    NOT_gate4 N1(.A(A[7:4]),.NOT(NOT[7:4]));
    
endmodule
