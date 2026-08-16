/foss/designs/Pipeline_5Stage > ./build.sh memory_ops
make: Entering directory '/foss/designs/Pipeline_5Stage/obj_dir'
make: Nothing to be done for 'default'.
make: Leaving directory '/foss/designs/Pipeline_5Stage/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.048 2026-04-26 rev v5.048
- Verilator: Built from 0.000 MB sources in 0 modules, into 0.000 MB in 0 C++ files needing 0.000 MB
- Verilator: Walltime 0.012 s (elab=0.000, cvt=0.000, bld=0.011); cpu 0.001 s on 1 threads; allocated 29.613 MB
mem[0]  = 93
mem[1]  = 00
mem[2]  = 40 
mem[3]  = 06
mem[4]  = 13
mem[5]  = 01
mem[6]  = 80
mem[7]  = 0c
mem[8]  = 23
mem[9]  = 20
mem[10] = 10
mem[11] = 00
mem[0]  = 23
mem[1]  = 22
mem[2]  = 20
mem[3]  = 00
mem[4]  = 83
mem[5]  = 21
mem[6]  = 00
mem[7]  = 00
mem[8]  = 03
mem[9]  = 22
mem[10] = 40

========================================================
                  CYCLE 1
========================================================

----- IF -----
PC          = 00000000
Instruction = 06400093

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
Instruction = 0c800113

----- IF/ID -----
PC          = 00000000
Instruction = 06400093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 1
rs1         = 0
rs2         = 4
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000064
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
Instruction = 00102023

----- IF/ID -----
PC          = 00000004
Instruction = 0c800113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000110
rd          = 2
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 000000c8
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 06400093
rd          = 1
rs1         = 0
rs2         = 4
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000064
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
ALU Src2    = 00000064
ALU Control = 0000
ALU Result  = 00000064
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
Addr       = 00000064
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
Instruction = 00202223

----- IF/ID -----
PC          = 00000008
Instruction = 00102023

----- ID Decode -----
Opcode      = 0100011
funct3      = 010
funct7      = 0000000
rd          = 0
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
RegWrite    = 0
MemWrite    = 1
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0c800113
rd          = 2
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 000000c8
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
ALU Src2    = 000000c8
ALU Control = 0000
ALU Result  = 000000c8
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
Address    = 00000064
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 000000c8
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
Instruction = 00002183

----- IF/ID -----
PC          = 0000000c
Instruction = 00202223

----- ID Decode -----
Opcode      = 0100011
funct3      = 010
funct7      = 0000000
rd          = 4
rs1         = 0
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000004
RegWrite    = 0
MemWrite    = 1
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00102023
rd          = 0
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000000
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 1

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 01
ForwardA_Data = 00000000
ForwardB_Data = 00000064

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000000
ALU Control = 0000
ALU Result  = 00000000
StoreData   = 00000064
StoreMask   = 1111
DM_WrEn     = 1

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
Address    = 000000c8
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
rd         = 1
ALU Result = 00000064
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000064

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
Instruction = 00402203

----- IF/ID -----
PC          = 00000010
Instruction = 00002183

----- ID Decode -----
Opcode      = 0000011
funct3      = 010
funct7      = 0000000
rd          = 3
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
Instruction = 00202223
rd          = 4
rs1         = 0
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000004
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 1

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 01
ForwardA_Data = 00000000
ForwardB_Data = 000000c8

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000004
ALU Control = 0000
ALU Result  = 00000004
StoreData   = 000000c8
StoreMask   = 1111
DM_WrEn     = 1

----- Branch -----
Branch Enable = 0
Branch Type   = 010
Branch Taken  = 0

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 0

----- EX/MEM -----
DM_WrEn    = 1
Address    = 00000000
WriteData  = 00000064
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000004
WriteEn    = 1
WriteData  = 00000064
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 000000c8
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 000000c8

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=00000000  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 03700293

----- IF/ID -----
PC          = 00000014
Instruction = 00402203

----- ID Decode -----
Opcode      = 0000011
funct3      = 010
funct7      = 0000000
rd          = 4
rs1         = 0
rs2         = 4
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000004
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 001

----- ID/EX -----
Instruction = 00002183
rd          = 3
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
DM_WrEn    = 1
Address    = 00000004
WriteData  = 000000c8
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000000
WriteEn    = 1
WriteData  = 000000c8
WriteMask  = 1111
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
x0=00000000  x1=00000064  x2=000000c8  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00502423

----- IF/ID -----
PC          = 00000018
Instruction = 03700293

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000001
rd          = 5
rs1         = 0
rs2         = 23
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000037
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00402203
rd          = 4
rs1         = 0
rs2         = 4
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000004
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
ALU Src2    = 00000004
ALU Control = 0000
ALU Result  = 00000004
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
Address    = 00000000
WriteData  = 00000000
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000004
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 1111
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 4
ALU Result = 00000004
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 4
WB_Data     = 00000004

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00802303

----- IF/ID -----
PC          = 0000001c
Instruction = 00502423

----- ID Decode -----
Opcode      = 0100011
funct3      = 010
funct7      = 0000000
rd          = 8
rs1         = 0
rs2         = 5
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 1
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 03700293
rd          = 5
rs1         = 0
rs2         = 23
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000037
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
ALU Src2    = 00000037
ALU Control = 0000
ALU Result  = 00000037
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
Address    = 00000004
WriteData  = 00000000
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000036
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 1111
ReadData   = 000000c8

----- MEM/WB -----
RegWrite   = 1
rd         = 3
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 1
WB_rd       = 3
WB_Data     = 00000064

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000000  x4=00000000  x5=00000000
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
Instruction = 00302623

----- IF/ID -----
PC          = 00000020
Instruction = 00802303

----- ID Decode -----
Opcode      = 0000011
funct3      = 010
funct7      = 0000000
rd          = 6
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 001

----- ID/EX -----
Instruction = 00502423
rd          = 8
rs1         = 0
rs2         = 5
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 1

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 10
ForwardA_Data = 00000000
ForwardB_Data = 00000037

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000008
ALU Control = 0000
ALU Result  = 00000008
StoreData   = 00000037
StoreMask   = 1111
DM_WrEn     = 1

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
Address    = 00000037
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 4
ALU Result = 00000004
Loaded Data= 000000c8

----- WB -----
WB_RegWrite = 1
WB_rd       = 4
WB_Data     = 000000c8

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=00000000  x5=00000000
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
Instruction = 00c02383

----- IF/ID -----
PC          = 00000024
Instruction = 00302623

----- ID Decode -----
Opcode      = 0100011
funct3      = 010
funct7      = 0000000
rd          = 12
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000064
Immediate   = 0000000c
RegWrite    = 0
MemWrite    = 1
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00802303
rd          = 6
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
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
ALU Src2    = 00000008
ALU Control = 0000
ALU Result  = 00000008
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
DM_WrEn    = 1
Address    = 00000008
WriteData  = 00000037
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000008
WriteEn    = 1
WriteData  = 00000037
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 5
ALU Result = 00000037
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 5
WB_Data     = 00000037

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000000
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
Instruction = 00000073

----- IF/ID -----
PC          = 00000028
Instruction = 00c02383

----- ID Decode -----
Opcode      = 0000011
funct3      = 010
funct7      = 0000000
rd          = 7
rs1         = 0
rs2         = 12
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000000c
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 001

----- ID/EX -----
Instruction = 00302623
rd          = 12
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000064
Immediate   = 0000000c
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 1

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000064

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 0000000c
ALU Control = 0000
ALU Result  = 0000000c
StoreData   = 00000064
StoreMask   = 1111
DM_WrEn     = 1

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
Address    = 00000008
WriteData  = 00000000
WriteMask  = 1111

----- Data Memory -----
Addr       = 0000000c
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 1111
ReadData   = 00000037

----- MEM/WB -----
RegWrite   = 0
rd         = 8
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
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
Instruction = 00c02383
rd          = 7
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
DM_WrEn    = 1
Address    = 0000000c
WriteData  = 00000064
WriteMask  = 1111

----- Data Memory -----
Addr       = 0000000c
WriteEn    = 1
WriteData  = 00000064
WriteMask  = 1111
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 6
ALU Result = 00000008
Loaded Data= 00000037

----- WB -----
WB_RegWrite = 1
WB_rd       = 6
WB_Data     = 00000037

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
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
Address    = 0000000c
WriteData  = 00000000
WriteMask  = 1111

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 1111
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 12
ALU Result = 0000000c
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 12
WB_Data     = 0000000c

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 1
rd         = 7
ALU Result = 0000000c
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 1
WB_rd       = 7
WB_Data     = 00000064

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
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
ReadData   = 00000064

----- MEM/WB -----
RegWrite   = 0
rd         = 0
ALU Result = 00000000
Loaded Data= 00000064

----- WB -----
WB_RegWrite = 0
WB_rd       = 0
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000064  x2=000000c8  x3=00000064  x4=000000c8  x5=00000037
x6=00000037  x7=00000064  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========== FINAL REGISTER VALUES (x0-x31) ==========
x0 = 00000000
x1 = 00000064
x2 = 000000c8
x3 = 00000064
x4 = 000000c8
x5 = 00000037
x6 = 00000037
x7 = 00000064
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
PASS  x3 = 100 (expected 100)
PASS  x4 = 200 (expected 200)
PASS  x6 = 55 (expected 55)
PASS  x7 = 100 (expected 100)

========== SELF-CHECK: MEMORY ==========
PASS  mem[0] = 100 (expected 100)
PASS  mem[4] = 200 (expected 200)
PASS  mem[8] = 55 (expected 55)
PASS  mem[12] = 100 (expected 100)

========== SUMMARY ==========
>>> ALL CHECKS PASSED <<<
- tb_CPU_Top_Pipeline.v:386: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.048 2026-04-26
- Verilator: $finish at 256ns; walltime 0.013 s; speed 19.472 us/s
- Verilator: cpu 0.013 s on 1 threads; allocated 7 MB
/foss/designs/Pipeline_5Stage >
