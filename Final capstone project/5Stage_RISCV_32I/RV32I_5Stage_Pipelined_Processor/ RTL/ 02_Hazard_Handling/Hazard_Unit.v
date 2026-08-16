
`timescale 1ns / 1ps

module Hazard_Unit(
input [4:0] ID_EX_rd_in,
input [2:0] ID_EX_ResultSrc_in,  // or MemRead Result_Src_out = 3'b001
input [4:0] IF_ID_rs1_in,
input [4:0] IF_ID_rs2_in,

output reg PC_Write_out,
output reg IF_ID_Write_out,
output reg ID_EX_Flush_out
);

 always@(*)begin
//hazard detection for load use hazard
    if ((ID_EX_ResultSrc_in == 3'b001) &&
        (ID_EX_rd_in != 5'd0) &&
        ((ID_EX_rd_in == IF_ID_rs1_in) ||
         (ID_EX_rd_in == IF_ID_rs2_in))) begin

        PC_Write_out    = 1'b0;     // Stall the PC
        IF_ID_Write_out = 1'b0;    // Stall the IF/ID register
        ID_EX_Flush_out = 1'b1;    // Flush the ID/EX register
		
    end else begin
        PC_Write_out    = 1'b1; // Allow PC to write
        IF_ID_Write_out = 1'b1; // Allow IF/ID register to write
        ID_EX_Flush_out = 1'b0; // Do not flush the ID/EX register
		end
    end
endmodule











/*

Step 1: What is a Hazard Detection Unit?

Consider this program:

lw   x1,0(x2)
add  x3,x1,x4

Pipeline:

Cycle	IF	ID	EX	MEM	WB
1	lw				
2	add	lw			
3		add	lw		
4			add	lw	
5				add	lw

Now think carefully.

The add instruction needs the value of x1.

Where is that value?

At Cycle 3:

lw

is only in EX.

The memory hasn't been read yet.

The loaded data will only become available in MEM.

So even if forwarding exists,

there is nothing to forward.

The data literally doesn't exist yet.

Therefore

The CPU must wait one clock.

That is called a

Load-Use Hazard

Forwarding cannot solve it.

The Hazard Detection Unit says

WAIT!!

What happens during that wait?

Instead of

lw
add

becoming

lw
add

it becomes

lw
NOP
add

That NOP is called a

Bubble










1. Hazard Detection Unit

This handles the classic load-use hazard, for example:

lw   x1,0(x2)
add  x3,x1,x4

Forwarding alone cannot solve this because the load data isn't available until the MEM stage. The CPU must stall for one cycle.

2. Pipeline Stall

When the Hazard Detection Unit detects a load-use dependency, it will:

Freeze the PC.
Freeze the IF/ID register.
Insert a bubble (NOP) into the ID/EX register.
3. Flush Logic

When a branch or jump is taken:

Flush IF/ID.
Flush ID/EX.
Continue fetching from the branch/jump target.

This resolves control hazards.
