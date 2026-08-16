`timescale 1ns / 1ps

module ID_EX_Register(
input        clk,
input        rst,
input        ID_RegWrite_in,
input        ID_MemWrite_in,
input        ID_ALU_Src_Sel_in,
input        ID_Branch_Enable_in,
input        ID_Load_Unsigned_in,
input        ID_Jump_in,
input [3:0]  ID_ALU_Control_in,
input [2:0]  ID_Branch_Type_sel_in,
input [2:0]  ID_Result_Src_in,
input [1:0]  ID_Load_Size_in,
input [4:0]  ID_rd_in,            //instructions rd_in,rs1_in,rs2_in
input [4:0]  ID_rs1_in,           
input [4:0]  ID_rs2_in, 
input [31:0] ID_PC_in,
input [31:0] ID_PC_plus4_in,
input [31:0] ID_ReadData1_in,
input [31:0] ID_ReadData2_in,
input [31:0] ID_Imm_Data_in,
input [31:0] ID_instruction_in,
output reg   ID_RegWrite_out,
output reg   ID_MemWrite_out,
output reg   ID_ALU_Src_Sel_out,
output reg   ID_Branch_Enable_out,
output reg   ID_Load_Unsigned_out,
output reg	 ID_Jump_out,
output reg [3:0]  ID_ALU_Control_out,
output reg [2:0]  ID_Branch_Type_sel_out,
output reg [2:0]  ID_Result_Src_out,
output reg [1:0]  ID_Load_Size_out, 
output reg [4:0]  ID_rd_out,            //instructions rd_in,rs1_in,rs2_in
output reg [4:0]  ID_rs1_out,           
output reg [4:0]  ID_rs2_out,
output reg [31:0] ID_PC_out,
output reg [31:0] ID_PC_plus4_out,
output reg [31:0] ID_ReadData1_out,
output reg [31:0] ID_ReadData2_out,
output reg [31:0] ID_Imm_Data_out,
output reg [31:0] ID_instruction_out
);

always@(posedge clk or posedge rst)begin
//keep all outputs zero when reset is 1
     if(rst) begin
	    ID_RegWrite_out 		<= 1'b0;
		ID_MemWrite_out 		<= 1'b0;
		ID_ALU_Src_Sel_out 		<= 1'b0;
		ID_Branch_Enable_out   	<= 1'b0;
		ID_Load_Unsigned_out  	<= 1'b0;
		ID_Jump_out		    	<= 1'b0;
		ID_ALU_Control_out     	<= 4'b0;
		ID_Branch_Type_sel_out 	<= 3'b0;
		ID_Result_Src_out		<= 3'b0;
		ID_Load_Size_out	    <= 2'b0;
		ID_rd_out 				<= 5'b0;
		ID_rs1_out				<= 5'b0;
		ID_rs2_out				<= 5'b0;
		ID_PC_out				<= 32'b0;
		ID_PC_plus4_out			<= 32'b0;
		ID_ReadData1_out		<= 32'b0;
		ID_ReadData2_out		<= 32'b0;
		ID_Imm_Data_out			<= 32'b0;
		ID_instruction_out		<= 32'b0;
	end
	//Capture ID stage outputs for the Execute stage
     else begin
		ID_RegWrite_out 		<= ID_RegWrite_in;
		ID_MemWrite_out 		<= ID_MemWrite_in;
		ID_ALU_Src_Sel_out 		<= ID_ALU_Src_Sel_in;
		ID_Branch_Enable_out   	<= ID_Branch_Enable_in;
		ID_Load_Unsigned_out   	<= ID_Load_Unsigned_in;
		ID_Jump_out		    	<= ID_Jump_in;
		ID_ALU_Control_out     	<= ID_ALU_Control_in;
		ID_Branch_Type_sel_out 	<= ID_Branch_Type_sel_in;
		ID_Result_Src_out		<= ID_Result_Src_in;
		ID_Load_Size_out	    <= ID_Load_Size_in;
		ID_rd_out 				<= ID_rd_in;
		ID_rs1_out				<= ID_rs1_in;
		ID_rs2_out				<= ID_rs2_in;
		ID_PC_out				<= ID_PC_in;
		ID_PC_plus4_out			<= ID_PC_plus4_in;
		ID_ReadData1_out		<= ID_ReadData1_in;
		ID_ReadData2_out		<= ID_ReadData2_in;
		ID_Imm_Data_out			<= ID_Imm_Data_in;
		ID_instruction_out		<= ID_instruction_in;
	end
end
endmodule
		
		






/*
how to know duplicate signals:

This is the rule
Ask: Is this a different piece of information? or
Is this the same information used in multiple places?
If it's the same information,
store it once.

The rule I personally use when designing pipelines
I ask one question for every signal:
Will any hardware after this pipeline register need this signal?
If yes → put it into the pipeline register.
If no → don't store it.
