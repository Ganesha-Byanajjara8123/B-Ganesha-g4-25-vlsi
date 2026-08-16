#x0_protect.s

.section .text
.globl _start
_start:

addi x0,x0,5        # attempt write via addi -> must stay 0
addi x1,x0,10         # x1 = 10 (also confirms x0 reads as 0 as a source)
add  x0,x1,x1           # attempt write via add -> must stay 0
addi x2,x0,20              # x2 = 20 (x0 still must read 0)
sub  x0,x2,x1                 # attempt write via sub -> must stay 0
lw   x0,0(x0)                    # attempt write via load -> must stay 0
addi x3,x0,1                        # x3 = 1, final sanity check that x0 still reads 0

ecall
