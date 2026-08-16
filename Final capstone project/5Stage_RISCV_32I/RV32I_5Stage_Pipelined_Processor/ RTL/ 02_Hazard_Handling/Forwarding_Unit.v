`timescale 1ns / 1ps

module Forwarding_Unit(
input [4:0] ID_rs1_in,
input [4:0] ID_rs2_in,
input [4:0] EX_rd_in,
input       EX_RegWrite_in,
input [4:0] WB_rd_in,
input       WB_RegWrite_in,

output reg [1:0] ForwardA_out,
output reg [1:0] ForwardB_out

);

always@(*)begin

// Forwarding for EX stage with rs1
if(EX_RegWrite_in && (EX_rd_in != 0) && (EX_rd_in == ID_rs1_in))begin
ForwardA_out = 2'b10; // Forward from EX stage
end

else if (WB_RegWrite_in && (WB_rd_in != 0) && (WB_rd_in == ID_rs1_in))begin
ForwardA_out = 2'b01; //Forward from WB stage
end

else begin
ForwardA_out = 2'b00; //No forward
end

// Forwarding for EX stage with rs2
if(EX_RegWrite_in && (EX_rd_in != 0) && (EX_rd_in == ID_rs2_in))begin
ForwardB_out = 2'b10; // Forward from EX stage
end

else if(WB_RegWrite_in && (WB_rd_in != 0) && (WB_rd_in == ID_rs2_in))begin
ForwardB_out = 2'b01; // Forward from WB stage
end

else begin
ForwardB_out = 2'b00; //No Forward
end

end
endmodule







/*
 
            MEM/WB
               │
               │
               ▼
        +---------------+
        |               |
        | Forward Unit  |
        |               |
        +---------------+
               ▲
               │
               │
            EX/MEM

Encoding

We'll use the standard encoding.

00

Take register file value
01

Take MEM/WB value
10

Take EX/MEM value
11

Unused
