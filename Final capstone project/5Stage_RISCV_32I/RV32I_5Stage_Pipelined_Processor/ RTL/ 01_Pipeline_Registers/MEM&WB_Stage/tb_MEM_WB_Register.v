`timescale 1ns / 1ps

module tb_MEM_WB_Register;
reg        clk;
reg        rst;
reg        RegWrite_in;
reg [2:0]  Result_Src_in;
reg [4:0]  rd_in;
reg [31:0] ALU_Result_in;
reg [31:0] Loaded_data_in;
reg [31:0] PC_plus4_in;
reg [31:0] Imm_in;
reg [31:0] Added_data_in;

wire 		RegWrite_out;
wire [2:0]  Result_Src_out;
wire [4:0]  rd_out;
wire [31:0] ALU_Result_out;
wire [31:0] Loaded_data_out;
wire [31:0] PC_plus4_out;
wire [31:0] Imm_out;
wire [31:0] Added_data_out;

//module instantiation
MEM_WB_Register dut(
.clk(clk),
.rst(rst),
.RegWrite_in(RegWrite_in),
.Result_Src_in(Result_Src_in),
.rd_in(rd_in),
.ALU_Result_in(ALU_Result_in),
.Loaded_data_in(Loaded_data_in),
.PC_plus4_in(PC_plus4_in),
.Imm_in(Imm_in),
.Added_data_in(Added_data_in),
.RegWrite_out(RegWrite_out),
.Result_Src_out(Result_Src_out),
.rd_out(rd_out),
.ALU_Result_out(ALU_Result_out),
.Loaded_data_out(Loaded_data_out),
.PC_plus4_out(PC_plus4_out),
.Imm_out(Imm_out),
.Added_data_out(Added_data_out)
);

//clk
always #5 clk = ~clk;

initial begin
//GTKwaveform
$dumpfile("MEM_WB_Register.vcd");
$dumpvars(0, tb_MEM_WB_Register);

clk = 0;
rst = 1;

RegWrite_in  	 = 1'b0;
Result_Src_in    = 3'b0;
rd_in 			 = 5'd0;
ALU_Result_in    = 32'd0;
Loaded_data_in   = 32'd0;
PC_plus4_in      = 32'd0;
Imm_in			 = 32'd0;
Added_data_in    = 32'd0;

@(posedge clk);
#1;

if(
    RegWrite_out == RegWrite_in && ALU_Result_out == ALU_Result_in
)
$display("RESET PASS");

else
$display("RESET FAIL");

rst = 0;

//Test CASE-1 
RegWrite_in	= 1'b1; 
Result_Src_in = 3'b010; 
rd_in = 5'b00011;  //x3
ALU_Result_in = 32'd30;
Loaded_data_in = 32'h22222222;
PC_plus4_in   = 32'd4;
Imm_in   = 32'h00000020;
Added_data_in = 32'h00000100;

@(posedge clk);
#1;

$display("-----------------------------------------------------");

$display("RegWrite = %b", RegWrite_out);
$display("ResultSrc = %b", Result_Src_out);
$display("rd = %b  ", rd_out);
$display("ALUResult = %h", ALU_Result_out);
$display("LoadedData = %h", Loaded_data_out);
$display("PC+4 = %h", PC_plus4_out);
$display("ImmData = %h", Imm_out);
$display("AddedData = %h", Added_data_out);

//for self-checking
if(RegWrite_out == RegWrite_in && Loaded_data_out == Loaded_data_in &&
	PC_plus4_out == PC_plus4_in && Imm_out == Imm_in &&
	Added_data_out == Added_data_in && ALU_Result_out == ALU_Result_in &&
	rd_out == rd_in && Result_Src_out == Result_Src_in 
  )
  
$display("PASS");

else

$display("FAIL");	


//Test CASE-2
RegWrite_in	= 1'b0; 
Result_Src_in = 3'b001; 
rd_in = 5'b00101;  //x5
ALU_Result_in = 32'd50;
Loaded_data_in = 32'h44444444;
PC_plus4_in   = 32'd8;
Imm_in   = 32'h00000040;
Added_data_in = 32'h00000300;

@(posedge clk);
#1;

$display("-----------------------------------------------------");

$display("RegWrite = %b", RegWrite_out);
$display("ResultSrc = %b", Result_Src_out);
$display("rd = %b  ", rd_out);
$display("ALUResult = %h", ALU_Result_out);
$display("LoadedData = %h", Loaded_data_out);
$display("PC+4 = %h", PC_plus4_out);
$display("ImmData = %h", Imm_out);
$display("AddedData = %h", Added_data_out);

//for self-checking
if(RegWrite_out == RegWrite_in && Loaded_data_out == Loaded_data_in &&
	PC_plus4_out == PC_plus4_in && Imm_out == Imm_in &&
	Added_data_out == Added_data_in && ALU_Result_out == ALU_Result_in &&
	rd_out == rd_in && Result_Src_out == Result_Src_in 
  )
  
$display("PASS");

else

$display("FAIL");

$finish;
end
endmodule






