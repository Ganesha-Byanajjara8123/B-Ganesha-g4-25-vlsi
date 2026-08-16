`timescale 1ns / 1ps

module tb_ID_EX_Register;
reg        clk;
reg        rst;
reg        ID_RegWrite_in;
reg        ID_MemWrite_in;
reg        ID_ALU_Src_Sel_in;
reg        ID_Branch_Enable_in;
reg        ID_Load_Unsigned_in;
reg        ID_Jump_in;
reg [3:0]  ID_ALU_Control_in;
reg [2:0]  ID_Branch_Type_sel_in;
reg [2:0]  ID_Result_Src_in;
reg [1:0]  ID_Load_Size_in;
reg [4:0]  ID_rd_in;     			//instructions rd_in,rs1_in,rs2_in
reg [4:0]  ID_rs1_in;         
reg [4:0]  ID_rs2_in; 
reg [31:0] ID_PC_in;
reg [31:0] ID_PC_plus4_in;
reg [31:0] ID_ReadData1_in;
reg [31:0] ID_ReadData2_in;
reg [31:0] ID_Imm_Data_in;
reg [31:0] ID_instruction_in;
wire  	   ID_RegWrite_out;
wire  	   ID_MemWrite_out;
wire  	   ID_ALU_Src_Sel_out;
wire  	   ID_Branch_Enable_out;
wire  	   ID_Load_Unsigned_out;
wire  	   ID_Jump_out;
wire [3:0]  ID_ALU_Control_out;
wire [2:0]  ID_Branch_Type_sel_out;
wire [2:0]  ID_Result_Src_out;
wire [1:0]  ID_Load_Size_out; 
wire [4:0]  ID_rd_out;           //instructions rd_in,rs1_in,rs2_in
wire [4:0]  ID_rs1_out;           
wire [4:0]  ID_rs2_out;
wire [31:0] ID_PC_out;
wire [31:0] ID_PC_plus4_out;
wire [31:0] ID_ReadData1_out;
wire [31:0] ID_ReadData2_out;
wire [31:0] ID_Imm_Data_out;
wire [31:0] ID_instruction_out;

//module instantiation
ID_EX_Register dut(
.clk(clk),
.rst(rst),
.ID_RegWrite_in(ID_RegWrite_in),
.ID_MemWrite_in(ID_MemWrite_in),
.ID_ALU_Src_Sel_in(ID_ALU_Src_Sel_in),
.ID_Branch_Enable_in(ID_Branch_Enable_in),
.ID_Load_Unsigned_in(ID_Load_Unsigned_in),
.ID_Jump_in(ID_Jump_in),
.ID_ALU_Control_in(ID_ALU_Control_in),
.ID_Branch_Type_sel_in(ID_Branch_Type_sel_in),
.ID_Result_Src_in(ID_Result_Src_in),
.ID_Load_Size_in(ID_Load_Size_in),
.ID_rd_in(ID_rd_in),
.ID_rs1_in(ID_rs1_in),
.ID_rs2_in(ID_rs2_in),
.ID_PC_in(ID_PC_in),
.ID_PC_plus4_in(ID_PC_plus4_in),
.ID_ReadData1_in(ID_ReadData1_in),
.ID_ReadData2_in(ID_ReadData2_in),
.ID_Imm_Data_in(ID_Imm_Data_in),
.ID_instruction_in(ID_instruction_in),

.ID_RegWrite_out(ID_RegWrite_out),
.ID_MemWrite_out(ID_MemWrite_out),
.ID_ALU_Src_Sel_out(ID_ALU_Src_Sel_out),
.ID_Branch_Enable_out(ID_Branch_Enable_out),
.ID_Load_Unsigned_out(ID_Load_Unsigned_out),
.ID_Jump_out(ID_Jump_out),
.ID_ALU_Control_out(ID_ALU_Control_out),
.ID_Branch_Type_sel_out(ID_Branch_Type_sel_out),
.ID_Result_Src_out(ID_Result_Src_out),
.ID_Load_Size_out(ID_Load_Size_out),
.ID_rd_out(ID_rd_out),
.ID_rs1_out(ID_rs1_out),
.ID_rs2_out(ID_rs2_out),
.ID_PC_out(ID_PC_out),
.ID_PC_plus4_out(ID_PC_plus4_out),
.ID_ReadData1_out(ID_ReadData1_out),
.ID_ReadData2_out(ID_ReadData2_out),
.ID_Imm_Data_out(ID_Imm_Data_out),
.ID_instruction_out(ID_instruction_out)
);

//clk
always #5 clk = ~clk;

initial begin
//GTKwaveform
$dumpfile("ID_EX_Register.vcd");
$dumpvars(0, tb_ID_EX_Register);

clk = 0;
rst = 1;
//when reset = 1 then all outputs should be zero
	    ID_RegWrite_in 			= 1'b0;
		ID_MemWrite_in 			= 1'b0;
		ID_ALU_Src_Sel_in   	= 1'b0;
		ID_Branch_Enable_in   	= 1'b0;
		ID_Load_Unsigned_in   	= 1'b0;
		ID_Jump_in		       	= 1'b0;
		ID_ALU_Control_in     	= 4'b0;
		ID_Branch_Type_sel_in 	= 3'b0;
		ID_Result_Src_in		= 3'b0;
		ID_Load_Size_in	    	= 2'b0;
		ID_rd_in 				= 5'b0;
		ID_rs1_in				= 5'b0;
		ID_rs2_in				= 5'b0;
		ID_PC_in				= 32'b0;
		ID_PC_plus4_in			= 32'b0;
		ID_ReadData1_in			= 32'b0;
		ID_ReadData2_in			= 32'b0;
		ID_Imm_Data_in			= 32'b0;
		ID_instruction_in		= 32'b0;

#5;             //wait for 5ns
@(posedge clk); //for perticularly at Positive edge clk
rst = 0;        

//Test CASE-1 
ID_PC_in = 32'd0; ID_PC_plus4_in = 32'd4; ID_Result_Src_in =  3'b010;    //PC+4

ID_ReadData1_in = 32'd10; ID_ReadData2_in = 32'd20; ID_Imm_Data_in = 32'h00000020;

ID_RegWrite_in = 1'b1; ID_MemWrite_in  = 1'b1; ID_Jump_in = 1'b1; 
 
ID_ALU_Control_in = 4'b0000; //ADD
ID_ALU_Src_Sel_in = 1'b1;
ID_Branch_Type_sel_in = 3'b000; //BEQ(==)
ID_Branch_Enable_in = 1'b1;

ID_instruction_in = 32'h00A00093; //ADDI x1,x0,10

ID_Load_Unsigned_in = 1'b1;  ID_Load_Size_in  = 2'b01; //LH 
    	
//ADD x3,x1,x2
ID_rd_in = 5'b00011; //x3
ID_rs1_in = 5'b00001; //x1
ID_rs2_in = 5'b00010; //x2

@(posedge clk);
#1;

$display("------------------------------------");

$display("PC=%d PC+4=%d ResultSrc = %b",
ID_PC_out,ID_PC_plus4_out,
ID_Result_Src_out);

$display("RD1=%d RD2=%d Imm=%h",
ID_ReadData1_out,
ID_ReadData2_out,
ID_Imm_Data_out);

$display("RegWrite=%b MemWrite=%b Jump=%b",
ID_RegWrite_out,
ID_MemWrite_out,
ID_Jump_out);

$display("ALUCtrl=%b ALUSel = %b BranchEnable = %b BranchType=%b",
ID_ALU_Control_out,
ID_ALU_Src_Sel_out,
ID_Branch_Enable_out,
ID_Branch_Type_sel_out);

$display("Instruction=%h",
ID_instruction_out);

$display("Rd = %b rs1 = %b rs2 = %b",
ID_rd_out, ID_rs1_out,ID_rs2_out
);

//for self-checking
if (
    ID_PC_out == ID_PC_in && ID_PC_plus4_out == ID_PC_plus4_in && ID_Result_Src_out == ID_Result_Src_in &&
	ID_ReadData1_out == ID_ReadData1_in && ID_ReadData2_out == ID_ReadData2_in && ID_Imm_Data_out == ID_Imm_Data_in &&
    ID_RegWrite_out == ID_RegWrite_in && ID_MemWrite_out == ID_MemWrite_in && ID_Jump_out == ID_Jump_in &&
	ID_ALU_Control_out == ID_ALU_Control_in && ID_ALU_Src_Sel_out == ID_ALU_Src_Sel_in &&
	ID_Branch_Enable_out == ID_Branch_Enable_in && ID_Branch_Type_sel_out == ID_Branch_Type_sel_in &&
	ID_instruction_out == ID_instruction_in &&
	ID_rd_out == ID_rd_in && ID_rs1_out == ID_rs1_in && ID_rs2_out == ID_rs2_in
)
    $display("PASS");
else
    $display("FAIL");
	

//Test CASE-2
ID_PC_in = 32'd4; ID_PC_plus4_in = 32'd8; ID_Result_Src_in =  3'b001;    //PC+4

ID_ReadData1_in = 32'd20; ID_ReadData2_in = 32'd10; ID_Imm_Data_in = 32'h00000040;

ID_RegWrite_in = 1'b0; ID_MemWrite_in  = 1'b0; ID_Jump_in = 1'b0; 
 
ID_ALU_Control_in = 4'b0011; //OR
ID_ALU_Src_Sel_in = 1'b0;
ID_Branch_Type_sel_in = 3'b011; //BLTU
ID_Branch_Enable_in = 1'b0;

ID_instruction_in =32'hDEADBEEF;

ID_Load_Unsigned_in = 1'b0;  ID_Load_Size_in  = 2'b10; //LW 
    	
//ADD x5,x2,x3
ID_rd_in = 5'b00101; //x5
ID_rs1_in = 5'b00010; //x2
ID_rs2_in = 5'b00011; //x3

@(posedge clk);
#1;

$display("------------------------------------");

$display("PC=%d PC+4=%d ResultSrc = %b",
ID_PC_out,ID_PC_plus4_out,
ID_Result_Src_out);

$display("RD1=%d RD2=%d Imm=%h",
ID_ReadData1_out,
ID_ReadData2_out,
ID_Imm_Data_out);

$display("RegWrite=%b MemWrite=%b Jump=%b",
ID_RegWrite_out,
ID_MemWrite_out,
ID_Jump_out);

$display("ALUCtrl=%b ALUSel = %b BranchEnable = %b BranchType=%b",
ID_ALU_Control_out,
ID_ALU_Src_Sel_out,
ID_Branch_Enable_out,
ID_Branch_Type_sel_out);

$display("Instruction=%h",
ID_instruction_out);

$display("Rd = %b rs1 = %b rs2 = %b",
ID_rd_out, ID_rs1_out,ID_rs2_out
);

//for self-checking
if (
    ID_PC_out == ID_PC_in && ID_PC_plus4_out == ID_PC_plus4_in && ID_Result_Src_out == ID_Result_Src_in &&
	ID_ReadData1_out == ID_ReadData1_in && ID_ReadData2_out == ID_ReadData2_in && ID_Imm_Data_out == ID_Imm_Data_in &&
    ID_RegWrite_out == ID_RegWrite_in && ID_MemWrite_out == ID_MemWrite_in && ID_Jump_out == ID_Jump_in &&
	ID_ALU_Control_out == ID_ALU_Control_in && ID_ALU_Src_Sel_out == ID_ALU_Src_Sel_in &&
	ID_Branch_Enable_out == ID_Branch_Enable_in && ID_Branch_Type_sel_out == ID_Branch_Type_sel_in &&
	ID_instruction_out == ID_instruction_in &&
	ID_rd_out == ID_rd_in && ID_rs1_out == ID_rs1_in && ID_rs2_out == ID_rs2_in
)
    $display("PASS");
else
    $display("FAIL");

$finish;

end
endmodule








