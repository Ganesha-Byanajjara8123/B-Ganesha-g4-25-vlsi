#forwarding_chain.s 

.section .text
.globl _start
_start:
 
addi x1,x0,5      # x1 = 5
add  x2,x1,x1      # x2 = 10   (EX-EX forward: x1 produced 1 instr earlier)
add  x3,x2,x1      # x3 = 15   (x2: EX-EX forward, x1: WB-EX forward)
add  x4,x3,x2      # x4 = 25   (x3: EX-EX forward, x2: WB-EX forward)
add  x5,x4,x3      # x5 = 40   (chain continues)
sub  x6,x5,x4      # x6 = 15

ecall
