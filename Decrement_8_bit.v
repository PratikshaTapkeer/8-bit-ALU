`timescale 1ns / 1ps

//Decrementor
module Decrement_8_bit(
input [7:0]A,
output [7:0]out,
output cout
    );

    wire [7:0]B = 8'b00000001;
    
    Subtractor_8_bit dec(.A(A),.B(B),.out(out),.cout(cout));
    
endmodule
