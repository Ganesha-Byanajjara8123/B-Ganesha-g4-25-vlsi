`timescale 1ns / 1ps

module tb_EX_MEM_Register;
reg        clk;
reg        rst;
reg 	   EX_RegWrite_in;
reg        EX_DM_WrEn_in;
reg        EX_Load_Unsigned_In;
reg [31:0] EX_PC_plus4_in;
reg [31:0] EX_Imm_Data_in;
reg [31:0] EX_Added_Data_in;
reg [31:0] EX_ALU_Result_in;     
reg [31:0] EX_DM_WrData_in;
reg [3:0]  EX_DM_WrMask_in;
reg [1:0]  EX_Load_Size_In;
reg [4:0]  EX_rd_in;
reg [2:0]  EX_Result_Src_in;
wire 	    EX_RegWrite_out;
wire        EX_DM_WrEn_out;
wire        EX_Load_Unsigned_out;
wire [31:0] EX_PC_plus4_out;
wire [31:0] EX_Imm_Data_out;
wire [31:0] EX_Added_Data_out;
wire [31:0] EX_ALU_Result_out;
wire [31:0] EX_DM_WrData_out;
wire [3:0]  EX_DM_WrMask_out;
wire [1:0]  EX_Load_Size_out;
wire [4:0]  EX_rd_out;
wire [2:0]  EX_Result_Src_out;

//module instantiation
EX_MEM_Register dut(
.clk(clk),
.rst(rst),
.EX_RegWrite_in(EX_RegWrite_in),
.EX_DM_WrEn_in(EX_DM_WrEn_in),
.EX_Load_Unsigned_In(EX_Load_Unsigned_In),
.EX_PC_plus4_in(EX_PC_plus4_in),
.EX_Imm_Data_in(EX_Imm_Data_in),
.EX_Added_Data_in(EX_Added_Data_in),
.EX_ALU_Result_in(EX_ALU_Result_in),
.EX_DM_WrData_in(EX_DM_WrData_in),
.EX_DM_WrMask_in(EX_DM_WrMask_in),
.EX_Load_Size_In(EX_Load_Size_In),
.EX_rd_in(EX_rd_in),
.EX_Result_Src_in(EX_Result_Src_in),
.EX_RegWrite_out(EX_RegWrite_out),
.EX_DM_WrEn_out(EX_DM_WrEn_out),
.EX_Load_Unsigned_out(EX_Load_Unsigned_out),
.EX_PC_plus4_out(EX_PC_plus4_out),
.EX_Imm_Data_out(EX_Imm_Data_out),
.EX_Added_Data_out(EX_Added_Data_out),
.EX_ALU_Result_out(EX_ALU_Result_out),
.EX_DM_WrData_out(EX_DM_WrData_out),
.EX_DM_WrMask_out(EX_DM_WrMask_out),
.EX_Load_Size_out(EX_Load_Size_out),
.EX_rd_out(EX_rd_out),
.EX_Result_Src_out(EX_Result_Src_out)
);

//clk
always #5 clk = ~clk;

initial begin

//GTKwaveform
$dumpfile("EX_MEM_Rregister.vcd");
$dumpvars(0, tb_EX_MEM_Register);

clk = 0;
rst = 1;

   EX_RegWrite_in		 = 1'b0;
   EX_DM_WrEn_in        = 1'b0;
   EX_Load_Unsigned_In  = 1'b0;
   EX_PC_plus4_in 		 = 32'd0;
   EX_Imm_Data_in	 	 = 32'd0;
   EX_Added_Data_in	 = 32'd0;
   EX_ALU_Result_in	 = 32'd0;
   EX_DM_WrData_in      = 32'd0;
   EX_DM_WrMask_in      = 4'd0;
   EX_Load_Size_In      = 2'b0;
   EX_rd_in			 = 5'b0;
   EX_Result_Src_in	 = 3'b0; 

@(posedge clk);
#1;

if (
    EX_RegWrite_out == 0 &&
    EX_DM_WrEn_out == 0 &&
    EX_ALU_Result_out == 0
)
    $display("RESET PASS");
else
    $display("RESET FAIL");

rst = 0;

//Test CASE-1 
EX_RegWrite_in	= 1'b1; 
EX_PC_plus4_in   = 32'd4;
EX_Imm_Data_in   = 32'h00000020;
EX_Added_Data_in = 32'h00000100;
EX_ALU_Result_in = 32'd30;
EX_rd_in		  = 5'b00011;  //x3
EX_Result_Src_in = 3'b010; 
EX_DM_WrData_in = 32'h12345678; 
EX_DM_WrMask_in = 4'b1111; 
EX_DM_WrEn_in   = 1'b1;   
// Load Byte (LB)
EX_Load_Size_In = 2'b00;
EX_Load_Unsigned_In = 1'b0;

@(posedge clk);
#1;

$display("-----------------------------------------------------");

$display("RegWrite = %b", EX_RegWrite_out);
$display("Load_Size = %b",  EX_Load_Size_out);
$display("LoadUnsigned = %b", EX_Load_Unsigned_out); 		  
$display("PC+4 = %h", EX_PC_plus4_out);
$display("ImmData = %h", EX_Imm_Data_out);
$display("AddedData = %h", EX_Added_Data_out);
$display("ALUResult = %h", EX_ALU_Result_out);
$display("rd = %b  ", EX_rd_out);
$display("ResultSrc = %b", EX_Result_Src_out);
$display("DM_WrData = %h  ", EX_DM_WrData_out);
$display("DM_WrMask = %b", EX_DM_WrMask_out);
$display("DM_WrEn = %b", EX_DM_WrEn_out);

//for self-checking
if(EX_RegWrite_out == EX_RegWrite_in && EX_Load_Size_out == EX_Load_Size_In && EX_Load_Unsigned_out == EX_Load_Unsigned_In &&
	EX_PC_plus4_out == EX_PC_plus4_in && EX_Imm_Data_out == EX_Imm_Data_in &&
	EX_Added_Data_out == EX_Added_Data_in && EX_ALU_Result_out == EX_ALU_Result_in &&
	EX_rd_out == EX_rd_in && EX_Result_Src_out == EX_Result_Src_in && 
	EX_DM_WrData_out == EX_DM_WrData_in &&
	EX_DM_WrMask_out == EX_DM_WrMask_in && EX_DM_WrEn_out == EX_DM_WrEn_in 
	)
$display("PASS");
else
$display("FAIL");	

$display("-----------------------------------------------------");

//Test CASE-2
EX_RegWrite_in	= 1'b0; 
EX_PC_plus4_in   = 32'd8;
EX_Imm_Data_in   = 32'h00000040;
EX_Added_Data_in = 32'h00000200;
EX_ALU_Result_in = 32'd10;
EX_rd_in		  = 5'b00101;  //x5
EX_Result_Src_in = 3'b001; 
EX_DM_WrData_in = 32'hFFFFFFFF; 
EX_DM_WrMask_in = 4'b0011; //SH 
EX_DM_WrEn_in   = 1'b1;   
// Load Halfword (LH)
EX_Load_Size_In = 2'b01;
EX_Load_Unsigned_In = 1'b0;

@(posedge clk);
#1;

$display("-----------------------------------------------------");

$display("RegWrite = %b", EX_RegWrite_out);
$display("Load_Size = %b",  EX_Load_Size_out);
$display("LoadUnsigned = %b", EX_Load_Unsigned_out); 		  
$display("PC+4 = %h", EX_PC_plus4_out);
$display("ImmData = %h", EX_Imm_Data_out);
$display("AddedData = %h", EX_Added_Data_out);
$display("ALUResult = %h", EX_ALU_Result_out);
$display("rd = %b  ", EX_rd_out);
$display("ResultSrc = %b", EX_Result_Src_out);
$display("DM_WrData = %h  ", EX_DM_WrData_out);
$display("DM_WrMask = %b", EX_DM_WrMask_out);
$display("DM_WrEn = %b", EX_DM_WrEn_out);

//for self-checking
if(EX_RegWrite_out == EX_RegWrite_in && EX_Load_Size_out == EX_Load_Size_In && EX_Load_Unsigned_out == EX_Load_Unsigned_In &&
	EX_PC_plus4_out == EX_PC_plus4_in && EX_Imm_Data_out == EX_Imm_Data_in &&
	EX_Added_Data_out == EX_Added_Data_in && EX_ALU_Result_out == EX_ALU_Result_in &&
	EX_rd_out == EX_rd_in && EX_Result_Src_out == EX_Result_Src_in && 
	EX_DM_WrData_out == EX_DM_WrData_in &&
	EX_DM_WrMask_out == EX_DM_WrMask_in && EX_DM_WrEn_out == EX_DM_WrEn_in 
	)
$display("PASS");
else
$display("FAIL");	

$display("-----------------------------------------------------");


@(posedge clk);
#1;


$finish;

end
endmodule


