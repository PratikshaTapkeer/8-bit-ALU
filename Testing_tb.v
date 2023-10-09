`timescale 1ns / 1ps

module Testing_tb();
reg [7:0]A;
reg [7:0]B;
wire [7:0]out;
wire cout;

//Subtractor_8_bit sub(.A(A),.B(B),.out(out),.cout(cout));

initial
begin
A = 8'h0;
B = 8'h0;
#20

A = 8'h2;
B = 8'h4;
#20

A = 8'h5;
B = 8'h1;
#20;

A = 8'hA;
B = 8'hF;
#20;

end
endmodule
