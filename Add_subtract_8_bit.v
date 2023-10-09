`timescale 1ns / 1ps

//Design an adder which work as ADDER and SUBTRACTOR depends on mode.
module Add_subtract_8_bit(
input [7:0]A,
input [7:0]B,
input mode,
output [7:0]out,
output cout
    );
    
    reg [7:0]B_xor;
    reg [3:0]i;
    
    initial
      begin
        for(i = 1; i < 8; i = i+1)
          begin
          B_xor[i] = B[i] ^ i;
          end
      end
    
    Adder_8_bit addSub(.A(A),.B(B),.cin(mode),.sum(out),.cout(cout));
    
endmodule
