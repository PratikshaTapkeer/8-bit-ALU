`timescale 1ns / 1ps

//Carry Look Ahead Adder.
//Adder for 4 bit

module Adder_4_bit(
input [3:0]A,
input [3:0]B,
input cin,
output [3:0]sum,
output cout
    );
    
    wire c0,c1,c2;
    wire [3:0]G;
    wire [3:0]P;
    
    //Generating G
    AND_gate4 Ggen(.A(A[3:0]),.B(B[3:0]),.AND(G[3:0]));
    
    //Propogating p
    XOR_gate4 Pprop(.A(A[3:0]),.B(B[3:0]),.XOR(P[3:0]));
    
    assign c0 = (G[0] | (P[0] & cin));
    assign c1 = (G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin));
    assign c2 = (G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin));
    assign cout = (G[3] |(P[3] & G[2]) | (P[3]& P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin));
    
    assign sum[0] = P[0] ^ cin;
    assign sum[1] = P[1] ^ c0;
    assign sum[2] = P[2] ^ c1;
    assign sum[3] = P[3] ^ c2;
    
endmodule
