`timescale 1ns / 1ps

//Testcases
module ALU_8_bit_tb();

 reg enable;
 reg [7:0]A;
 reg [7:0]B;
 reg [3:0]opcode;
 wire [7:0]out;
 wire cout;
 
 ALU_8_bit DUT(.enable(enable),.A(A),.B(B),.opcode(opcode),.out(out),.cout(cout));

 initial
    begin
        A = 8'b00000000;  // initial
		B = 8'b00000000;
		enable = 1'b0;
		opcode = 4'b0000;
		#20;

		#10 enable = 1'b1;
		#1 opcode = 4'b1111;  // add
		A = 8'b11111111;
		B = 8'b11111111;
		#2 enable = 1'b0;
		#20;

		#5 enable = 1'b1;
		#1 opcode = 4'b0110;  // or
		A = 8'b11001100;
		B = 8'b00110011;
		#2 enable = 1'b0;
		#20;
		
		#5 enable = 1'b1;
		#1 opcode = 4'b0100;  // not
		A = 8'b10101010;
		#2 enable = 1'b0;
		#20;
		
		#5 enable = 1'b1;
		#1 opcode = 4'b1110;  //subtract
		A = 8'b00000000;
		B = 8'b00000001;
		#2 enable = 1'b0;
		#20;
		
		#5 enable = 1'b1;
		#1 opcode = 4'b0111;  // and
		A= 8'b11001100;
		B = 8'b00110011;
		#2 enable = 1'b0;
		#20;
    end
endmodule
