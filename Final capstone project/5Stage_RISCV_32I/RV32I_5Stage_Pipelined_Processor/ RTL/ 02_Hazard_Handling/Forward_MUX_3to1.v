`timescale 1ns / 1ps

module Forward_MUX_3to1(
input  [31:0] Reg_Data_in, //(Register file output)
input  [31:0] EX_Data_in,  //(ALU result from EX/MEM register) 
input  [31:0] WB_Data_in,  //(The final write-back value) 
input  [1:0] Forward_Sel_in,

output reg [31:0] Forward_Data_out

);

always@(*)begin
case(Forward_Sel_in)

2'b00 : Forward_Data_out = Reg_Data_in;
2'b01 : Forward_Data_out = WB_Data_in;
2'b10 : Forward_Data_out = EX_Data_in;

default: Forward_Data_out = Reg_Data_in;

endcase
end
endmodule
