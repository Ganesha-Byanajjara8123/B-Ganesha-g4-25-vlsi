#branches_not_taken.s 

.section .text
.globl _start
_start:

# ---- BEQ not taken (5 != 6) ----
addi x1,x0,5
addi x2,x0,6
beq  x1,x2,beq_target
addi x10,x0,111        # should execute
beq_target:
addi x20,x0,1

# ---- BNE not taken (5 == 5) ----
addi x1,x0,5
addi x2,x0,5
bne  x1,x2,bne_target
addi x11,x0,111
bne_target:
addi x21,x0,1

# ---- BLT not taken (8 >= 3, signed) ----
addi x1,x0,8
addi x2,x0,3
blt  x1,x2,blt_target
addi x12,x0,111
blt_target:
addi x22,x0,1

# ---- BGE not taken (3 < 8, signed) ----
addi x1,x0,3
addi x2,x0,8
bge  x1,x2,bge_target
addi x13,x0,111
bge_target:
addi x23,x0,1

# ---- BLTU not taken (8 >= 3, unsigned) ----
addi x1,x0,8
addi x2,x0,3
bltu x1,x2,bltu_target
addi x14,x0,111
bltu_target:
addi x24,x0,1

# ---- BGEU not taken (3 < 8, unsigned) ----
addi x1,x0,3
addi x2,x0,8
bgeu x1,x2,bgeu_target
addi x15,x0,111
bgeu_target:
addi x25,x0,1

ecall
