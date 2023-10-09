`timescale 1ns / 1ps

//Shifter
module shift_8_bit(
input clk,
input reset,
input [7:0]A,
output reg[7:0]out
    );
    
    integer i;
    reg [7:0]temp;
    always @(posedge clk)
     begin
      temp[7:0] = A[7:0];
      
      out[0] <= temp[7];
      for(i = 0; i < 7; i = i+1)
       begin
         out[i+1] <= temp[i];
       end
     end
endmodule
