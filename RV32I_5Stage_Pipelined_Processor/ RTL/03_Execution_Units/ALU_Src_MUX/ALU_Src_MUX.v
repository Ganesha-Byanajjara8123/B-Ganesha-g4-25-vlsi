//code for ALU_Src_MUX.v    

`timescale 1ns / 1ps

module ALU_Src_MUX(
input [31:0] reg_data_in,  //from Register file
input [31:0] imm_data_in,  //from Extend unit(for Imm)
input        ALU_Src_Sel,   //select line or controller(from Decoder)
output[31:0] src2_out      // output and also i/p for ALU src2_in
);

assign src2_out = ALU_Src_Sel ? imm_data_in : reg_data_in;

endmodule












/* notes

	Register File (RD2)
                        │
                        │
                        ▼
                  ┌──────────┐
Immediate ───────►│          │
                  │   MUX    │──────► ALU src2
ALU_Src ─────────►│          │
                  └──────────┘
