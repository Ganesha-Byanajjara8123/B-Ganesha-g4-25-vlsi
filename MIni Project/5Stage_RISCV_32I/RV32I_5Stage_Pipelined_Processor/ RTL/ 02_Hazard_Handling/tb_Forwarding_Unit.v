`timescale 1ns / 1ps

module tb_Forwarding_Unit;
reg [4:0] ID_rs1_in;
reg [4:0] ID_rs2_in;
reg [4:0] EX_rd_in;
reg       EX_RegWrite_in;
reg [4:0] WB_rd_in;
reg       WB_RegWrite_in;

wire [1:0] ForwardA_out;
wire [1:0] ForwardB_out;

Forwarding_Unit dut(
.ID_rs1_in(ID_rs1_in),
.ID_rs2_in(ID_rs2_in),
.EX_rd_in(EX_rd_in),
.EX_RegWrite_in(EX_RegWrite_in),
.WB_rd_in(WB_rd_in),
.WB_RegWrite_in(WB_RegWrite_in),
.ForwardA_out(ForwardA_out),
.ForwardB_out(ForwardB_out)
);

initial begin
//For GTKwaveform
$dumpfile("Forwarding_Unit.vcd");
$dumpvars(0, tb_Forwarding_Unit);

ID_rs1_in = 0;
ID_rs2_in = 0;
EX_rd_in  = 0;
EX_RegWrite_in = 0;
WB_rd_in  = 0;
WB_RegWrite_in = 0;

//TEST-CASE-1
ID_rs1_in = 5'd1;
ID_rs2_in = 5'd2;

EX_rd_in = 5'd1;

WB_rd_in = 5'd2;

#1;
 $display("-----------------------------------------");
 $display("EXRegWrite     = %b", EX_RegWrite_in);
 $display("IDrs1          = %b", ID_rs1_in);
 $display("IDrs2          = %b", ID_rs2_in);
 $display("EXrd           = %b", EX_rd_in);
 $display("WBrd           = %b", WB_rd_in);

if(ForwardA_out == 2'b10 && ForwardB_out == 2'b01)
    $display("PASS");
else
    $display("FAIL");
	
//Priority TEST-CASE
ID_rs1_in = 5'd5;

EX_rd_in = 5'd5;
WB_rd_in = 5'd5;

EX_RegWrite_in = 1'b1;
WB_RegWrite_in = 1'b1;
 $display("-----------------------------------------");
 $display("IDrs1          = %b", ID_rs1_in);
 $display("EXrd           = %b", EX_rd_in);
 $display("WBrd           = %b", WB_rd_in);
 $display("EXRegWrite     = %b", EX_RegWrite_in);
 $display("WBRegWrite     = %b", WB_RegWrite_in);
 
if(ForwardA_out == 2'b10)
    $display("PASS");
else
    $display("FAIL");
	
//Test CASE for No Forward

ID_rs1_in = 5'b0;
EX_rd_in = 5'b0;
EX_RegWrite_in = 1'b1;
 $display("-----------------------------------------");
 $display("IDrs1          = %b", ID_rs1_in);
 $display("EXrd           = %b", EX_rd_in);
 $display("EXRegWrite     = %b", EX_RegWrite_in);
 
if(ForwardA_out == 2'b00)
    $display("PASS");
else
    $display("FAIL");




 $finish;
 
 end
 endmodule
 
 
 
 
