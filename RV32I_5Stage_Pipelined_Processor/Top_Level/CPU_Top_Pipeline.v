`timescale 1ns / 1ps

module CPU_Top_Pipeline(
    //decalreing external wires
    input         clk,
    input         rst
);

//decalreing internal wire of each Units

//PC_Unit.v wires
wire [31:0] PC_out;
wire        Branch_Taken;
wire [31:0] Target_Address;
wire [31:0] PC_plus4_out;

//Hazard_Unit.v wires
wire PC_Write_out;
wire IF_ID_Write_out;
wire ID_EX_Flush_out;

//PC_Src_MUX.v wires
wire [31:0] Next_PC_Out;
wire PC_Sel;

assign PC_Sel =
    ID_Jump_out |
    (ID_Branch_Enable_out & Branch_Taken_Out);
	
//Instruction_memory.v wire
wire [31:0] Instruction_Out;

//IF_ID_Register.v wires
wire [31:0]IF_PC_out;
wire [31:0]IF_PC_plus4_out;
wire [31:0]IF_instruction_out;

//Decoder.v wires
wire       Reg_WrEn_Out;
wire [2:0] Imm_Type_Out;
wire       ladder_Src_Out;
wire       ALU_Src_Out;
wire [3:0] ALU_Control_Out;
wire       decoder_dm_wren;
wire [7:0] Branch_Cond_Out;
wire       Load_Unsigned_Out;
wire [1:0] Load_Size_Out;
wire [2:0] Result_Src_Out;
wire       Jump_Out;

//Extend_Unit.v wires
wire [31:0] Imm_out;

//register_file.v wires
wire [31:0] src_data1_out;
wire [31:0] src_data2_out;

//ID_EX_Register.v wires
wire       ID_RegWrite_out;
wire       ID_MemWrite_out;
wire       ID_ALU_Src_Sel_out;
wire       ID_Branch_Enable_out;
wire       ID_Load_Unsigned_out;
wire       ID_Jump_out;
wire            ID_ladder_Src_out;
wire [3:0]  ID_ALU_Control_out;
wire [2:0]  ID_Branch_Type_sel_out;
wire [2:0]  ID_Result_Src_out;
wire [1:0]  ID_Load_Size_out;
wire [4:0]  ID_rd_out;           //instructions rd_in,rs1_in,rs2_in
wire [4:0]  ID_rs1_out;
wire [4:0]  ID_rs2_out;
wire [31:0] ID_PC_out;
wire [31:0] ID_PC_plus4_out;
wire [31:0] ID_ReadData1_out;
wire [31:0] ID_ReadData2_out;
wire [31:0] ID_Imm_Data_out;
wire [31:0] ID_instruction_out;


//ALU_Src_MUX.v wire
wire [31:0] src2_out;
wire [31:0] EX_src2;

//ALU.v wire
wire [31:0] ALU_Result_out;

//Imm_adder.v wires
wire [31:0] Added_data_out;

//Store_Unit.v wires
wire [31:0] DM_Addr_Out;
wire [31:0] DM_WrData_Out;
wire [3:0]  DM_WrMask_Out;
wire        store_dm_wren;

//Branch_Comparator.v
wire Branch_Taken_Out;
//wire Branch_Enable;

//these 2 for Branch instr.
//assign Branch_Taken   = Branch_Taken_Out;
//assign Target_Address = Next_PC_Out;

//these 2 for JAL & JALR
assign Branch_Taken   = PC_Sel;
assign Target_Address = Next_PC_Out;

//EX_MEM_Register.v wires
wire        EX_RegWrite_out;
wire        EX_DM_WrEn_out;
wire        EX_Load_Unsigned_out;
wire [31:0] EX_PC_plus4_out;
wire [31:0] EX_Imm_Data_out;
wire [31:0] EX_Added_Data_out;
wire [31:0] EX_ALU_Result_out;
wire [31:0] EX_DM_WrData_out;
wire [3:0]  EX_DM_WrMask_out;
wire [1:0]  EX_Load_Size_out;
wire [4:0]  EX_rd_out;
wire [2:0]  EX_Result_Src_out;

// Forwarding Unit wires
wire [1:0] ForwardA_out;
wire [1:0] ForwardB_out;


// Forward MUX outputs
wire [31:0] ForwardA_Data_out;
wire [31:0] ForwardB_Data_out;


//Data_memory.v wire
wire [31:0] Read_Data_Out;

//Load_Unit.v wires
wire [31:0] Loaded_Data_Out;

//MEM_WB_Register.v wires
wire            WB_RegWrite_out;
wire [2:0]  WB_Result_Src_out;
wire [4:0]  WB_rd_out;
wire [31:0] WB_ALU_Result_out;
wire [31:0] WB_Loaded_data_out;
wire [31:0] WB_PC_plus4_out;
wire [31:0] WB_Imm_out;
wire [31:0] WB_Added_data_out;


//from WrBack MUX wire
wire [31:0]WB_Data_Out;

wire ECALL;
wire EBREAK;

assign ECALL =
    (ID_instruction_out == 32'h00000073) &&
    ID_RegWrite_out == 0;
assign EBREAK = (IF_instruction_out == 32'h00100073);

//for Controle Hazard
wire Hazard_Flush;

// Branch/Jump Flush
wire Flush;
assign Flush = PC_Sel;

// Combined Flush
wire ID_EX_Flush;
assign ID_EX_Flush = Hazard_Flush | Flush;

//module instantiation

//PC_unit.v
PC_Unit u_pc(
.clk(clk),
.rst(rst),
.PC_Write_in(PC_Write_out),
.Next_PC_in(Next_PC_Out),
.PC_out(PC_out),
.PC_plus4_out(PC_plus4_out)
);

//Hazard_Unit.v
Hazard_Unit u_HZ(
.ID_EX_rd_in(ID_rd_out),
.ID_EX_ResultSrc_in(ID_Result_Src_out),
.IF_ID_rs1_in(IF_instruction_out[19:15]),
.IF_ID_rs2_in(IF_instruction_out[24:20]),
.PC_Write_out(PC_Write_out),
.IF_ID_Write_out(IF_ID_Write_out),
.ID_EX_Flush_out(Hazard_Flush)
);

//PC_Src_MUX.v
PC_Src_MUX u_PCsrcmux(
    .PC_plus4_in(PC_plus4_out),
    .Added_data_in(Added_data_out),
    .PC_Sel(PC_Sel),
    .Next_PC_Out(Next_PC_Out)
);

//Instruction_memory.v
Instruction_memory u_instrmem(
.PC_in(PC_out),
.Instruction_Out(Instruction_Out)
);

//IF_ID_Register.v
IF_ID_Register u_IFID(
.clk(clk),
.rst(rst),

     //Inputs from IF stage
.IF_ID_Write_in(IF_ID_Write_out),  //from Hazard unit
.IF_ID_Flush_in(Flush),                         //for Controle Hazard
.IF_PC_in(PC_out),
.IF_PC_plus4_in(PC_plus4_out),
.IF_instruction_in(Instruction_Out),

     // Outputs to ID stage
.IF_PC_out(IF_PC_out),
.IF_PC_plus4_out(IF_PC_plus4_out),
.IF_instruction_out(IF_instruction_out)
);

//Decoder.v
Decoder u_decoder (
.opcode_in(IF_instruction_out[6:0]),
.funct3_in(IF_instruction_out[14:12]),
.funct7_in(IF_instruction_out[31:25]),
.Reg_WrEn_Out(Reg_WrEn_Out),
.Imm_Type_Out(Imm_Type_Out),
.ladder_Src_Out(ladder_Src_Out),
.ALU_Src_Out(ALU_Src_Out),
.ALU_Control_Out(ALU_Control_Out),
.DM_WrEn_Out(decoder_dm_wren),
.Branch_Cond_Out(Branch_Cond_Out),
.Load_Unsigned_Out(Load_Unsigned_Out),
.Load_Size_Out(Load_Size_Out),
.Result_Src_Out(Result_Src_Out),
.Jump_Out(Jump_Out)
);

        //Extend_Unit.v
Extend_Unit u_ext(
.instr_in(IF_instruction_out),
.Imm_type_in(Imm_Type_Out),
.Imm_out(Imm_out)
);

//register_file.v
register_file u_rf(
.clk(clk),
.rst(rst),
.WrEn_in(WB_RegWrite_out),
.des_addr_in(WB_rd_out),
.des_data_in(WB_Data_Out),
.src_addr1_in(IF_instruction_out[19:15]),
.src_addr2_in(IF_instruction_out[24:20]),
.src_data1_out(src_data1_out),
.src_data2_out(src_data2_out)
);

//ID_EX_Register.v
ID_EX_Register u_IDEX(
.clk(clk),
.rst(rst),

   //Inputs from the ID stage
.ID_RegWrite_in(Reg_WrEn_Out),
.ID_MemWrite_in(decoder_dm_wren),
.ID_ALU_Src_Sel_in(ALU_Src_Out),
.ID_Branch_Enable_in(Branch_Cond_Out[0]),      //as like in the Single cycle
.ID_Load_Unsigned_in(Load_Unsigned_Out),
.ID_Jump_in(Jump_Out),
.ID_ladder_Src_in(ladder_Src_Out),
.ID_EX_Flush_in(ID_EX_Flush),
.ID_ALU_Control_in(ALU_Control_Out),
.ID_Branch_Type_sel_in(IF_instruction_out[14:12]),
.ID_Result_Src_in(Result_Src_Out),
.ID_Load_Size_in(Load_Size_Out),
.ID_rd_in(IF_instruction_out[11:7]),
.ID_rs1_in(IF_instruction_out[19:15]),
.ID_rs2_in(IF_instruction_out[24:20]),
.ID_PC_in(IF_PC_out),
.ID_PC_plus4_in(IF_PC_plus4_out),
.ID_ReadData1_in(src_data1_out),
.ID_ReadData2_in(src_data2_out),
.ID_Imm_Data_in(Imm_out),
.ID_instruction_in(IF_instruction_out),

   // Outputs to EX stage
.ID_RegWrite_out(ID_RegWrite_out),
.ID_MemWrite_out(ID_MemWrite_out),
.ID_ALU_Src_Sel_out(ID_ALU_Src_Sel_out),
.ID_Branch_Enable_out(ID_Branch_Enable_out),
.ID_Load_Unsigned_out(ID_Load_Unsigned_out),
.ID_Jump_out(ID_Jump_out),
.ID_ladder_Src_out(ID_ladder_Src_out),
.ID_ALU_Control_out(ID_ALU_Control_out),
.ID_Branch_Type_sel_out(ID_Branch_Type_sel_out),
.ID_Result_Src_out(ID_Result_Src_out),
.ID_Load_Size_out(ID_Load_Size_out),
.ID_rd_out(ID_rd_out),
.ID_rs1_out(ID_rs1_out),
.ID_rs2_out(ID_rs2_out),
.ID_PC_out(ID_PC_out),
.ID_PC_plus4_out(ID_PC_plus4_out),
.ID_ReadData1_out(ID_ReadData1_out),
.ID_ReadData2_out(ID_ReadData2_out),
.ID_Imm_Data_out(ID_Imm_Data_out),
.ID_instruction_out(ID_instruction_out)

);

//ALU_Src_MUX.v
ALU_Src_MUX u_alusrc(
.reg_data_in(ForwardB_Data_out),  //from ForwardB
.imm_data_in(ID_Imm_Data_out),
.ALU_Src_Sel(ID_ALU_Src_Sel_out),
.src2_out(EX_src2)
);

//ALU.v
ALU u_alu (
.src1_in(ForwardA_Data_out),
.src2_in(EX_src2),
.ALU_Control_in(ID_ALU_Control_out),
.ALU_Result_out(ALU_Result_out)
);

//Imm_adder.v
Imm_Adder u_immadd (
.ladder_src_in(ID_ladder_Src_out),
.PC_in(ID_PC_out),
.Src_Data1_in(ID_ReadData1_out),
.imm_Data_in(ID_Imm_Data_out),
.Added_data_out(Added_data_out)
);

//Branch_Comparator.v
Branch_Comparator u_BranchComp(
.RD1_in(ForwardA_Data_out),
.RD2_in(ForwardB_Data_out),
.Branch_Type_sel(ID_Branch_Type_sel_out),
.Branch_Enable(ID_Branch_Enable_out),
.Branch_Taken_Out(Branch_Taken_Out)
);

// Store_Unit.v
 Store_Unit u_store (
.DM_WrEn_In(ID_MemWrite_out),
.Func3_In(ID_instruction_out[14:12]),
.Added_Data_In(Added_data_out),
.Src_Data2_In(ForwardB_Data_out),
.DM_Addr_Out(DM_Addr_Out),
.DM_WrData_Out(DM_WrData_Out),
.DM_WrMask_Out(DM_WrMask_Out),
.DM_WrEn_Out(store_dm_wren)
 );

//EX_MEM_Register.v
EX_MEM_Register u_EXMEM(
.clk(clk),
.rst(rst),

    //Inputs from the EX stage
.EX_RegWrite_in(ID_RegWrite_out),
.EX_DM_WrEn_in(store_dm_wren),
.EX_Load_Unsigned_In(ID_Load_Unsigned_out),
.EX_PC_plus4_in(ID_PC_plus4_out),
.EX_Imm_Data_in(ID_Imm_Data_out),
.EX_Added_Data_in(Added_data_out),
.EX_ALU_Result_in(ALU_Result_out),
.EX_DM_WrData_in(DM_WrData_Out),
.EX_DM_WrMask_in(DM_WrMask_Out),
.EX_Load_Size_In(ID_Load_Size_out),
.EX_rd_in(ID_rd_out),
.EX_Result_Src_in(ID_Result_Src_out),

    // Outputs from EX stage
.EX_RegWrite_out(EX_RegWrite_out),
.EX_DM_WrEn_out(EX_DM_WrEn_out),
.EX_Load_Unsigned_out(EX_Load_Unsigned_out),
.EX_PC_plus4_out(EX_PC_plus4_out),
.EX_Imm_Data_out(EX_Imm_Data_out),
.EX_Added_Data_out(EX_Added_Data_out),
.EX_ALU_Result_out(EX_ALU_Result_out),
.EX_DM_WrData_out(EX_DM_WrData_out),
.EX_DM_WrMask_out(EX_DM_WrMask_out),
.EX_Load_Size_out(EX_Load_Size_out),
.EX_rd_out(EX_rd_out),
.EX_Result_Src_out(EX_Result_Src_out)
);

//Forwarding_Unit.v
Forwarding_Unit u_forward(
.ID_rs1_in(ID_rs1_out),
.ID_rs2_in(ID_rs2_out),
.EX_rd_in(EX_rd_out),
.EX_RegWrite_in(EX_RegWrite_out),
.WB_rd_in(WB_rd_out),
.WB_RegWrite_in(WB_RegWrite_out),
.ForwardA_out(ForwardA_out),
.ForwardB_out(ForwardB_out)
);

//Forward_MUX_3to1.v for ForwardA
Forward_MUX_3to1 u_ForwardA(
.Reg_Data_in(ID_ReadData1_out),
.EX_Data_in(EX_ALU_Result_out),
.WB_Data_in(WB_Data_Out),
.Forward_Sel_in(ForwardA_out),
.Forward_Data_out(ForwardA_Data_out)
);

//Forward_MUX_3to1.v for ForwardB
Forward_MUX_3to1 u_ForwardB(
.Reg_Data_in(ID_ReadData2_out),
.EX_Data_in(EX_ALU_Result_out),
.WB_Data_in(WB_Data_Out),
.Forward_Sel_in(ForwardB_out),
.Forward_Data_out(ForwardB_Data_out)
);



 //Data_memory.v
 Data_Memory u_DM(
 .clk(clk),
 .DM_Addr_in(EX_ALU_Result_out),
 .DM_WrData_in(EX_DM_WrData_out),
 .DM_WrMask_in(EX_DM_WrMask_out),
 .DM_WrEn_in(EX_DM_WrEn_out),
 .Read_Data_Out(Read_Data_Out)
 );

 //Load_Unit.v
 Load_Unit u_load(
 .Read_Data_In(Read_Data_Out),
 .Load_Size_In(EX_Load_Size_out),
 .Load_Unsigned_In(EX_Load_Unsigned_out),
 .Loaded_Data_Out(Loaded_Data_Out)
 );

 //MEM_WB_Register.v
 MEM_WB_Register u_MEMWB(
.clk(clk),
.rst(rst),

   //Inputs from MEM stage
.WB_RegWrite_in(EX_RegWrite_out),
.WB_Result_Src_in(EX_Result_Src_out),
.WB_rd_in(EX_rd_out),
.WB_ALU_Result_in(EX_ALU_Result_out),
.WB_Loaded_data_in(Loaded_Data_Out),   //from load unit
.WB_PC_plus4_in(EX_PC_plus4_out),
.WB_Imm_in(EX_Imm_Data_out),
.WB_Added_data_in(EX_Added_Data_out),

   //Outputs from MEM stage
.WB_RegWrite_out(WB_RegWrite_out),
.WB_Result_Src_out(WB_Result_Src_out),
.WB_rd_out(WB_rd_out),
.WB_ALU_Result_out(WB_ALU_Result_out),
.WB_Loaded_data_out(WB_Loaded_data_out),
.WB_PC_plus4_out(WB_PC_plus4_out),
.WB_Imm_out(WB_Imm_out),
.WB_Added_data_out(WB_Added_data_out)
);

//WB_MUX.v
WB_MUX u_WBmux(
.ALU_Result_in(WB_ALU_Result_out),
.Loaded_data_in(WB_Loaded_data_out),
.PC_plus4_in(WB_PC_plus4_out),
.Imm_in(WB_Imm_out),
.Added_data_in(WB_Added_data_out),
.Result_Src_in(WB_Result_Src_out),
.WB_Data_Out(WB_Data_Out)
);

endmodule








/*
IF
 │
 ▼
IF/ID
 │
 ▼
ID
 │
 ▼
ID/EX
 │
 ▼
EX
 │
 ▼
EX/MEM
 │
 ▼
MEM
 │
 ▼
MEM/WB
 │
 ▼
WB MUX
 │
 ▼
Register File


 
 
 /* path
 
 Which module produces this signal?
Which pipeline register should capture it before the next stage?

 PC

Instruction Memory

IF_ID_Register

Decoder

Extend_Unit

Register File

ID_EX_Register

ALU

Branch Comparator

ImmAdder

Store Unit

EX_MEM_Register

Data Memory

Load Unit

MEM_WB_Register

WB MUX
 





| Module              | Stage          |
| ------------------- | -------------- |
| PC Unit             | IF             |
| PC Src MUX          | IF             |
| Instruction Memory  | IF             |
| IF/ID Register      | Between IF-ID  |
| Decoder             | ID             |
| Register File       | ID             |
| Immediate Generator | ID             |
| ID/EX Register      | Between ID-EX  |
| ALU Src MUX         | EX             |
| ALU                 | EX             |
| Branch Comparator   | EX             |
| Immediate Adder     | EX             |
| Store Unit          | EX             |
| EX/MEM Register     | Between EX-MEM |
| Data Memory         | MEM            |
| MEM/WB Register     | Between MEM-WB |
| WB MUX              | WB             |
































 
