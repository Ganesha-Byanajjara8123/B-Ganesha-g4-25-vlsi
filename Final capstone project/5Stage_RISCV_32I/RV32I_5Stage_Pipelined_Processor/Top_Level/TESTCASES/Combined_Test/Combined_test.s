#Combined_test.s

.section .text
.globl _start
_start:

# ==================== ALU (R-type + I-type) ====================
addi x1,x0,12          # x1 = 12
addi x2,x0,10          # x2 = 10
add  x3,x1,x2          # x3 = 22
sub  x4,x1,x2          # x4 = 2
and  x5,x1,x2          # x5 = 8
or   x6,x1,x2          # x6 = 14
xor  x7,x1,x2          # x7 = 6
addi x8,x0,3           # x8 = 3
sll  x9,x1,x8          # x9  = 96
srl  x10,x1,x8         # x10 = 1
sra  x11,x1,x8         # x11 = 1
slt  x12,x2,x1         # x12 = 1
sltu x13,x1,x2         # x13 = 0
addi  x14,x0,7         # x14 = 7   <- must survive unchanged (see section 5 cross-check)
andi  x15,x14,3        # x15 = 3   <- reused as JAL link register later
ori   x16,x14,8        # x16 = 15  <- reused as a JAL marker later
xori  x17,x14,15       # x17 = 8   <- reused as a JAL marker later
slli  x18,x14,2        # x18 = 28  <- must survive unchanged (see section 6 cross-check)
srli  x19,x14,1        # x19 = 3   <- reused as x0-protect sanity later
srai  x20,x14,1        # x20 = 3
slti  x21,x14,10       # x21 = 1
sltiu x22,x14,3        # x22 = 0

# ==================== Memory + load-use hazard ====================
addi x23,x0,100        # x23 = 100
sw   x23,0(x0)          # mem[0] = 100
lw   x24,0(x0)            # x24 = 100
add  x25,x24,x24           # x25 = 200   <- load-use hazard (lw immediately used)

# ==================== Forwarding chain ====================
addi x26,x0,5          # x26 = 5
add  x27,x26,x26        # x27 = 10   <- EX-EX forward
add  x28,x27,x26         # x28 = 15   <- EX-EX + WB-EX forward

# ==================== Branch NOT taken ====================
addi x1,x0,10           # x1 = 10 (overwrites earlier ALU value)
addi x2,x0,20            # x2 = 20 (overwrites earlier ALU value)
beq  x1,x2,bnt_target
addi x29,x0,111            # x29 = 111  <- executes normally (not taken)
bnt_target:
addi x30,x0,1                # x30 = 1   <- target marker

# ==================== Branch TAKEN ====================
addi x1,x0,5             # x1 = 5
addi x2,x0,5               # x2 = 5
beq  x1,x2,bt_target
addi x14,x0,222              # must be flushed -- x14 should stay 7 from section 1
bt_target:
addi x31,x0,1                  # x31 = 1   <- target marker

# ==================== x0 protect ====================
addi x0,x0,5              # attempt via addi -> x0 stays 0
add  x0,x1,x1               # attempt via add  -> x0 stays 0
sub  x0,x2,x1                 # attempt via sub  -> x0 stays 0
lw   x0,0(x0)                   # attempt via load -> x0 stays 0
addi x19,x0,1                     # x19 = 1  <- sanity: only correct if x0 read back as 0

# ==================== JAL / JALR call-return ====================
jal  x15,jsub               # x15 = return address (PC+4 of this instruction)
addi x16,x0,1                 # x16 = 1  <- flushed on the way out, executes on return
j_done2:
ecall
halt2:
beq  x0,x0,halt2                # true program end -- ecall does not halt fetch

jsub:
addi x17,x0,1                     # x17 = 1  <- confirms subroutine reached
jalr x0,x15,0                       # return to caller, discard link
addi x18,x0,111                       # must be flushed -- x18 should stay 28 from section 1
