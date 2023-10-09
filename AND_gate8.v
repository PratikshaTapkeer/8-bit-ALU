`timescale 1ns / 1ps

//AND gate for 8 bit.
module AND_gate8(
input [7:0]A,
input [7:0]B,
output [7:0]AND
    );
    
    AND_gate4 A0(.A(A[3:0]),.B(B[3:0]),.AND(AND[3:0]));
    AND_gate4 A1(.A(A[7:4]),.B(B[7:4]),.AND(AND[7:4]));
    
endmodule
