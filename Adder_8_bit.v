`timescale 1ns / 1ps

//Adder for 8 bit
module Adder_8_bit(
input [7:0]A,
input [7:0]B,
input cin,
output [7:0]sum,
output cout
    );
    
    wire c0;
    Adder_4_bit A0(.A(A[3:0]),.B(B[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c0));
    Adder_4_bit A1(.A(A[7:4]),.B(B[7:4]),.cin(c0),.sum(sum[7:4]),.cout(cout));
    
endmodule
