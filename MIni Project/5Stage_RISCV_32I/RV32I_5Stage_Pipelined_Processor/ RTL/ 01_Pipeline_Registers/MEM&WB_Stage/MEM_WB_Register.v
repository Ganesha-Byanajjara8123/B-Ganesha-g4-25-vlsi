`timescale 1ns / 1ps

module MEM_WB_Register(
input        clk,
input        rst,
input        WB_RegWrite_in,
input [2:0]  WB_Result_Src_in,
input [4:0]  WB_rd_in,
input [31:0] WB_ALU_Result_in,
input [31:0] WB_Loaded_data_in,
input [31:0] WB_PC_plus4_in,
input [31:0] WB_Imm_in,
input [31:0] WB_Added_data_in,

output reg 		  WB_RegWrite_out,
output reg [2:0]  WB_Result_Src_out,
output reg [4:0]  WB_rd_out,
output reg [31:0] WB_ALU_Result_out,
output reg [31:0] WB_Loaded_data_out,
output reg [31:0] WB_PC_plus4_out,
output reg [31:0] WB_Imm_out,
output reg [31:0] WB_Added_data_out
);

always@(posedge clk or posedge rst) begin

if(rst)begin

WB_RegWrite_out  	 <= 1'b0;
WB_Result_Src_out    <= 3'b0;
WB_rd_out 			 <= 5'd0;
WB_ALU_Result_out    <= 32'd0;
WB_Loaded_data_out   <= 32'd0;
WB_PC_plus4_out      <= 32'd0;
WB_Imm_out			 <= 32'd0;
WB_Added_data_out    <= 32'd0;

end

else begin

WB_RegWrite_out  	 <= WB_RegWrite_in;
WB_Result_Src_out    <= WB_Result_Src_in;
WB_rd_out 			 <= WB_rd_in;
WB_ALU_Result_out    <= WB_ALU_Result_in;
WB_Loaded_data_out   <= WB_Loaded_data_in;
WB_PC_plus4_out      <= WB_PC_plus4_in;
WB_Imm_out			 <= WB_Imm_in;
WB_Added_data_out    <= WB_Added_data_in;

end
end
endmodule
