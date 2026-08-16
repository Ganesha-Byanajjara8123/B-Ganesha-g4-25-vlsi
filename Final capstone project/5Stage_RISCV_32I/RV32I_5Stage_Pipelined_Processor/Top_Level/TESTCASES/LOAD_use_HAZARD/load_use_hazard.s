#load_use_hazard.s

.section .text
.globl _start 
_start:

addi x1,x0,20     # x1 = 20
sw   x1,0(x0)      # mem[0] = 20
lw   x2,0(x0)       # x2 = 20     <- load
add  x3,x2,x2        # x3 = 40    <- load-use hazard, must stall 1 cycle
addi x4,x0,99         # x4 = 99   <- independent, should run normally
lw   x5,0(x0)           # x5 = 20  <- second load
addi x6,x0,7             # x6 = 7  <- NOT dependent on x5, should not stall
add  x7,x5,x6              # x7 = 27 <- dependent, but 1 instruction gap

ecall
