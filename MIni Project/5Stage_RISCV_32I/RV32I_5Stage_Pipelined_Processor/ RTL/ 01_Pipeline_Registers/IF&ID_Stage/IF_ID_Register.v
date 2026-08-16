`timescale 1ns / 1ps

module IF_ID_Register(
input            clk,
input            rst,
input 			 IF_ID_Write_in,         //this i/p taken for Hazard unit
input 			 IF_ID_Flush_in,	     //this i/p taken for Controle Hazard
input      [31:0]IF_PC_in,           //for PC value like PC = 0,,4,8..
input      [31:0]IF_PC_plus4_in,     //for PC+4 value like if PC = 0 then PC+4 = 4....
input      [31:0]IF_instruction_in,  //instructions are ADD, SLT...
output reg [31:0]IF_PC_out,          
output reg [31:0]IF_PC_plus4_out,
output reg [31:0]IF_instruction_out 
);

always@(posedge clk or posedge rst)begin

    if(rst || IF_ID_Flush_in)begin
	//All outputs should be empty when it reset and also Flush
	IF_PC_out          <= 32'b0;
	IF_PC_plus4_out    <= 32'b0;
	IF_instruction_out <= 32'b0;
	end
// Capture IF stage outputs for the Decode stage	
    else if(IF_ID_Write_in)begin
	IF_PC_out  		   <= IF_PC_in;
	IF_PC_plus4_out    <= IF_PC_plus4_in;
	IF_instruction_out <= IF_instruction_in;
	end
	
	else begin
	//Hold previous values(Stall)
        IF_PC_out          <= IF_PC_out;
        IF_PC_plus4_out    <= IF_PC_plus4_out;
        IF_instruction_out <= IF_instruction_out;
end
end

endmodule
	
	

/*Before adding Hazard unit

`timescale 1ns / 1ps

module IF_ID_Register(
input            clk,
input            rst,
input 			 IF_ID_Write_in,         //this i/p taken for Hazard unit
input 			 IF_ID_Flush_in,	     //this i/p taken for Controle Hazard
input      [31:0]IF_PC_in,           //for PC value like PC = 0,,4,8..
input      [31:0]IF_PC_plus4_in,     //for PC+4 value like if PC = 0 then PC+4 = 4....
input      [31:0]IF_instruction_in,  //instructions are ADD, SLT...
output reg [31:0]IF_PC_out,          
output reg [31:0]IF_PC_plus4_out,
output reg [31:0]IF_instruction_out 
);

always@(posedge clk or posedge rst)begin
    if(rst)begin
	//All outputs should be empty when it reset
	IF_PC_out          <= 32'b0;
	IF_PC_plus4_out    <= 32'b0;
	IF_instruction_out <= 32'b0;
	end
// Capture IF stage outputs for the Decode stage	
    else begin
	IF_PC_out  		   <= IF_PC_in;
	IF_PC_plus4_out    <= IF_PC_plus4_in;
	IF_instruction_out <= IF_instruction_in;
	end
end

endmodule
