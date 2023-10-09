`timescale 1ns / 1ps

//8 Bit subtractor

module Subtractor_8_bit(
input [7:0]A,
input [7:0]B,
output [7:0]out,
output cout
    );
    
    wire [7:0]B_not;
    reg [7:0]result;
    reg cin = 1'b1;
   // reg cin1 =1'b0;
    reg [7:0]temp_out;
    NOT_gate8 ones_Comp(.A(B),.NOT(B_not));
    Adder_8_bit sub(.A(A),.B(B_not),.cin(cin),.sum(out),.cout(cout));
    //no carry take 2's comp
    //if carry result as it is.
endmodule
