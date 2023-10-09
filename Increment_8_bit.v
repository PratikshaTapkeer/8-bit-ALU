`timescale 1ns / 1ps

//Incrementor
module Increment_8_bit(
input [7:0]A,
output [7:0]out,
output cout
    );
    wire cin = 1'b1;
    wire [7:0]B = 8'b00000000;
    Adder_8_bit inc(.A(A),.B(B),.cin(cin),.sum(out),.cout(cout));
    
endmodule
