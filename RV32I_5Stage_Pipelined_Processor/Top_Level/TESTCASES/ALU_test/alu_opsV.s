/foss/designs/Pipeline_5Stage > ./build.sh  alu_ops
make: Entering directory '/foss/designs/Pipeline_5Stage/obj_dir'
make: Nothing to be done for 'default'.
make: Leaving directory '/foss/designs/Pipeline_5Stage/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.048 2026-04-26 rev v5.048
- Verilator: Built from 0.000 MB sources in 0 modules, into 0.000 MB in 0 C++ files needing 0.000 MB
- Verilator: Walltime 0.040 s (elab=0.000, cvt=0.000, bld=0.037); cpu 0.003 s on 1 threads; allocated 29.617 MB
mem[0]  = 93
mem[1]  = 00
mem[2]  = c0
mem[3]  = 00
mem[4]  = 13
mem[5]  = 01
mem[6]  = a0
mem[7]  = 00
mem[8]  = b3
mem[9]  = 81
mem[10] = 20
mem[11] = 00
mem[0]  = 33
mem[1]  = 82
mem[2]  = 20
mem[3]  = 40
mem[4]  = b3
mem[5]  = f2
mem[6]  = 20
mem[7]  = 00
mem[8]  = 33
mem[9]  = e3
mem[10] = 20

========================================================
                  CYCLE 1
========================================================

----- IF -----
PC          = 00000000
Instruction = 00c00093

----- IF/ID -----
PC          = 00000000
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 2
========================================================

----- IF -----
PC          = 00000004
Instruction = 00a00113

----- IF/ID -----
PC          = 00000000
Instruction = 00c00093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
rs1         = 0
rs2         = 12
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000000c
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 3
========================================================

----- IF -----
PC          = 00000008
Instruction = 002081b3

----- IF/ID -----
PC          = 00000004
Instruction = 00a00113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 10
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000000a
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00c00093
rd          = 1
rs1         = 0
rs2         = 12
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000000c
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 0000000c
ALU Control = 0000
ALU Result  = 0000000c
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 0000000c
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 4
========================================================

----- IF -----
PC          = 0000000c
Instruction = 40208233

----- IF/ID -----
PC          = 00000008
Instruction = 002081b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 000
funct7      = 0000000
rd          = 3
rs1         = 1
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00a00113
rd          = 2
rs1         = 0
rs2         = 10
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000000a
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 0000000a
ALU Control = 0000
ALU Result  = 0000000a
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 0000000c
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 0000000a
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 5
========================================================

----- IF -----
PC          = 00000010
Instruction = 0020f2b3

----- IF/ID -----
PC          = 0000000c
Instruction = 40208233

----- ID Decode -----
Opcode      = 0110011
funct3      = 000
funct7      = 0100000
rd          = 4
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000402
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0001
ResultSrc   = 000

----- ID/EX -----
Instruction = 002081b3
rd          = 3
rs1         = 1
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000002
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 0000
ALU Result  = 00000016
StoreData   = 0000000a
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 0000000a
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000002
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 0000000c
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 0000000c

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 6
========================================================

----- IF -----
PC          = 00000014
Instruction = 0020e333

----- IF/ID -----
PC          = 00000010
Instruction = 0020f2b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 111
funct7      = 0000000
rd          = 5
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0010
ResultSrc   = 000

----- ID/EX -----
Instruction = 40208233
rd          = 4
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000402
ALUSrc(EX)  = 0
ALUControl  = 0001
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 01
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 0001
ALU Result  = 00000002
StoreData   = 0000000a
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000016
WriteData  = 0000000a
WriteMask  = 0001

----- Data Memory -----
Addr       = 0000040e
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 0000000a
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 0000000a

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 7
========================================================

----- IF -----
PC          = 00000018
Instruction = 0020c3b3

----- IF/ID -----
PC          = 00000014
Instruction = 0020e333

----- ID Decode -----
Opcode      = 0110011
funct3      = 110
funct7      = 0000000
rd          = 6
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0011
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020f2b3
rd          = 5
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
ALUSrc(EX)  = 0
ALUControl  = 0010
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 0010
ALU Result  = 00000008
StoreData   = 0000000a
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 111
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000002
WriteData  = 0000000a
WriteMask  = 0001

----- Data Memory -----
Addr       = 0000000e
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 3
ALU Result = 00000016
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 3
WB_Data     = 00000016

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 8
========================================================

----- IF -----
PC          = 0000001c
Instruction = 00300413

----- IF/ID -----
PC          = 00000018
Instruction = 0020c3b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 100
funct7      = 0000000
rd          = 7
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0100
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020e333
rd          = 6
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
ALUSrc(EX)  = 0
ALUControl  = 0011
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 0011
ALU Result  = 0000000e
StoreData   = 0000000a
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 110
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000008
WriteData  = 0000000a
WriteMask  = 0000

----- Data Memory -----
Addr       = 0000000e
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 4
ALU Result = 00000002
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 4
WB_Data     = 00000002

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 9
========================================================

----- IF -----
PC          = 00000020
Instruction = 008094b3

----- IF/ID -----
PC          = 0000001c
Instruction = 00300413

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 8
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000016
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020c3b3
rd          = 7
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
ALUSrc(EX)  = 0
ALUControl  = 0100
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 0100
ALU Result  = 00000006
StoreData   = 0000000a
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 100
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 0000000e
WriteData  = 0000000a
WriteMask  = 0000

----- Data Memory -----
Addr       = 0000000e
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 5
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 5
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 10
========================================================

----- IF -----
PC          = 00000024
Instruction = 0080d533

----- IF/ID -----
PC          = 00000020
Instruction = 008094b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 001
funct7      = 0000000
rd          = 9
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0101
ResultSrc   = 000

----- ID/EX -----
Instruction = 00300413
rd          = 8
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000016
Immediate   = 00000003
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000016

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000003
ALU Control = 0000
ALU Result  = 00000003
StoreData   = 00000016
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000006
WriteData  = 0000000a
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000002
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 6
ALU Result = 0000000e
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 6
WB_Data     = 0000000e

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 11
========================================================

----- IF -----
PC          = 00000028
Instruction = 4080d5b3

----- IF/ID -----
PC          = 00000024
Instruction = 0080d533

----- ID Decode -----
Opcode      = 0110011
funct3      = 101
funct7      = 0000000
rd          = 10
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0110
ResultSrc   = 000

----- ID/EX -----
Instruction = 008094b3
rd          = 9
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0101
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 10
ForwardA_Data = 0000000c
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 00000003
ALU Control = 0101
ALU Result  = 00000060
StoreData   = 00000003
StoreMask   = 0011
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 001
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 00000016
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000014
WriteEn    = 0
WriteData  = 00000016
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 7
ALU Result = 00000006
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 7
WB_Data     = 00000006

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 12
========================================================

----- IF -----
PC          = 0000002c
Instruction = 00112633

----- IF/ID -----
PC          = 00000028
Instruction = 4080d5b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 101
funct7      = 0100000
rd          = 11
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000003
Immediate   = 00000408
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0111
ResultSrc   = 000

----- ID/EX -----
Instruction = 0080d533
rd          = 10
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000000
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0110
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 01
ForwardA_Data = 0000000c
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 00000003
ALU Control = 0110
ALU Result  = 00000001
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 101
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000060
WriteData  = 00000003
WriteMask  = 0011

----- Data Memory -----
Addr       = 00000014
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0011
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 8
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 8
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 13
========================================================

----- IF -----
PC          = 00000030
Instruction = 0020b6b3

----- IF/ID -----
PC          = 0000002c
Instruction = 00112633

----- ID Decode -----
Opcode      = 0110011
funct3      = 010
funct7      = 0000000
rd          = 12
rs1         = 2
rs2         = 1
ReadData1   = 0000000a
ReadData2   = 0000000c
Immediate   = 00000001
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 1000
ResultSrc   = 000

----- ID/EX -----
Instruction = 4080d5b3
rd          = 11
rs1         = 1
rs2         = 8
ReadData1   = 0000000c
ReadData2   = 00000003
Immediate   = 00000408
ALUSrc(EX)  = 0
ALUControl  = 0111
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000c
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 00000003
ALU Control = 0111
ALU Result  = 00000001
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 101
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000001
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000414
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 9
ALU Result = 00000060
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 9
WB_Data     = 00000060

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 14
========================================================

----- IF -----
PC          = 00000034
Instruction = 00700713

----- IF/ID -----
PC          = 00000030
Instruction = 0020b6b3

----- ID Decode -----
Opcode      = 0110011
funct3      = 011
funct7      = 0000000
rd          = 13
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 1001
ResultSrc   = 000

----- ID/EX -----
Instruction = 00112633
rd          = 12
rs1         = 2
rs2         = 1
ReadData1   = 0000000a
ReadData2   = 0000000c
Immediate   = 00000001
ALUSrc(EX)  = 0
ALUControl  = 1000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000a
ForwardB_Data = 0000000c

----- EX -----
ALU Src1    = 0000000a
ALU Src2    = 0000000c
ALU Control = 1000
ALU Result  = 00000001
StoreData   = 0000000c
StoreMask   = 1111
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 010
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000001
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 0000000a
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 10
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 10
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 15
========================================================

----- IF -----
PC          = 00000038
Instruction = 00377793

----- IF/ID -----
PC          = 00000034
Instruction = 00700713

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 14
rs1         = 0
rs2         = 7
ReadData1   = 00000000
ReadData2   = 00000006
Immediate   = 00000007
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020b6b3
rd          = 13
rs1         = 1
rs2         = 2
ReadData1   = 0000000c
ReadData2   = 0000000a
Immediate   = 00000002
ALUSrc(EX)  = 0
ALUControl  = 1001
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 0000000c
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000c
ALU Src2    = 0000000a
ALU Control = 1001
ALU Result  = 00000000
StoreData   = 0000000a
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 011
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000001
WriteData  = 0000000c
WriteMask  = 1111

----- Data Memory -----
Addr       = 0000000e
WriteEn    = 0
WriteData  = 0000000c
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 11
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 11
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 16
========================================================

----- IF -----
PC          = 0000003c
Instruction = 00876813

----- IF/ID -----
PC          = 00000038
Instruction = 00377793

----- ID Decode -----
Opcode      = 0010011
funct3      = 111
funct7      = 0000000
rd          = 15
rs1         = 14
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000016
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0010
ResultSrc   = 000

----- ID/EX -----
Instruction = 00700713
rd          = 14
rs1         = 0
rs2         = 7
ReadData1   = 00000000
ReadData2   = 00000006
Immediate   = 00000007
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000006

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000007
ALU Control = 0000
ALU Result  = 00000007
StoreData   = 00000006
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 0000000a
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000006
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 12
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 12
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 17
========================================================

----- IF -----
PC          = 00000040
Instruction = 00f74893

----- IF/ID -----
PC          = 0000003c
Instruction = 00876813

----- ID Decode -----
Opcode      = 0010011
funct3      = 110
funct7      = 0000000
rd          = 16
rs1         = 14
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0011
ResultSrc   = 000

----- ID/EX -----
Instruction = 00377793
rd          = 15
rs1         = 14
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000016
Immediate   = 00000003
ALUSrc(EX)  = 1
ALUControl  = 0010
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 10
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 00000016

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000003
ALU Control = 0010
ALU Result  = 00000003
StoreData   = 00000016
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 111
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000007
WriteData  = 00000006
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000002
WriteEn    = 0
WriteData  = 00000006
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 13
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 13
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 18
========================================================

----- IF -----
PC          = 00000044
Instruction = 00271913

----- IF/ID -----
PC          = 00000040
Instruction = 00f74893

----- ID Decode -----
Opcode      = 0010011
funct3      = 100
funct7      = 0000000
rd          = 17
rs1         = 14
rs2         = 15
ReadData1   = 00000007
ReadData2   = 00000000
Immediate   = 0000000f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0100
ResultSrc   = 000

----- ID/EX -----
Instruction = 00876813
rd          = 16
rs1         = 14
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000008
ALUSrc(EX)  = 1
ALUControl  = 0011
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000008
ALU Control = 0011
ALU Result  = 0000000f
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 110
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 00000016
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 00000016
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 14
ALU Result = 00000007
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 14
WB_Data     = 00000007

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 19
========================================================

----- IF -----
PC          = 00000048
Instruction = 00175993

----- IF/ID -----
PC          = 00000044
Instruction = 00271913

----- ID Decode -----
Opcode      = 0010011
funct3      = 001
funct7      = 0000000
rd          = 18
rs1         = 14
rs2         = 2
ReadData1   = 00000007
ReadData2   = 0000000a
Immediate   = 00000002
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0101
ResultSrc   = 000

----- ID/EX -----
Instruction = 00f74893
rd          = 17
rs1         = 14
rs2         = 15
ReadData1   = 00000007
ReadData2   = 00000000
Immediate   = 0000000f
ALUSrc(EX)  = 1
ALUControl  = 0100
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 01
ForwardA_Data = 00000007
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 0000000f
ALU Control = 0100
ALU Result  = 00000008
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 100
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 0000000f
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000016
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 15
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 15
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 20
========================================================

----- IF -----
PC          = 0000004c
Instruction = 40175a13

----- IF/ID -----
PC          = 00000048
Instruction = 00175993

----- ID Decode -----
Opcode      = 0010011
funct3      = 101
funct7      = 0000000
rd          = 19
rs1         = 14
rs2         = 1
ReadData1   = 00000007
ReadData2   = 0000000c
Immediate   = 00000001
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0110
ResultSrc   = 000

----- ID/EX -----
Instruction = 00271913
rd          = 18
rs1         = 14
rs2         = 2
ReadData1   = 00000007
ReadData2   = 0000000a
Immediate   = 00000002
ALUSrc(EX)  = 1
ALUControl  = 0101
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000002
ALU Control = 0101
ALU Result  = 0000001c
StoreData   = 0000000a
StoreMask   = 0011
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 001
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000008
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 16
ALU Result = 0000000f
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 16
WB_Data     = 0000000f

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 21
========================================================

----- IF -----
PC          = 00000050
Instruction = 00a72a93

----- IF/ID -----
PC          = 0000004c
Instruction = 40175a13

----- ID Decode -----
Opcode      = 0010011
funct3      = 101
funct7      = 0100000
rd          = 20
rs1         = 14
rs2         = 1
ReadData1   = 00000007
ReadData2   = 0000000c
Immediate   = 00000401
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0111
ResultSrc   = 000

----- ID/EX -----
Instruction = 00175993
rd          = 19
rs1         = 14
rs2         = 1
ReadData1   = 00000007
ReadData2   = 0000000c
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0110
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 0000000c

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000001
ALU Control = 0110
ALU Result  = 00000003
StoreData   = 0000000c
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 101
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 0000001c
WriteData  = 0000000a
WriteMask  = 0011

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0011
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 17
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 17
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 22
========================================================

----- IF -----
PC          = 00000054
Instruction = 00373b13

----- IF/ID -----
PC          = 00000050
Instruction = 00a72a93

----- ID Decode -----
Opcode      = 0010011
funct3      = 010
funct7      = 0000000
rd          = 21
rs1         = 14
rs2         = 10
ReadData1   = 00000007
ReadData2   = 00000001
Immediate   = 0000000a
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 1000
ResultSrc   = 000

----- ID/EX -----
Instruction = 40175a13
rd          = 20
rs1         = 14
rs2         = 1
ReadData1   = 00000007
ReadData2   = 0000000c
Immediate   = 00000401
ALUSrc(EX)  = 1
ALUControl  = 0111
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 0000000c

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000401
ALU Control = 0111
ALU Result  = 00000003
StoreData   = 0000000c
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 101
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 0000000c
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000408
WriteEn    = 0
WriteData  = 0000000c
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 18
ALU Result = 0000001c
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 18
WB_Data     = 0000001c

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 23
========================================================

----- IF -----
PC          = 00000058
Instruction = 00000073

----- IF/ID -----
PC          = 00000054
Instruction = 00373b13

----- ID Decode -----
Opcode      = 0010011
funct3      = 011
funct7      = 0000000
rd          = 22
rs1         = 14
rs2         = 3
ReadData1   = 00000007
ReadData2   = 00000016
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 1001
ResultSrc   = 000

----- ID/EX -----
Instruction = 00a72a93
rd          = 21
rs1         = 14
rs2         = 10
ReadData1   = 00000007
ReadData2   = 00000001
Immediate   = 0000000a
ALUSrc(EX)  = 1
ALUControl  = 1000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 00000001

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 0000000a
ALU Control = 1000
ALU Result  = 00000001
StoreData   = 00000001
StoreMask   = 1111
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 010
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 0000000c
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000010
WriteEn    = 0
WriteData  = 0000000c
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 19
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 19
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 24
========================================================

----- IF -----
PC          = 0000005c
Instruction = 00000000

----- IF/ID -----
PC          = 00000058
Instruction = 00000073

----- ID Decode -----
Opcode      = 1110011
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00373b13
rd          = 22
rs1         = 14
rs2         = 3
ReadData1   = 00000007
ReadData2   = 00000016
Immediate   = 00000003
ALUSrc(EX)  = 1
ALUControl  = 1001
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000007
ForwardB_Data = 00000016

----- EX -----
ALU Src1    = 00000007
ALU Src2    = 00000003
ALU Control = 1001
ALU Result  = 00000000
StoreData   = 00000016
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 011
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000001
WriteData  = 00000001
WriteMask  = 1111

----- Data Memory -----
Addr       = 0000000a
WriteEn    = 0
WriteData  = 00000001
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 20
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 20
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 25
========================================================

----- IF -----
PC          = 00000060
Instruction = 00000000

----- IF/ID -----
PC          = 0000005c
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000073
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000016
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000016
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 21
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 21
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 26
========================================================

----- IF -----
PC          = 00000064
Instruction = 00000000

----- IF/ID -----
PC          = 00000060
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 22
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 22
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 27
========================================================

----- IF -----
PC          = 00000068
Instruction = 00000000

----- IF/ID -----
PC          = 00000064
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 28
========================================================

----- IF -----
PC          = 0000006c
Instruction = 00000000

----- IF/ID -----
PC          = 00000068
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 29
========================================================

----- IF -----
PC          = 00000070
Instruction = 00000000

----- IF/ID -----
PC          = 0000006c
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 30
========================================================

----- IF -----
PC          = 00000074
Instruction = 00000000

----- IF/ID -----
PC          = 00000070
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 31
========================================================

----- IF -----
PC          = 00000078
Instruction = 00000000

----- IF/ID -----
PC          = 00000074
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 32
========================================================

----- IF -----
PC          = 0000007c
Instruction = 00000000

----- IF/ID -----
PC          = 00000078
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 33
========================================================

----- IF -----
PC          = 00000080
Instruction = 00000000

----- IF/ID -----
PC          = 0000007c
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 34
========================================================

----- IF -----
PC          = 00000084
Instruction = 00000000

----- IF/ID -----
PC          = 00000080
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 35
========================================================

----- IF -----
PC          = 00000088
Instruction = 00000000

----- IF/ID -----
PC          = 00000084
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 36
========================================================

----- IF -----
PC          = 0000008c
Instruction = 00000000

----- IF/ID -----
PC          = 00000088
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 37
========================================================

----- IF -----
PC          = 00000090
Instruction = 00000000

----- IF/ID -----
PC          = 0000008c
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 38
========================================================

----- IF -----
PC          = 00000094
Instruction = 00000000

----- IF/ID -----
PC          = 00000090
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 39
========================================================

----- IF -----
PC          = 00000098
Instruction = 00000000

----- IF/ID -----
PC          = 00000094
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 40
========================================================

----- IF -----
PC          = 0000009c
Instruction = 00000000

----- IF/ID -----
PC          = 00000098
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 41
========================================================

----- IF -----
PC          = 000000a0
Instruction = 00000000

----- IF/ID -----
PC          = 0000009c
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 42
========================================================

----- IF -----
PC          = 000000a4
Instruction = 00000000

----- IF/ID -----
PC          = 000000a0
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 43
========================================================

----- IF -----
PC          = 000000a8
Instruction = 00000000

----- IF/ID -----
PC          = 000000a4
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 44
========================================================

----- IF -----
PC          = 000000ac
Instruction = 00000000

----- IF/ID -----
PC          = 000000a8
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 45
========================================================

----- IF -----
PC          = 000000b0
Instruction = 00000000

----- IF/ID -----
PC          = 000000ac
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 46
========================================================

----- IF -----
PC          = 000000b4
Instruction = 00000000

----- IF/ID -----
PC          = 000000b0
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 47
========================================================

----- IF -----
PC          = 000000b8
Instruction = 00000000

----- IF/ID -----
PC          = 000000b4
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 48
========================================================

----- IF -----
PC          = 000000bc
Instruction = 00000000

----- IF/ID -----
PC          = 000000b8
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 49
========================================================

----- IF -----
PC          = 000000c0
Instruction = 00000000

----- IF/ID -----
PC          = 000000bc
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 50
========================================================

----- IF -----
PC          = 000000c4
Instruction = 00000000

----- IF/ID -----
PC          = 000000c0
Instruction = 00000000

----- ID Decode -----
Opcode      = 0000000
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000000

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 0
Branch Type   = 000
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000000
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000c  x2=0000000a  x3=00000016  x4=00000002  x5=00000008
x6=0000000e  x7=00000006  x8=00000003  x9=00000060  x10=00000001 x11=00000001
x12=00000001 x13=00000000 x14=00000007 x15=00000003 x16=0000000f x17=00000008
x18=0000001c x19=00000003 x20=00000003 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========== FINAL REGISTER VALUES (x0-x31) ==========
x0 = 00000000
x1 = 0000000c
x2 = 0000000a
x3 = 00000016
x4 = 00000002
x5 = 00000008
x6 = 0000000e
x7 = 00000006
x8 = 00000003
x9 = 00000060
x10 = 00000001
x11 = 00000001
x12 = 00000001
x13 = 00000000
x14 = 00000007
x15 = 00000003
x16 = 0000000f
x17 = 00000008
x18 = 0000001c
x19 = 00000003
x20 = 00000003
x21 = 00000001
x22 = 00000000
x23 = 00000000
x24 = 00000000
x25 = 00000000
x26 = 00000000
x27 = 00000000
x28 = 00000000
x29 = 00000000
x30 = 00000000
x31 = 00000000

========== SELF-CHECK: REGISTERS ==========
PASS  x3 = 22 (expected 22)
PASS  x4 = 2 (expected 2)
PASS  x5 = 8 (expected 8)
PASS  x6 = 14 (expected 14)
PASS  x7 = 6 (expected 6)
PASS  x9 = 96 (expected 96)
PASS  x10 = 1 (expected 1)
PASS  x11 = 1 (expected 1)
PASS  x12 = 1 (expected 1)
PASS  x13 = 0 (expected 0)
PASS  x15 = 3 (expected 3)
PASS  x16 = 15 (expected 15)
PASS  x17 = 8 (expected 8)
PASS  x18 = 28 (expected 28)
PASS  x19 = 3 (expected 3)
PASS  x20 = 3 (expected 3)
PASS  x21 = 1 (expected 1)
PASS  x22 = 0 (expected 0)

========== SELF-CHECK: MEMORY ==========

========== SUMMARY ==========
>>> ALL CHECKS PASSED <<<
- tb_CPU_Top_Pipeline.v:386: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.048 2026-04-26
- Verilator: $finish at 506ns; walltime 0.018 s; speed 28.848 us/s
- Verilator: cpu 0.018 s on 1 threads; allocated 7 MB
/foss/designs/Pipeline_5Stage >