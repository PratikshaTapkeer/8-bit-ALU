`timescale 1ns / 1ps

//AND gate for 4 bit 
module AND_gate4(
input [3:0]A,
input [3:0]B,
output [3:0]AND
    );
    
    and A0(AND[0],A[0],B[0]);
    and A1(AND[1],A[1],B[1]);
    and A2(AND[2],A[2],B[2]);
    and A3(AND[3],A[3],B[3]);
    
endmodule
