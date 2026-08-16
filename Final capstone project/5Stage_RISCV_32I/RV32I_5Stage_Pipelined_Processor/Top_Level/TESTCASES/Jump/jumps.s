#jumps.s

.section .text
.globl _start
_start: 

jal  x1,subroutine   # x1 = return address (PC+4 of this instruction = 0x04)
addi x9,x0,1          # x9 = 1  <- flushed on the way OUT, executes on the way BACK (after jalr returns here)
j_done:
ecall
halt:
beq  x0,x0,halt        # stop here for good -- ecall does not halt fetch on this
                        # hardware, so without this, PC would keep incrementing
                        # straight into the subroutine code below and re-run it

subroutine:
addi x2,x0,1            # x2 = 1  <- confirms subroutine was reached
jalr x0,x1,0              # return to caller (address held in x1), discard link
addi x3,x0,111              # must be flushed — control never falls through here if jalr works



