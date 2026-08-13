#alu_ops.s

.section .text
.globl _start
_start:

# ---- R-type ALU ----
addi x1,x0,12          # x1 = 12
addi x2,x0,10          # x2 = 10
add  x3,x1,x2          # x3 = 22
sub  x4,x1,x2          # x4 = 2
and  x5,x1,x2          # x5 = 8   (1100 & 1010)
or   x6,x1,x2          # x6 = 14  (1100 | 1010)
xor  x7,x1,x2          # x7 = 6   (1100 ^ 1010)

addi x8,x0,3           # x8 = 3   (shift amount)
sll  x9,x1,x8          # x9  = 12 << 3 = 96
srl  x10,x1,x8         # x10 = 12 >> 3 = 1
sra  x11,x1,x8         # x11 = 12 >>> 3 = 1  (positive, same as srl)

slt  x12,x2,x1         # x12 = (10 < 12) signed  = 1
sltu x13,x1,x2         # x13 = (12 < 10) unsigned = 0

# ---- I-type ALU ----
addi  x14,x0,7         # x14 = 7
andi  x15,x14,3        # x15 = 7 & 3  = 3
ori   x16,x14,8        # x16 = 7 | 8  = 15
xori  x17,x14,15       # x17 = 7 ^ 15 = 8
slli  x18,x14,2        # x18 = 7 << 2 = 28
srli  x19,x14,1        # x19 = 7 >> 1 = 3
srai  x20,x14,1        # x20 = 7 >>> 1 = 3  (positive, same as srli)
slti  x21,x14,10       # x21 = (7 < 10) signed  = 1
sltiu x22,x14,3        # x22 = (7 < 3) unsigned = 0

ecall
