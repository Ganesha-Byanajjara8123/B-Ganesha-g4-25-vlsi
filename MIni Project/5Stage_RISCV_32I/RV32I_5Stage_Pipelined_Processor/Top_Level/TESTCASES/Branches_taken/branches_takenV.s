/foss/designs/Pipeline_5Stage > ./build.sh branches_taken
make: Entering directory '/foss/designs/Pipeline_5Stage/obj_dir'
make: Nothing to be done for 'default'.
make: Leaving directory '/foss/designs/Pipeline_5Stage/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.048 2026-04-26 rev v5.048
- Verilator: Built from 0.000 MB sources in 0 modules, into 0.000 MB in 0 C++ files needing 0.000 MB
- Verilator: Walltime 0.013 s (elab=0.000, cvt=0.000, bld=0.012); cpu 0.001 s on 1 threads; allocated 29.613 MB
mem[0]  = 93
mem[1]  = 00
mem[2]  = 50 
mem[3]  = 00
mem[4]  = 13
mem[5]  = 01
mem[6]  = 50
mem[7]  = 00
mem[8]  = 63
mem[9]  = 84
mem[10] = 20
mem[11] = 00
mem[0]  = 13
mem[1]  = 05
mem[2]  = f0
mem[3]  = 06
mem[4]  = 13
mem[5]  = 0a
mem[6]  = 10
mem[7]  = 00
mem[8]  = 93
mem[9]  = 00
mem[10] = 50

========================================================
                  CYCLE 1
========================================================

----- IF -----
PC          = 00000000
Instruction = 00500093

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
Instruction = 00500113

----- IF/ID -----
PC          = 00000000
Instruction = 00500093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
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
Instruction = 00208463

----- IF/ID -----
PC          = 00000004
Instruction = 00500113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
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
Instruction = 00500093
rd          = 1
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
Instruction = 06f00513

----- IF/ID -----
PC          = 00000008
Instruction = 00208463

----- ID Decode -----
Opcode      = 1100011
funct3      = 000
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00500113
rd          = 2
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
Address    = 00000005
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
                  CYCLE 5
========================================================

----- IF -----
PC          = 00000010
Instruction = 00100a13

----- IF/ID -----
PC          = 0000000c
Instruction = 06f00513

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 10
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00208463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000005
ForwardB_Data = 00000005

----- EX -----
ALU Src1    = 00000005
ALU Src2    = 00000005
ALU Control = 0000
ALU Result  = 0000000a
StoreData   = 00000005
StoreMask   = 0001
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 000
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000005
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000010
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000005
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
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
PC          = 00000010
Instruction = 00100a13

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
Address    = 0000000a
WriteData  = 00000005
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000005
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000005
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000005

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000000  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 7
========================================================

----- IF -----
PC          = 00000014
Instruction = 00500093

----- IF/ID -----
PC          = 00000010
Instruction = 00100a13

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 20
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000005
Immediate   = 00000001
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
rd         = 8
ALU Result = 0000000a
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 0000000a

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 8
========================================================

----- IF -----
PC          = 00000018
Instruction = 00600113

----- IF/ID -----
PC          = 00000014
Instruction = 00500093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
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
Instruction = 00100a13
rd          = 20
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000005
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000005

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000005
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
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 9
========================================================

----- IF -----
PC          = 0000001c
Instruction = 00209463

----- IF/ID -----
PC          = 00000018
Instruction = 00600113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 6
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000006
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00500093
rd          = 1
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
Address    = 00000001
WriteData  = 00000005
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000004
WriteEn    = 0
WriteData  = 00000005
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
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 10
========================================================

----- IF -----
PC          = 00000020
Instruction = 06f00593

----- IF/ID -----
PC          = 0000001c
Instruction = 00209463

----- ID Decode -----
Opcode      = 1100011
funct3      = 001
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000005
ReadData2   = 00000005
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0101
ResultSrc   = 000

----- ID/EX -----
Instruction = 00600113
rd          = 2
rs1         = 0
rs2         = 6
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000006
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
ALU Src2    = 00000006
ALU Control = 0000
ALU Result  = 00000006
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
Addr       = 00000006
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 20
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 20
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000000 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 11
========================================================

----- IF -----
PC          = 00000024
Instruction = 00100a93

----- IF/ID -----
PC          = 00000020
Instruction = 06f00593

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 11
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00209463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000005
ReadData2   = 00000005
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0101
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000005
ForwardB_Data = 00000006

----- EX -----
ALU Src1    = 00000005
ALU Src2    = 00000006
ALU Control = 0101
ALU Result  = 00000140
StoreData   = 00000006
StoreMask   = 0011
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 001
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000006
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000024
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000005
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000005

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 12
========================================================

----- IF -----
PC          = 00000024
Instruction = 00100a93

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
Address    = 00000140
WriteData  = 00000006
WriteMask  = 0011

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000006
WriteMask  = 0011
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000006
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000006

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000005  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 13
========================================================

----- IF -----
PC          = 00000028
Instruction = 00300093

----- IF/ID -----
PC          = 00000024
Instruction = 00100a93

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 21
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000005
Immediate   = 00000001
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
rd         = 8
ALU Result = 00000140
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 00000140

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 14
========================================================

----- IF -----
PC          = 0000002c
Instruction = 00800113

----- IF/ID -----
PC          = 00000028
Instruction = 00300093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00100a93
rd          = 21
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000005
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000005

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000005
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
x0=00000000  x1=00000005  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 15
========================================================

----- IF -----
PC          = 00000030
Instruction = 0020c463

----- IF/ID -----
PC          = 0000002c
Instruction = 00800113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00300093
rd          = 1
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
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
ALU Src2    = 00000003
ALU Control = 0000
ALU Result  = 00000003
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
WriteData  = 00000005
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000002
WriteEn    = 0
WriteData  = 00000005
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
x0=00000000  x1=00000005  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 16
========================================================

----- IF -----
PC          = 00000034
Instruction = 06f00613

----- IF/ID -----
PC          = 00000030
Instruction = 0020c463

----- ID Decode -----
Opcode      = 1100011
funct3      = 100
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000005
ReadData2   = 00000006
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0100
ResultSrc   = 000

----- ID/EX -----
Instruction = 00800113
rd          = 2
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
Address    = 00000003
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
rd         = 21
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 21
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000000 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 17
========================================================

----- IF -----
PC          = 00000038
Instruction = 00100b13

----- IF/ID -----
PC          = 00000034
Instruction = 06f00613

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 12
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020c463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000005
ReadData2   = 00000006
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0100
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000003
ForwardB_Data = 00000008

----- EX -----
ALU Src1    = 00000003
ALU Src2    = 00000008
ALU Control = 0100
ALU Result  = 0000000b
StoreData   = 00000008
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 100
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000008
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000038
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=00000005  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 18
========================================================

----- IF -----
PC          = 00000038
Instruction = 00100b13

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
Address    = 0000000b
WriteData  = 00000008
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000008
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000006  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 19
========================================================

----- IF -----
PC          = 0000003c
Instruction = 00800093

----- IF/ID -----
PC          = 00000038
Instruction = 00100b13

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 22
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000001
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
rd         = 8
ALU Result = 0000000b
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 0000000b

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 20
========================================================

----- IF -----
PC          = 00000040
Instruction = 00300113

----- IF/ID -----
PC          = 0000003c
Instruction = 00800093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00100b13
rd          = 22
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000003
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
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 21
========================================================

----- IF -----
PC          = 00000044
Instruction = 0020d463

----- IF/ID -----
PC          = 00000040
Instruction = 00300113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00800093
rd          = 1
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
WriteData  = 00000003
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 00000003
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
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 22
========================================================

----- IF -----
PC          = 00000048
Instruction = 06f00693

----- IF/ID -----
PC          = 00000044
Instruction = 0020d463

----- ID Decode -----
Opcode      = 1100011
funct3      = 101
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000003
ReadData2   = 00000008
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0110
ResultSrc   = 000

----- ID/EX -----
Instruction = 00300113
rd          = 2
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
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
ALU Src2    = 00000003
ALU Control = 0000
ALU Result  = 00000003
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
Address    = 00000008
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
rd         = 22
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 22
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000000 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 23
========================================================

----- IF -----
PC          = 0000004c
Instruction = 00100b93

----- IF/ID -----
PC          = 00000048
Instruction = 06f00693

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 13
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020d463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000003
ReadData2   = 00000008
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0110
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000008
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000008
ALU Src2    = 00000003
ALU Control = 0110
ALU Result  = 00000001
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 101
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 0000004c
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 24
========================================================

----- IF -----
PC          = 0000004c
Instruction = 00100b93

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
Address    = 00000001
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 25
========================================================

----- IF -----
PC          = 00000050
Instruction = 00300093

----- IF/ID -----
PC          = 0000004c
Instruction = 00100b93

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 23
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000008
Immediate   = 00000001
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
rd         = 8
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 26
========================================================

----- IF -----
PC          = 00000054
Instruction = 00800113

----- IF/ID -----
PC          = 00000050
Instruction = 00300093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00100b93
rd          = 23
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000008
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000008

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000008
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 27
========================================================

----- IF -----
PC          = 00000058
Instruction = 0020e463

----- IF/ID -----
PC          = 00000054
Instruction = 00800113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00300093
rd          = 1
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
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
ALU Src2    = 00000003
ALU Control = 0000
ALU Result  = 00000003
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
WriteData  = 00000008
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000002
WriteEn    = 0
WriteData  = 00000008
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 28
========================================================

----- IF -----
PC          = 0000005c
Instruction = 06f00713

----- IF/ID -----
PC          = 00000058
Instruction = 0020e463

----- ID Decode -----
Opcode      = 1100011
funct3      = 110
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000008
ReadData2   = 00000003
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0011
ResultSrc   = 000

----- ID/EX -----
Instruction = 00800113
rd          = 2
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
Address    = 00000003
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
rd         = 23
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 23
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000000
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 29
========================================================

----- IF -----
PC          = 00000060
Instruction = 00100c13

----- IF/ID -----
PC          = 0000005c
Instruction = 06f00713

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 14
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020e463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000008
ReadData2   = 00000003
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0011
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000003
ForwardB_Data = 00000008

----- EX -----
ALU Src1    = 00000003
ALU Src2    = 00000008
ALU Control = 0011
ALU Result  = 0000000b
StoreData   = 00000008
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 110
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000008
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000060
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 30
========================================================

----- IF -----
PC          = 00000060
Instruction = 00100c13

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
Address    = 0000000b
WriteData  = 00000008
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000008
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 31
========================================================

----- IF -----
PC          = 00000064
Instruction = 00800093

----- IF/ID -----
PC          = 00000060
Instruction = 00100c13

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 24
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000001
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
rd         = 8
ALU Result = 0000000b
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 0000000b

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 32
========================================================

----- IF -----
PC          = 00000068
Instruction = 00300113

----- IF/ID -----
PC          = 00000064
Instruction = 00800093

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 1
rs1         = 0
rs2         = 8
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000008
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00100c13
rd          = 24
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000003
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000003
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
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 33
========================================================

----- IF -----
PC          = 0000006c
Instruction = 0020f463

----- IF/ID -----
PC          = 00000068
Instruction = 00300113

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 2
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 00800093
rd          = 1
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
WriteData  = 00000003
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000008
WriteEn    = 0
WriteData  = 00000003
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
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 34
========================================================

----- IF -----
PC          = 00000070
Instruction = 06f00793

----- IF/ID -----
PC          = 0000006c
Instruction = 0020f463

----- ID Decode -----
Opcode      = 1100011
funct3      = 111
funct7      = 0000000
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000003
ReadData2   = 00000008
Immediate   = 00000008
RegWrite    = 0
MemWrite    = 0
ALUSrc      = 0
ALUControl  = 0010
ResultSrc   = 000

----- ID/EX -----
Instruction = 00300113
rd          = 2
rs1         = 0
rs2         = 3
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 00000003
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
ALU Src2    = 00000003
ALU Control = 0000
ALU Result  = 00000003
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
Address    = 00000008
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
rd         = 24
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 24
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000000 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 35
========================================================

----- IF -----
PC          = 00000074
Instruction = 00100c93

----- IF/ID -----
PC          = 00000070
Instruction = 06f00793

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000011
rd          = 15
rs1         = 0
rs2         = 15
ReadData1   = 00000000
ReadData2   = 00000000
Immediate   = 0000006f
RegWrite    = 1
MemWrite    = 0
ALUSrc      = 1
ALUControl  = 0000
ResultSrc   = 000

----- ID/EX -----
Instruction = 0020f463
rd          = 8
rs1         = 1
rs2         = 2
ReadData1   = 00000003
ReadData2   = 00000008
Immediate   = 00000008
ALUSrc(EX)  = 0
ALUControl  = 0010
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 01
ForwardB_sel  = 10
ForwardA_Data = 00000008
ForwardB_Data = 00000003

----- EX -----
ALU Src1    = 00000008
ALU Src2    = 00000003
ALU Control = 0010
ALU Result  = 00000000
StoreData   = 00000003
StoreMask   = 0000
DM_WrEn     = 0

----- Branch -----
Branch Enable = 1
Branch Type   = 111
Branch Taken  = 1

----- Hazard -----
PC_Write     = 1
IF_ID_Write  = 1
ID_EX_Flush  = 1

----- EX/MEM -----
DM_WrEn    = 0
Address    = 00000003
WriteData  = 00000000
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000074
WriteEn    = 0
WriteData  = 00000000
WriteMask  = 0001
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 1
ALU Result = 00000008
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 1
WB_Data     = 00000008

----- Register File (x0-x31) -----
x0=00000000  x1=00000003  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 36
========================================================

----- IF -----
PC          = 00000074
Instruction = 00100c93

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
WriteData  = 00000003
WriteMask  = 0000

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000003
WriteMask  = 0000
ReadData   = 00000000

----- MEM/WB -----
RegWrite   = 1
rd         = 2
ALU Result = 00000003
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 2
WB_Data     = 00000003

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000008  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 37
========================================================

----- IF -----
PC          = 00000078
Instruction = 00000073

----- IF/ID -----
PC          = 00000074
Instruction = 00100c93

----- ID Decode -----
Opcode      = 0010011
funct3      = 000
funct7      = 0000000
rd          = 25
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000008
Immediate   = 00000001
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
rd         = 8
ALU Result = 00000000
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 0
WB_rd       = 8
WB_Data     = 00000000

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 38
========================================================

----- IF -----
PC          = 0000007c
Instruction = 00000000

----- IF/ID -----
PC          = 00000078
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
Instruction = 00100c93
rd          = 25
rs1         = 0
rs2         = 1
ReadData1   = 00000000
ReadData2   = 00000008
Immediate   = 00000001
ALUSrc(EX)  = 1
ALUControl  = 0000
MemWrite    = 0

----- Forwarding -----
ForwardA_sel  = 00
ForwardB_sel  = 00
ForwardA_Data = 00000000
ForwardB_Data = 00000008

----- EX -----
ALU Src1    = 00000000
ALU Src2    = 00000001
ALU Control = 0000
ALU Result  = 00000001
StoreData   = 00000008
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 39
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
WriteData  = 00000008
WriteMask  = 0001

----- Data Memory -----
Addr       = 00000000
WriteEn    = 0
WriteData  = 00000008
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 40
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
RegWrite   = 1
rd         = 25
ALU Result = 00000001
Loaded Data= 00000000

----- WB -----
WB_RegWrite = 1
WB_rd       = 25
WB_Data     = 00000001

----- Register File (x0-x31) -----
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000000 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 41
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 42
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 43
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 44
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 45
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 46
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 47
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 48
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 49
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========================================================
                  CYCLE 50
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
x0=00000000  x1=00000008  x2=00000003  x3=00000000  x4=00000000  x5=00000000
x6=00000000  x7=00000000  x8=00000000  x9=00000000  x10=00000000 x11=00000000
x12=00000000 x13=00000000 x14=00000000 x15=00000000 x16=00000000 x17=00000000
x18=00000000 x19=00000000 x20=00000001 x21=00000001 x22=00000001 x23=00000001
x24=00000001 x25=00000001 x26=00000000 x27=00000000 x28=00000000 x29=00000000
x30=00000000 x31=00000000

========== FINAL REGISTER VALUES (x0-x31) ==========
x0 = 00000000
x1 = 00000008
x2 = 00000003
x3 = 00000000
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
x20 = 00000001
x21 = 00000001
x22 = 00000001
x23 = 00000001
x24 = 00000001
x25 = 00000001
x26 = 00000000
x27 = 00000000
x28 = 00000000
x29 = 00000000
x30 = 00000000
x31 = 00000000

========== SELF-CHECK: REGISTERS ==========
PASS  x10 = 0 (expected 0)
PASS  x11 = 0 (expected 0)
PASS  x12 = 0 (expected 0)
PASS  x13 = 0 (expected 0)
PASS  x14 = 0 (expected 0)
PASS  x15 = 0 (expected 0)
PASS  x20 = 1 (expected 1)
PASS  x21 = 1 (expected 1)
PASS  x22 = 1 (expected 1)
PASS  x23 = 1 (expected 1)
PASS  x24 = 1 (expected 1)
PASS  x25 = 1 (expected 1)

========== SELF-CHECK: MEMORY ==========

========== SUMMARY ==========
>>> ALL CHECKS PASSED <<<
- tb_CPU_Top_Pipeline.v:386: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.048 2026-04-26
- Verilator: $finish at 506ns; walltime 0.016 s; speed 30.983 us/s
- Verilator: cpu 0.016 s on 1 threads; allocated 7 MB
/foss/designs/Pipeline_5Stage >
