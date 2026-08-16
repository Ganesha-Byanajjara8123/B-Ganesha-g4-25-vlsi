`timescale 1ns / 1ps

module EX_MEM_Register(
input        clk,
input        rst,
input 		 EX_RegWrite_in,
input        EX_DM_WrEn_in,
input        EX_Load_Unsigned_In,
input [31:0] EX_PC_plus4_in,
input [31:0] EX_Imm_Data_in,
input [31:0] EX_Added_Data_in,
input [31:0] EX_ALU_Result_in,      //ALU_Result
input [31:0] EX_DM_WrData_in,
input [3:0]  EX_DM_WrMask_in,
input [1:0]  EX_Load_Size_In,
input [4:0]  EX_rd_in,
input [2:0]  EX_Result_Src_in,
output reg 		  EX_RegWrite_out,
output reg        EX_DM_WrEn_out,
output reg        EX_Load_Unsigned_out,
output reg [31:0] EX_PC_plus4_out,
output reg [31:0] EX_Imm_Data_out,
output reg [31:0] EX_Added_Data_out,
output reg [31:0] EX_ALU_Result_out,
output reg [31:0] EX_DM_WrData_out,
output reg [3:0]  EX_DM_WrMask_out,
output reg [1:0]  EX_Load_Size_out,
output reg [4:0]  EX_rd_out,
output reg [2:0]  EX_Result_Src_out
);

always@(posedge clk or posedge rst)begin
if(rst)begin
   EX_RegWrite_out		<= 1'b0;
   EX_DM_WrEn_out       <= 1'b0;
   EX_Load_Unsigned_out <= 1'b0;
   EX_PC_plus4_out 	 	<= 32'd0;
   EX_Imm_Data_out	 	<= 32'd0;
   EX_Added_Data_out    <= 32'd0;
   EX_ALU_Result_out	<= 32'd0;
  // DM_Addr_out       <= 32'd0;
   EX_DM_WrData_out     <= 32'd0;
   EX_DM_WrMask_out     <= 4'd0;
   EX_Load_Size_out     <= 2'b0;
   EX_rd_out			<= 5'b0;
   EX_Result_Src_out	<= 3'b0; 
   end
   else begin
   EX_RegWrite_out      <= EX_RegWrite_in;
   EX_DM_WrEn_out       <= EX_DM_WrEn_in;
   EX_Load_Unsigned_out <= EX_Load_Unsigned_In;
   EX_PC_plus4_out 	 	<= EX_PC_plus4_in;
   EX_Imm_Data_out		<= EX_Imm_Data_in;
   EX_Added_Data_out    <= EX_Added_Data_in;
   EX_ALU_Result_out 	<= EX_ALU_Result_in;
  // DM_Addr_out		 <= DM_Addr_in;
   EX_DM_WrData_out     <= EX_DM_WrData_in;
   EX_DM_WrMask_out     <= EX_DM_WrMask_in;
   EX_Load_Size_out     <= EX_Load_Size_In;
   EX_rd_out		    <= EX_rd_in;
   EX_Result_Src_out    <= EX_Result_Src_in;
   end
  end
endmodule





/*
──────── EX/MEM Register ────────

Data Memory
Load Unit
      │
      ▼
   MEM Stage

---------------
ALU
↓

Branch Comparator

↓

Data Memory

↓

Load Unit
----------------------
Correct philosophy

EX produces

ALU_Result

↓

EX/MEM stores it

↓

Data Memory uses it as address.

EX produces

Store Data

↓

EX/MEM stores it

↓

Data Memory writes it.

EX produces

rd

↓

EX/MEM stores it

↓

MEM/WB stores it

↓

Register File writes it.
