`timescale 1ns / 1ps

//Integrated part.

module ALU_8_bit(
input enable,
input [7:0]A,
input [7:0]B,
input [3:0]opcode,
output reg[7:0]out,
output reg cout
    );
    
    wire [7:0]ADD_out;
    wire [7:0]SUB_out;
    wire [7:0]INC_out;
    wire [7:0]DEC_out;
    wire [7:0]AND_out;
    wire [7:0]OR_out;
    wire [7:0]XOR_out;
    wire [7:0]NOT_out;
    
    wire ADD_cout;
    wire SUB_cout;
    wire INC_cout;
    wire DEC_cout;
    
    wire add_cin = 1'b0;
    Adder_8_bit Add(.A(A),.B(B),.cin(add_cin),.sum(ADD_out),.cout(ADD_cout));
    wire sub_cin = 1'b1;
    Add_subtract_8_bit sub(.A(A),.B(B),.mode(sub_cin),.out(SUB_out),.cout(SUB_cout));
    Increment_8_bit Inc(.A(A),.out(INC_out),.cout(INC_cout));
    Decrement_8_bit Dec(.A(A),.out(DEC_out),.cout(DEC_cout));
    AND_gate8 And(.A(A),.B(B),.AND(AND_out));
    OR_gate8 Or(.A(A),.B(B),.out(OR_out));
    XOR_gate8 Xor(.A(A),.B(B),.XOR(XOR_out));
    NOT_gate8 Not(.A(A),.NOT(NOT_out));
  
  always @(*)
    begin
     if(opcode[3] == 1'b1)
       begin
         case({opcode[2:0]})
          3'b111:
            begin
             out[7:0] = ADD_out[7:0];
             cout = ADD_cout;
            end
         3'b110:
            begin
             out[7:0] = SUB_out[7:0];
             cout = SUB_cout;
            end
         3'b101:
            begin
             out[7:0] = INC_out[7:0];
             cout = INC_cout;
            end 
          3'b100:
            begin
             out[7:0] = DEC_out[7:0];
             cout = DEC_cout;
            end  
          default:
            begin
              out[7:0] = 8'b00000000;
            end
         endcase
       end
      else
        begin
          cout = 1'b0;
           case(opcode[2:0])
           3'b111:
              begin
                out[7:0] = AND_out;
              end
           3'b110:
              begin
                out[7:0] = OR_out;
              end
           3'b101:
              begin
                out[7:0] = XOR_out;
              end
           3'b100:
              begin
                out[7:0] = NOT_out;
              end
            default: 
              begin
              out[7:0] = 8'b00000000;
              end
           endcase
        end 
    end
endmodule
