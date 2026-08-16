`timescale 1ns / 1ps

module tb_Forward_MUX_3to1;
reg  [31:0] Reg_Data_in; //(Register file output)
reg  [31:0] EX_Data_in;  //(ALU result from EX/MEM register) 
reg  [31:0] WB_Data_in;  //(The final write-back value) 
reg  [1:0] Forward_Sel_in;

wire [31:0] Forward_Data_out;

//module instantiation
Forward_MUX_3to1 dut( 
.Reg_Data_in(Reg_Data_in),
.EX_Data_in(EX_Data_in),
.WB_Data_in(WB_Data_in),
.Forward_Sel_in(Forward_Sel_in),
.Forward_Data_out(Forward_Data_out)
);

initial begin
//GTKwavform
$dumpfile("Forward_MUX_3to1.vcd");
$dumpvars(0, tb_Forward_MUX_3to1);

//make sure all inputs are should be zero before feeding any inputs
Reg_Data_in    = 0;
EX_Data_in     = 0;
WB_Data_in     = 0;
Forward_Sel_in = 0;

//Test CASE1
Reg_Data_in = 32'd10;
EX_Data_in  = 32'd20;
WB_Data_in  = 32'd30;

Forward_Sel_in =2'b00;
#1;

$display("-----------Register File------------"); 
$display("RegData = %h", Reg_Data_in);
$display("EXData  = %h", EX_Data_in);
$display("WBData  = %h", WB_Data_in);
$display("ForwardDataout = %h", Forward_Data_out);

//for Self checking
if(Forward_Data_out == Reg_Data_in)
$display("PASS");
else
$display("FAIL");

//Test CASE2
Reg_Data_in = 32'd10;
EX_Data_in  = 32'd20;
WB_Data_in  = 32'd30;

Forward_Sel_in = 2'b10;
#1;

$display("-----------EX stage------------"); 
$display("RegData = %h", Reg_Data_in);
$display("EXData  = %h", EX_Data_in);
$display("WBData  = %h", WB_Data_in);
$display("ForwardDataout = %h", Forward_Data_out);

//for Self checking
if(Forward_Data_out == EX_Data_in)
$display("PASS");
else
$display("FAIL");

//Test CASE3;
Reg_Data_in = 32'd10;
EX_Data_in  = 32'd20;
WB_Data_in  = 32'd30;

Forward_Sel_in = 2'b01;
#1;

$display("-----------WB stage------------"); 
$display("RegData = %h", Reg_Data_in);
$display("EXData  = %h", EX_Data_in);
$display("WBData  = %h", WB_Data_in);
$display("ForwardDataout = %h", Forward_Data_out);

//for Self checking
if(Forward_Data_out == WB_Data_in)
$display("PASS");
else
$display("FAIL");

//For default
Forward_Sel_in = 2'b11;
#1;

$display("-----------Default------------"); 
$display("RegData = %h", Reg_Data_in);
$display("ForwardDataout = %h", Forward_Data_out);


//for Self checking
if(Forward_Data_out == Reg_Data_in)
$display("PASS");
else
$display("FAIL");

$finish;

end
endmodule



