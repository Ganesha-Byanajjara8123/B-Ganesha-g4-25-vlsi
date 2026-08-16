`timescale 1ns / 1ps

module tb_Hazard_Unit;
reg [4:0] ID_EX_rd_in;
reg [2:0] ID_EX_ResultSrc_in;  // or MemRead Result_Src_out = 3'b001
reg [4:0] IF_ID_rs1_in;
reg [4:0] IF_ID_rs2_in;

wire PC_Write_out;
wire IF_ID_Write_out;
wire ID_EX_Flush_out;

//module instantiation
Hazard_Unit dut(
.ID_EX_rd_in(ID_EX_rd_in),
.ID_EX_ResultSrc_in(ID_EX_ResultSrc_in),
.IF_ID_rs1_in(IF_ID_rs1_in),
.IF_ID_rs2_in(IF_ID_rs2_in),
.PC_Write_out(PC_Write_out),
.IF_ID_Write_out(IF_ID_Write_out),
.ID_EX_Flush_out(ID_EX_Flush_out)
);

initial begin
//for GTKwaveform
$dumpfile("Hazard_Unit.vcd");
$dumpvars(0, tb_Hazard_Unit);

//for default
ID_EX_rd_in        = 0;
ID_EX_ResultSrc_in = 0;
IF_ID_rs1_in       = 0;
IF_ID_rs2_in       = 0;
#1;

//Test CASE1
ID_EX_ResultSrc_in = 3'b001;
ID_EX_rd_in        = 5'd5;
IF_ID_rs1_in       = 5'd5;
IF_ID_rs2_in       = 5'd7;

#1;

$display("-----------------Hazard detected-------------------");
$display("IDEXResult = %b", ID_EX_ResultSrc_in);
$display("IDEXrd         = %b", ID_EX_rd_in);
$display("IFIDrs1        = %b", IF_ID_rs1_in);
$display("IFIDrs2        = %b", IF_ID_rs2_in);
$display("PCWrite        = %b", PC_Write_out);
$display("IFIDWrite  = %b", IF_ID_Write_out);
$display("IDEXFlush  = %b", ID_EX_Flush_out);

//for self-checking
if(PC_Write_out == 0 && IF_ID_Write_out == 0 && ID_EX_Flush_out == 1)
$display("PASS");
else
$display("FAIL");

//Test CASE2
ID_EX_ResultSrc_in = 3'b001;
ID_EX_rd_in        = 5'd5;
IF_ID_rs1_in       = 5'd8;
IF_ID_rs2_in       = 5'd7;

#1;

$display("-----------------No hazard-------------------");
$display("IDEXResult = %b", ID_EX_ResultSrc_in);
$display("IDEXrd         = %b", ID_EX_rd_in);
$display("IFIDrs1        = %b", IF_ID_rs1_in);
$display("IFIDrs2        = %b", IF_ID_rs2_in);
$display("PCWrite        = %b", PC_Write_out);
$display("IFIDWrite  = %b", IF_ID_Write_out);
$display("IDEXFlush  = %b", ID_EX_Flush_out);

//for self-checking
if(PC_Write_out == 1 && IF_ID_Write_out == 1 && ID_EX_Flush_out == 0)
$display("PASS");
else
$display("FAIL");

//Test CASE3
ID_EX_ResultSrc_in = 3'b000;
ID_EX_rd_in        = 5'd5;
IF_ID_rs1_in       = 5'd5;
IF_ID_rs2_in       = 5'd7;

#1;

$display("-----------------ALU instruction-------------------");
$display("IDEXResult = %b", ID_EX_ResultSrc_in);
$display("IDEXrd         = %b", ID_EX_rd_in);
$display("IFIDrs1        = %b", IF_ID_rs1_in);
$display("IFIDrs2        = %b", IF_ID_rs2_in);
$display("PCWrite        = %b", PC_Write_out);
$display("IFIDWrite  = %b", IF_ID_Write_out);
$display("IDEXFlush  = %b", ID_EX_Flush_out);

//for self-checking
if(PC_Write_out == 1 && IF_ID_Write_out == 1 && ID_EX_Flush_out == 0)
$display("PASS");
else
$display("FAIL");

$finish;

end
endmodule
