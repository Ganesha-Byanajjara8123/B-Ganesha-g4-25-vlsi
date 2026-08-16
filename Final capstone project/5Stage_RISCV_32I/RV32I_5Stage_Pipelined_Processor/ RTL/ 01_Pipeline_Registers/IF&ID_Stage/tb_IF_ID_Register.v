`timescale 1ns / 1ps

module tb_IF_ID_Register();
reg        clk;
reg        rst;
reg  [31:0]PC_in;
reg  [31:0]PC_plus4_in;
reg  [31:0]instruction_in;
wire [31:0]PC_out;
wire [31:0]PC_plus4_out;
wire [31:0]instruction_out;

//module instantiation
IF_ID_Register dut(
.clk(clk),
.rst(rst),
.PC_in(PC_in),
.PC_plus4_in(PC_plus4_in),
.instruction_in(instruction_in),
.PC_out(PC_out),
.PC_plus4_out(PC_plus4_out),
.instruction_out(instruction_out)
);

//clk
always #5 clk = ~clk;

initial begin

//For GTKwaveform
$dumpfile("IF_ID_Register.vcd");
$dumpvars(0, tb_IF_ID_Register);

clk = 0;
rst = 1;
//To make sure all inputs should be zero whenever reset is enabled
PC_in          = 32'd0;
PC_plus4_in    = 32'd0;
instruction_in = 32'd0;

#5; //wait for 5ns
@(posedge clk);
rst = 0;

//case-1 ADDI (clk-1)
PC_in = 32'd0;  
instruction_in = 32'h00A00093; //ADDI x1,x0,10
PC_plus4_in = 32'd4;

//for self-checking
if(PC_out != 0)
$display("FAIL");
else
$display("PASS");

$display("PC = %d PC+4 = %d Instruction = %h", PC_out, PC_plus4_out, instruction_out);
@(posedge clk);
#1;

//case-2 ADDI (clk-2)
PC_in = 32'd4;
instruction_in = 32'h01400113; //ADDI x2,x0,20
PC_plus4_in = 32'd8;

//for self-checking
if(PC_out != 4)
$display("FAIL");
else
$display("PASS");

$display("PC = %d PC+4 = %d Instruction = %h", PC_out, PC_plus4_out, instruction_out);
@(posedge clk);
#1;

//case-3 ADD (clk-3)
PC_in = 32'd8;
instruction_in = 32'h002081B3; //ADD x3,x1,x2;
PC_plus4_in = 32'd12;

//for self-checking
if(PC_out != 8)
$display("FAIL");
else
$display("PASS");

$display("PC = %d PC+4 = %d Instruction = %h", PC_out, PC_plus4_out, instruction_out);
@(posedge clk);
#1;

$finish;

end
endmodule

