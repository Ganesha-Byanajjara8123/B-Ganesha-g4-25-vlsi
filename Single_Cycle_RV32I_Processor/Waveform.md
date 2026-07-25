
# Single-Cycle RV32I Processor

A single-cycle RISC-V (RV32I) processor implemented in Verilog, built as the
foundation for a 5-stage pipelined version. Verified with a self-checking
testbench — every test asserts specific expected register/memory values and
reports PASS/FAIL automatically, rather than requiring manual inspection of
simulation output.

## Architecture

Single-cycle datapath: each instruction fetches, decodes, executes, accesses
memory, and writes back within one clock cycle. Modules:

- `PC_Unit` / `PC_Src_MUX` — program counter and next-PC selection
- `Instruction_memory` — instruction fetch
- `Decoder` — instruction decode, control signal generation
- `register_file` — 32×32-bit register file (x0 hardwired to zero)
- `ALU` / `ALU_Src_MUX` — arithmetic/logic execution
- `Branch_Comparator` — branch condition evaluation
- `Extend_Unit` — immediate generation (I/S/B/U/J types)
- `Imm_Adder` — PC-relative and register-relative address computation
- `Store_Unit` / `Data_Memory` / `Load_Unit` — memory access with
  byte/halfword/word sizing
- `WB_MUX` — writeback data selection

## Instructions verified

| Category | Instructions | Test file |
|---|---|---|
| R-type ALU | ADD, SUB, AND, OR, XOR, SLL, SRL, SRA, SLT, SLTU | `program_alu.s`, `program_isa_coverage.s` |
| I-type ALU | ADDI, ANDI, ORI, XORI, SLLI, SRLI, SRAI, SLTI, SLTIU | `program_alu.s`, `program_isa_coverage.s` |
| Memory | LB, LH, LW, LBU, LHU, SW | `program_alu.s`, `program_isa_coverage.s` |
| Upper immediate | LUI, AUIPC | `program_alu.s` |
| Branches | BEQ, BNE, BLT, BGE, BLTU, BGEU | `program_branch.s` |
| Jumps | JAL, JALR | `program_jump_system.s` |

**53 self-checked assertions across 4 directed test programs — all passing.**

## Verification approach

Each test program has hand-derived expected values for every register and
memory location it touches. The testbench (`tb_CPU_Top.v`) compares actual
simulation output against these values automatically and reports PASS/FAIL
per check, plus a final summary.

Branch and jump tests use **separated guard and target registers** —
an earlier version of these tests had the "did the branch trigger" check and
the "where did we land" check writing to the *same* register, which meant a
completely broken branch and a working one could produce an identical final
answer. Fixed by giving each its own register, so a broken branch now
produces a visibly different (and detectably wrong) result.

## Running the tests

```bash
chmod +x build.sh
./build.sh program_alu
./build.sh program_branch
./build.sh program_jump_system
./build.sh program_isa_coverage
```

Requires `riscv64-unknown-elf-as/ld/objcopy` and Verilator. Set `NUM_CYCLES`
and `VERBOSE` in `tb_CPU_Top.v` per test — `VERBOSE=1` for a full per-cycle
trace, `VERBOSE=0` for summary-only output.

## Waveforms

### program_alu.s
![ALU waveform](waveforms/program_alu.png)

Captures the R-type shift/compare sequence (`ALU_Control_Out` stepping through the SLL → SRL → SRA → SLT → SLTU encodings) followed by the store/load and LUI/AUIPC instructions. `DM_Addr_Out`/`DM_WrData_Out` show the `SW` write, and `WB_Data_Out` confirms the LUI and AUIPC results landing in the register file.

### program_branch.s
![Branch waveform](waveforms/program_branch.png)

`Branch_Type_sel` steps through all six branch funct3 encodings in order (BEQ → BNE → BLT → BGE → BLTU → BGEU), and `Branch_Taken_Out` pulses high — highlighted in red — at each one. This is the direct visual confirmation that every branch comparator path actually fires, not just BEQ.

### program_jump_system.s
![Jump waveform](waveforms/program_jump_system.png)

`Jump_Out` pulses at each JAL/JALR instruction, and `Next_PC_Out` shows PC being redirected away from sequential `PC+4` at those exact cycles — capturing the call-out to the subroutine and the return redirect via JALR.

### program_isa_coverage.s
![ISA coverage waveform](waveforms/program_isa_coverage.png)

`Load_Size_Out` and `Load_Unsigned_Out` change per instruction, and `Loaded_Data_Out` shows the resulting values for each load variant — sign-extended for LB/LH, zero-extended for LBU/LHU. This is the direct waveform evidence for the load-width bug fix: the size/sign controls actually change per instruction instead of defaulting to one behavior for every load.



- **`program_alu.s`'s original AND/OR/XOR test uses operands where OR and
  XOR happen to equal ADD's result** — still true for that specific test,
  though `program_isa_coverage.s` re-tests all three with distinguishing
  operands, so the operations themselves are correctly verified overall.
- No exception/trap handling (ECALL/EBREAK are decoded but produce no
  observable trap behavior).

## Roadmap

5-stage pipelined version (in progress): same ISA, adding hazard detection,
data forwarding (EX-EX and MEM/WB-EX), and branch/jump flush logic.








