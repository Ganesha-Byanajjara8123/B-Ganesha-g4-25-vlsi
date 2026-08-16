/foss/designs/Pipeline_5Stage > ./build.sh x0_protect
make: Entering directory '/foss/designs/Pipeline_5Stage/obj_dir'
make: Nothing to be done for 'default'.
make: Leaving directory '/foss/designs/Pipeline_5Stage/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.048 2026-04-26 rev v5.048
- Verilator: Built from 0.000 MB sources in 0 modules, into 0.000 MB in 0 C++ files needing 0.000 MB
- Verilator: Walltime 0.014 s (elab=0.000, cvt=0.000, bld=0.013); cpu 0.001 s on 1 threads; allocated 29.617 MB
mem[0]  = 13
mem[1]  = 00
mem[2]  = 50
mem[3]  = 00
mem[4]  = 93
mem[5]  = 00
mem[6]  = a0
mem[7]  = 00
mem[8]  = 33
mem[9]  = 80
mem[10] = 10
mem[11] = 00
mem[0]  = 13
mem[1]  = 01
mem[2]  = 40
mem[3]  = 01
mem[4]  = 33
mem[5]  = 00
mem[6]  = 11
mem[7]  = 40
mem[8]  = 03
mem[9]  = 20
mem[10] = 00

========================================================
                  CYCLE 1
========================================================

----- IF -----
PC          = 00000000
Instruction = 00500013

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
Instruction = 00a00093

----- IF/ID -----
PC          = 00000000
Instruction = 00500013

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 5
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000005
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
Instruction = 00108033

----- IF/ID -----
PC          = 00000004
Instruction = 00a00093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
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
Instruction = 00500013
rd          = 0
rs1         = 0
rs2         = 5
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000005
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
ALU Src2    = 00000005
ALU Control = 0000
ALU Result  = 00000005
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
Addr       = 00000004
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
Instruction = 01400113

----- IF/ID -----
PC          = 00000008
Instruction = 00108033

----- ID Decode -----
Opcode      = 0110011
funct3      = 000
funct7      = 0000000
rd          = 0
rs1         = 1
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000001
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00a00093
rd          = 1
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
Address    = 00000005
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
Instruction = 40110033

----- IF/ID -----
PC          = 0000000c
Instruction = 01400113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 20
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000014
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00108033
rd          = 0
rs1         = 1
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000001
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 10
ForwardB_sel  = 10
ForwardA_Data = 0000000a
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 0000000a
ALU Src2    = 0000000a
ALU Control = 0000
ALU Result  = 00000014
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
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 0
ALU Result = 00000005
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 0
WB_Data     = 00000005

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
Instruction = 00002003

----- IF/ID -----
PC          = 00000010
Instruction = 40110033

----- ID Decode -----
Opcode      = 0110011
funct3      = 000
funct7      = 0100000
rd          = 0
rs1         = 2
rs2         = 1
ReadData1   = 00000000
ReadData2   = 0000000a
Immediate   = 00000401
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0001
ResultSrc   = 000

----- ID/EX -----
Instruction = 01400113
rd          = 2
rs1         = 0
rs2         = 20
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000014
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
ALU Src2    = 00000014
ALU Control = 0000
ALU Result  = 00000014
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
Address    = 00000014
WriteData  = 0000000a
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000014
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 0000000a
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 0000000a

----- Register File (x0-x31) -----
x0=00000000  x1=00000000  x2=00000000  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00100193

----- IF/ID -----
PC          = 00000014
Instruction = 00002003

----- ID Decode -----
Opcode      = 0000011
funct3      = 010
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 001

----- ID/EX -----
Instruction = 40110033
rd          = 0
rs1         = 2
rs2         = 1
ReadData1   = 00000000
ReadData2   = 0000000a
Immediate   = 00000401
ALUSrc(EX)  = 0
ALUControl  = 0001
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 10
ForwardB_sel  = 00
ForwardA_Data = 00000014
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 00000014
ALU Src2    = 0000000a
ALU Control = 0001
ALU Result  = 0000000a
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
Address    = 00000014
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000400
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 0
ALU Result = 00000014
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 0
WB_Data     = 00000014

----- Register File (x0-x31) -----
x0=00000000  x1=0000000a  x2=00000000  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00000073

----- IF/ID -----
PC          = 00000018
Instruction = 00100193

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 3
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 0000000a
Immediate   = 00000001
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00002003
rd          = 0
rs1         = 0
rs2         = 0
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
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
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000000
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
Address    = 0000000a
WriteData  = 0000000a
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000014
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000014

----- Register File (x0-x31) -----
x0=00000000  x1=0000000a  x2=00000000  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00000000

----- IF/ID -----
PC          = 0000001c
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
Instruction = 00100193
rd          = 3
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 0000000a
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 0000000a

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
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
Address    = 00000000
WriteData  = 00000000
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 0
ALU Result = 0000000a
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 0
WB_Data     = 0000000a

----- Register File (x0-x31) -----
x0=00000000  x1=0000000a  x2=00000014  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00000000

----- IF/ID -----
PC          = 00000020
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
Address    = 00000001
WriteData  = 0000000a
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 0000000a
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 0
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=0000000a  x2=00000014  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00000000

----- IF/ID -----
PC          = 00000024
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
rd         = 3
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 3
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=0000000a  x2=00000014  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 12
========================================================

----- IF -----
PC          = 0000002c
Instruction = 00000000

----- IF/ID -----
PC          = 00000028
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 13
========================================================

----- IF -----
PC          = 00000030
Instruction = 00000000

----- IF/ID -----
PC          = 0000002c
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 14
========================================================

----- IF -----
PC          = 00000034
Instruction = 00000000

----- IF/ID -----
PC          = 00000030
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 15
========================================================

----- IF -----
PC          = 00000038
Instruction = 00000000

----- IF/ID -----
PC          = 00000034
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 16
========================================================

----- IF -----
PC          = 0000003c
Instruction = 00000000

----- IF/ID -----
PC          = 00000038
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 17
========================================================

----- IF -----
PC          = 00000040
Instruction = 00000000

----- IF/ID -----
PC          = 0000003c
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 18
========================================================

----- IF -----
PC          = 00000044
Instruction = 00000000

----- IF/ID -----
PC          = 00000040
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 19
========================================================

----- IF -----
PC          = 00000048
Instruction = 00000000

----- IF/ID -----
PC          = 00000044
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 20
========================================================

----- IF -----
PC          = 0000004c
Instruction = 00000000

----- IF/ID -----
PC          = 00000048
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 21
========================================================

----- IF -----
PC          = 00000050
Instruction = 00000000

----- IF/ID -----
PC          = 0000004c
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 22
========================================================

----- IF -----
PC          = 00000054
Instruction = 00000000

----- IF/ID -----
PC          = 00000050
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 23
========================================================

----- IF -----
PC          = 00000058
Instruction = 00000000

----- IF/ID -----
PC          = 00000054
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
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
x0=00000000  x1=0000000a  x2=00000014  x3=00000001  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========== FINAL REGISTER VALUES (x0-x31) ==========
x0 = 00000000
x1 = 0000000a
x2 = 00000014
x3 = 00000001
x4 = 00000000
x5 = 00000000
x6 = 00000000
x7 = 00000000
x8 = 00000000
x9 = 00000000
x10 = 00000000
x11 = 00000000
x12 = 00000000
x13 = 00000000
x14 = 00000000
x15 = 00000000
x16 = 00000000
x17 = 00000000
x18 = 00000000
x19 = 00000000
x20 = 00000000
x21 = 00000000
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
PASS  x0 = 0 (expected 0)
PASS  x1 = 10 (expected 10)
PASS  x2 = 20 (expected 20)
PASS  x3 = 1 (expected 1)

========== SELF-CHECK: MEMORY ==========

========== SUMMARY ==========
>>> ALL CHECKS PASSED <<<
- tb_CPU_Top_Pipeline.v:386: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.048 2026-04-26
- Verilator: $finish at 256ns; walltime 0.009 s; speed 27.278 us/s
- Verilator: cpu 0.009 s on 1 threads; allocated 7 MB
/foss/designs/Pipeline_5Stage >
