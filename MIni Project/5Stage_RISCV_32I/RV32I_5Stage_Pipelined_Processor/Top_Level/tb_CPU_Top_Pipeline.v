//====================================================================
// tb_CPU_Top_Pipeline.v
//
// RTL-designer-level testbench:
//   - Readable per-cycle signal dump (toggle with VERBOSE)
//   - Automatic PASS/FAIL check against expected final register
//     AND memory values (no more eyeballing hex dumps)
//   - Two lightweight runtime checks for invariants this project
//     has actually broken before: no write to x0, and branch-taken
//     must flush ID/EX in the same cycle.
//====================================================================
`timescale 1ns / 1ps

module tb_CPU_Top_Pipeline;

parameter NUM_CYCLES = 80;   // generous default, covers all current tests
parameter VERBOSE    = 1;    // 1 = full per-cycle trace, 0 = summary only

reg clk, rst;
integer cycle    = 0;
integer errors   = 0;
integer i;
reg     sim_done = 0;   // set true right before $finish so trailing edge is silent

CPU_Top_Pipeline dut (
    .clk(clk),
    .rst(rst)
);

always #5 clk = ~clk;

//====================================================================
// EXPECTED VALUES — full register file (x0-x31) and up to 8
// memory-word checks, selected automatically per test.
//====================================================================
reg [31:0] expected     [0:31];
reg        check_reg    [0:31];    // 1 = verify this register at the end

reg [31:0] mem_addr     [0:7];
reg [31:0] expected_mem [0:7];
reg        check_mem    [0:7];     // 1 = verify this memory word at the end

initial begin
    for (i = 0; i <= 31; i = i + 1) check_reg[i] = 0;
    for (i = 0; i <= 7;  i = i + 1) check_mem[i]  = 0;

`ifdef TEST_ALU_OPS
    // alu_ops.s : all R-type and I-type ALU operations
    check_reg[3]  = 1; expected[3]  = 32'd22;
    check_reg[4]  = 1; expected[4]  = 32'd2;
    check_reg[5]  = 1; expected[5]  = 32'd8;
    check_reg[6]  = 1; expected[6]  = 32'd14;
    check_reg[7]  = 1; expected[7]  = 32'd6;
    check_reg[9]  = 1; expected[9]  = 32'd96;
    check_reg[10] = 1; expected[10] = 32'd1;
    check_reg[11] = 1; expected[11] = 32'd1;
    check_reg[12] = 1; expected[12] = 32'd1;
    check_reg[13] = 1; expected[13] = 32'd0;
    check_reg[15] = 1; expected[15] = 32'd3;
    check_reg[16] = 1; expected[16] = 32'd15;
    check_reg[17] = 1; expected[17] = 32'd8;
    check_reg[18] = 1; expected[18] = 32'd28;
    check_reg[19] = 1; expected[19] = 32'd3;
    check_reg[20] = 1; expected[20] = 32'd3;
    check_reg[21] = 1; expected[21] = 32'd1;
    check_reg[22] = 1; expected[22] = 32'd0;

`elsif TEST_FORWARDING_CHAIN
    // forwarding_chain.s : dependency chain stressing EX-EX and WB-EX forwarding
    check_reg[2] = 1; expected[2] = 32'd10;
    check_reg[3] = 1; expected[3] = 32'd15;
    check_reg[4] = 1; expected[4] = 32'd25;
    check_reg[5] = 1; expected[5] = 32'd40;
    check_reg[6] = 1; expected[6] = 32'd15;

`elsif TEST_LOAD_USE_HAZARD
    // load_use_hazard.s : lw followed immediately by dependent instruction
    check_reg[2] = 1; expected[2] = 32'd20;
    check_reg[3] = 1; expected[3] = 32'd40;
    check_reg[4] = 1; expected[4] = 32'd99;
    check_reg[5] = 1; expected[5] = 32'd20;
    check_reg[6] = 1; expected[6] = 32'd7;
    check_reg[7] = 1; expected[7] = 32'd27;

`elsif TEST_MEMORY_OPS
    // memory_ops.s : multiple addresses, store-to-load timing
    check_reg[3] = 1; expected[3] = 32'd100;
    check_reg[4] = 1; expected[4] = 32'd200;
    check_reg[6] = 1; expected[6] = 32'd55;
    check_reg[7] = 1; expected[7] = 32'd100;

    check_mem[0] = 1; mem_addr[0] = 32'd0;  expected_mem[0] = 32'd100;
    check_mem[1] = 1; mem_addr[1] = 32'd4;  expected_mem[1] = 32'd200;
    check_mem[2] = 1; mem_addr[2] = 32'd8;  expected_mem[2] = 32'd55;
    check_mem[3] = 1; mem_addr[3] = 32'd12; expected_mem[3] = 32'd100;

`elsif TEST_BRANCHES_TAKEN
    // branches_taken.s : all six branch types, all conditions TRUE
    check_reg[10] = 1; expected[10] = 32'd0;
    check_reg[11] = 1; expected[11] = 32'd0;
    check_reg[12] = 1; expected[12] = 32'd0;
    check_reg[13] = 1; expected[13] = 32'd0;
    check_reg[14] = 1; expected[14] = 32'd0;
    check_reg[15] = 1; expected[15] = 32'd0;
    check_reg[20] = 1; expected[20] = 32'd1;
    check_reg[21] = 1; expected[21] = 32'd1;
    check_reg[22] = 1; expected[22] = 32'd1;
    check_reg[23] = 1; expected[23] = 32'd1;
    check_reg[24] = 1; expected[24] = 32'd1;
    check_reg[25] = 1; expected[25] = 32'd1;

`elsif TEST_BRANCHES_NOT_TAKEN
    // branches_not_taken.s : all six branch types, all conditions FALSE
    check_reg[10] = 1; expected[10] = 32'd111;
    check_reg[11] = 1; expected[11] = 32'd111;
    check_reg[12] = 1; expected[12] = 32'd111;
    check_reg[13] = 1; expected[13] = 32'd111;
    check_reg[14] = 1; expected[14] = 32'd111;
    check_reg[15] = 1; expected[15] = 32'd111;
    check_reg[20] = 1; expected[20] = 32'd1;
    check_reg[21] = 1; expected[21] = 32'd1;
    check_reg[22] = 1; expected[22] = 32'd1;
    check_reg[23] = 1; expected[23] = 32'd1;
    check_reg[24] = 1; expected[24] = 32'd1;
    check_reg[25] = 1; expected[25] = 32'd1;

`elsif TEST_JUMPS
    // jumps.s : JAL + JALR call/return pattern
    check_reg[1] = 1; expected[1] = 32'd4;
    check_reg[2] = 1; expected[2] = 32'd1;
    check_reg[3] = 1; expected[3] = 32'd0;
    check_reg[9] = 1; expected[9] = 32'd1;

`elsif TEST_X0_PROTECT
    // x0_protect.s : x0 must stay 0 regardless of write attempts
    check_reg[0] = 1; expected[0] = 32'd0;
    check_reg[1] = 1; expected[1] = 32'd10;
    check_reg[2] = 1; expected[2] = 32'd20;
    check_reg[3] = 1; expected[3] = 32'd1;

`elsif TEST_BRANCH_TAKEN
    // branch_taken.s (earlier single-case test) : x1=5,x2=5, beq TAKEN
    check_reg[7]  = 1; expected[7]  = 32'd0;
    check_reg[8]  = 1; expected[8]  = 32'd0;
    check_reg[9]  = 1; expected[9]  = 32'd2;
    check_reg[10] = 1; expected[10] = 32'd0;

`elsif TEST_BRANCH_NOT_TAKEN
    // branch_not_taken.s (earlier single-case test)
    check_reg[7]  = 1; expected[7]  = 32'd99;
    check_reg[8]  = 1; expected[8]  = 32'd1;
    check_reg[9]  = 1; expected[9]  = 32'd2;
    check_reg[10] = 1; expected[10] = 32'd55;
    check_reg[11] = 1; expected[11] = 32'd7;

`elsif TEST_BRANCH_COMBINED
    // branch_combined.s : not-taken segment then taken segment
    check_reg[1]  = 1; expected[1]  = 32'd5;
    check_reg[2]  = 1; expected[2]  = 32'd5;
    check_reg[3]  = 1; expected[3]  = 32'd0;
    check_reg[4]  = 1; expected[4]  = 32'd0;
    check_reg[6]  = 1; expected[6]  = 32'd0;
    check_reg[7]  = 1; expected[7]  = 32'd99;
    check_reg[8]  = 1; expected[8]  = 32'd1;
    check_reg[9]  = 1; expected[9]  = 32'd2;
    check_reg[10] = 1; expected[10] = 32'd55;
    check_reg[11] = 1; expected[11] = 32'd9;

`elsif TEST_REGRESSION_ALL
    // all.s : arithmetic + memory + branch + logic + jump
    check_reg[1]  = 1; expected[1]  = 32'd10;
    check_reg[2]  = 1; expected[2]  = 32'd20;
    check_reg[3]  = 1; expected[3]  = 32'd30;
    check_reg[4]  = 1; expected[4]  = 32'd10;
    check_reg[5]  = 1; expected[5]  = 32'd30;
    check_reg[6]  = 1; expected[6]  = 32'd0;
    check_reg[7]  = 1; expected[7]  = 32'd30;
    check_reg[8]  = 1; expected[8]  = 32'd10;
    check_reg[9]  = 1; expected[9]  = 32'd44;
    check_reg[10] = 1; expected[10] = 32'd0;
    check_reg[11] = 1; expected[11] = 32'd55;
    check_mem[0]  = 1; mem_addr[0]  = 32'd100; expected_mem[0] = 32'd30;

`else
    $display("*** WARNING: no TEST_* macro defined for this build.");
    $display("*** Self-check will verify ZERO registers this run.");
    $display("*** Add a case-statement line in build.sh AND a matching");
    $display("*** `elsif TEST_<NAME> block in this file for this program.");
`endif
end

//====================================================================
// Per-cycle trace (unchanged from before, gated by VERBOSE)
//====================================================================
always @(posedge clk) begin
    #1;
    cycle = cycle + 1;

    if (VERBOSE && !sim_done) begin
        $display("\n========================================================");
        $display("                  CYCLE %0d", cycle);
        $display("========================================================");

        $display("\n----- IF -----");
        $display("PC          = %h", dut.PC_out);
        $display("Instruction = %h", dut.Instruction_Out);

        $display("\n----- IF/ID -----");
        $display("PC          = %h", dut.IF_PC_out);
        $display("Instruction = %h", dut.IF_instruction_out);

        $display("\n----- ID Decode -----");
        $display("Opcode      = %b", dut.IF_instruction_out[6:0]);
        $display("funct3      = %b", dut.IF_instruction_out[14:12]);
        $display("funct7      = %b", dut.IF_instruction_out[31:25]);
        $display("rd          = %0d", dut.IF_instruction_out[11:7]);
        $display("rs1         = %0d", dut.IF_instruction_out[19:15]);
        $display("rs2         = %0d", dut.IF_instruction_out[24:20]);
        $display("ReadData1   = %h", dut.src_data1_out);
        $display("ReadData2   = %h", dut.src_data2_out);
        $display("Immediate   = %h", dut.Imm_out);
        $display("RegWrite    = %b", dut.Reg_WrEn_Out);
        $display("MemWrite    = %b", dut.decoder_dm_wren);
        $display("ALUSrc      = %b", dut.ALU_Src_Out);
        $display("ALUControl  = %b", dut.ALU_Control_Out);
        $display("ResultSrc   = %b", dut.Result_Src_Out);

        $display("\n----- ID/EX -----");
        $display("Instruction = %h", dut.ID_instruction_out);
        $display("rd          = %0d", dut.ID_rd_out);
        $display("rs1         = %0d", dut.ID_rs1_out);
        $display("rs2         = %0d", dut.ID_rs2_out);
        $display("ReadData1   = %h", dut.ID_ReadData1_out);
        $display("ReadData2   = %h", dut.ID_ReadData2_out);
        $display("Immediate   = %h", dut.ID_Imm_Data_out);
        $display("ALUSrc(EX)  = %b", dut.ID_ALU_Src_Sel_out);
        $display("ALUControl  = %b", dut.ID_ALU_Control_out);
        $display("MemWrite    = %b", dut.ID_MemWrite_out);

        $display("\n----- Forwarding -----");
        $display("ForwardA_sel  = %b", dut.ForwardA_out);
        $display("ForwardB_sel  = %b", dut.ForwardB_out);
        $display("ForwardA_Data = %h", dut.ForwardA_Data_out);
        $display("ForwardB_Data = %h", dut.ForwardB_Data_out);

        $display("\n----- EX -----");
        $display("ALU Src1    = %h", dut.ForwardA_Data_out);
        $display("ALU Src2    = %h", dut.EX_src2);
        $display("ALU Control = %b", dut.ID_ALU_Control_out);
        $display("ALU Result  = %h", dut.ALU_Result_out);
        $display("StoreData   = %h", dut.DM_WrData_Out);
        $display("StoreMask   = %b", dut.DM_WrMask_Out);
        $display("DM_WrEn     = %b", dut.store_dm_wren);

        $display("\n----- Branch -----");
        $display("Branch Enable = %b", dut.ID_Branch_Enable_out);
        $display("Branch Type   = %b", dut.ID_Branch_Type_sel_out);
        $display("Branch Taken  = %b", dut.Branch_Taken_Out);

        $display("\n----- Hazard -----");
        $display("PC_Write     = %b", dut.PC_Write_out);
        $display("IF_ID_Write  = %b", dut.IF_ID_Write_out);
        $display("ID_EX_Flush  = %b", dut.ID_EX_Flush);

        $display("\n----- EX/MEM -----");
        $display("DM_WrEn    = %b", dut.EX_DM_WrEn_out);
        $display("Address    = %h", dut.EX_ALU_Result_out);
        $display("WriteData  = %h", dut.EX_DM_WrData_out);
        $display("WriteMask  = %b", dut.EX_DM_WrMask_out);

        $display("\n----- Data Memory -----");
        $display("Addr       = %h", dut.DM_Addr_Out);
        $display("WriteEn    = %b", dut.EX_DM_WrEn_out);
        $display("WriteData  = %h", dut.EX_DM_WrData_out);
        $display("WriteMask  = %b", dut.EX_DM_WrMask_out);
        $display("ReadData   = %h", dut.Read_Data_Out);

        $display("\n----- MEM/WB -----");
        $display("RegWrite   = %b", dut.WB_RegWrite_out);
        $display("rd         = %0d", dut.WB_rd_out);
        $display("ALU Result = %h", dut.WB_ALU_Result_out);
        $display("Loaded Data= %h", dut.WB_Loaded_data_out);

        $display("\n----- WB -----");
        $display("WB_RegWrite = %b", dut.WB_RegWrite_out);
        $display("WB_rd       = %0d", dut.WB_rd_out);
        $display("WB_Data     = %h", dut.WB_Data_Out);

        $display("\n----- Register File (x0-x31) -----");
        $display("x0=%h  x1=%h  x2=%h  x3=%h  x4=%h  x5=%h",
                  dut.u_rf.my_regs[0], dut.u_rf.my_regs[1], dut.u_rf.my_regs[2],
                  dut.u_rf.my_regs[3], dut.u_rf.my_regs[4], dut.u_rf.my_regs[5]);
        $display("x6=%h  x7=%h  x8=%h  x9=%h  x10=%h x11=%h",
                  dut.u_rf.my_regs[6], dut.u_rf.my_regs[7], dut.u_rf.my_regs[8],
                  dut.u_rf.my_regs[9], dut.u_rf.my_regs[10], dut.u_rf.my_regs[11]);
        $display("x12=%h x13=%h x14=%h x15=%h x16=%h x17=%h",
                  dut.u_rf.my_regs[12], dut.u_rf.my_regs[13], dut.u_rf.my_regs[14],
                  dut.u_rf.my_regs[15], dut.u_rf.my_regs[16], dut.u_rf.my_regs[17]);
        $display("x18=%h x19=%h x20=%h x21=%h x22=%h x23=%h",
                  dut.u_rf.my_regs[18], dut.u_rf.my_regs[19], dut.u_rf.my_regs[20],
                  dut.u_rf.my_regs[21], dut.u_rf.my_regs[22], dut.u_rf.my_regs[23]);
        $display("x24=%h x25=%h x26=%h x27=%h x28=%h x29=%h",
                  dut.u_rf.my_regs[24], dut.u_rf.my_regs[25], dut.u_rf.my_regs[26],
                  dut.u_rf.my_regs[27], dut.u_rf.my_regs[28], dut.u_rf.my_regs[29]);
        $display("x30=%h x31=%h",
                  dut.u_rf.my_regs[30], dut.u_rf.my_regs[31]);
    end
end

//====================================================================
// Runtime checks — invariants this design has actually violated before.
//====================================================================

// Check 1 removed: WB_RegWrite asserted with rd=x0 is legal RISC-V
// (e.g. `jalr x0,x1,0` deliberately discards its link register). The
// real invariant -- x0 always READS as zero -- is already enforced by
// the register file's write-guard and is tested directly by x0_protect.s.

// Check 2: whenever a branch is taken, ID_EX_Flush must be asserted
// in that same cycle.
always @(posedge clk) begin
    if (!sim_done && dut.Branch_Taken_Out && !dut.ID_EX_Flush) begin
        $display("*** CHECK FAILED (cycle %0d): Branch taken but ID_EX_Flush NOT asserted ***", cycle);
        errors = errors + 1;
    end
end

//====================================================================
// Run + final self-checked summary
//====================================================================
initial begin
    $dumpfile("CPU_Top_Pipeline.vcd");
    $dumpvars(0, tb_CPU_Top_Pipeline);

    rst = 1;
    clk = 0;
    #10;
    rst = 0;

    repeat (NUM_CYCLES) @(posedge clk);
    #1;
    sim_done = 1;

    $display("\n========== FINAL REGISTER VALUES (x0-x31) ==========");
    for (i = 0; i <= 31; i = i + 1) begin
        $display("x%0d = %h", i, dut.u_rf.my_regs[i]);
    end

    $display("\n========== SELF-CHECK: REGISTERS ==========");
    for (i = 0; i <= 31; i = i + 1) begin
        if (check_reg[i]) begin
            if (dut.u_rf.my_regs[i] === expected[i]) begin
                $display("PASS  x%0d = %0d (expected %0d)", i, dut.u_rf.my_regs[i], expected[i]);
            end else begin
                $display("FAIL  x%0d = %0d (expected %0d)", i, dut.u_rf.my_regs[i], expected[i]);
                errors = errors + 1;
            end
        end
    end

    $display("\n========== SELF-CHECK: MEMORY ==========");
    for (i = 0; i <= 7; i = i + 1) begin
        if (check_mem[i]) begin
            if ({dut.u_DM.memory[mem_addr[i]+3], dut.u_DM.memory[mem_addr[i]+2],
                 dut.u_DM.memory[mem_addr[i]+1], dut.u_DM.memory[mem_addr[i]]} === expected_mem[i]) begin
                $display("PASS  mem[%0d] = %0d (expected %0d)", mem_addr[i],
                          {dut.u_DM.memory[mem_addr[i]+3], dut.u_DM.memory[mem_addr[i]+2],
                           dut.u_DM.memory[mem_addr[i]+1], dut.u_DM.memory[mem_addr[i]]},
                          expected_mem[i]);
            end else begin
                $display("FAIL  mem[%0d] = %0d (expected %0d)", mem_addr[i],
                          {dut.u_DM.memory[mem_addr[i]+3], dut.u_DM.memory[mem_addr[i]+2],
                           dut.u_DM.memory[mem_addr[i]+1], dut.u_DM.memory[mem_addr[i]]},
                          expected_mem[i]);
                errors = errors + 1;
            end
        end
    end

    $display("\n========== SUMMARY ==========");
    if (errors == 0)
        $display(">>> ALL CHECKS PASSED <<<");
    else
        $display(">>> %0d CHECK(S) FAILED <<<", errors);

    $finish;
end

endmodule
