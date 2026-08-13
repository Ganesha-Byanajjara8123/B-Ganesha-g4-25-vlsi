# ⚡ ALU Operations — Integrated 5-Stage RISC-V Processor

<div align="center">

### `PROCESSOR VALIDATION • RUN 01`

**Real RISC-V instructions.**
**Complete 5-stage pipeline.**
**Self-checking architectural verification.**

<br>

![Verilog](https://img.shields.io/badge/RTL-Verilog-8B5CF6?style=for-the-badge)
![RISC-V](https://img.shields.io/badge/ISA-RISC--V-7C3AED?style=for-the-badge)
![Pipeline](https://img.shields.io/badge/Pipeline-5--Stage-6366F1?style=for-the-badge)
![Verilator](https://img.shields.io/badge/Simulation-Verilator-4F46E5?style=for-the-badge)
![GTKWave](https://img.shields.io/badge/Waveform-GTKWave-6D28D9?style=for-the-badge)

<br>

### `22 / 22 CHECKS PASSED`

`ALU INTEGRATION VALIDATED`

</div>

---

## 🧠 What This Test Actually Proves

This is **not an isolated ALU module test**.

`alu_ops.s` is the first processor-level validation of the integrated 5-stage RISC-V pipeline.

A real RISC-V assembly program is assembled, loaded into instruction memory and executed through:

```text
             ┌───────────────────────────────────────────┐
             │          5-STAGE RISC-V PIPELINE           │
             │                                           │
Instruction ─┤  IF  →  ID  →  EX  →  MEM  →  WB         │
             │          │       │                 │       │
             │          │       │                 └───────┤
             │          │       │                         │
             │          │   Forwarding                    │
             │          │   Hazard Detection              │
             │          │                                 │
             └──────────┴─────────────────────────────────┘
                                      │
                                      ▼
                               REGISTER FILE
                                      │
                                      ▼
                              SELF-CHECKING TB
```

The goal is simple:

> **Does the complete processor produce the correct architectural state after executing real instructions?**

For this test: **Yes.**

---

# 🔬 Test Scope

### R-Type

| Instruction | Function               | Expected |
| :---------: | ---------------------- | -------: |
|    `ADD`    | `x1 + x2`              |     `22` |
|    `SUB`    | `x1 - x2`              |      `2` |
|    `AND`    | Bitwise AND            |      `8` |
|     `OR`    | Bitwise OR             |     `14` |
|    `XOR`    | Bitwise XOR            |      `6` |
|    `SLL`    | Logical left shift     |     `96` |
|    `SRL`    | Logical right shift    |      `1` |
|    `SRA`    | Arithmetic right shift |      `1` |
|    `SLT`    | Signed comparison      |      `1` |
|    `SLTU`   | Unsigned comparison    |      `0` |

### I-Type

| Instruction | Function                         | Expected |
| :---------: | -------------------------------- | -------: |
|    `ADDI`   | Immediate addition               |      `7` |
|    `ANDI`   | Immediate AND                    |      `3` |
|    `ORI`    | Immediate OR                     |     `15` |
|    `XORI`   | Immediate XOR                    |      `8` |
|    `SLLI`   | Immediate left shift             |     `28` |
|    `SRLI`   | Immediate logical right shift    |      `3` |
|    `SRAI`   | Immediate arithmetic right shift |      `3` |
|    `SLTI`   | Signed comparison                |      `1` |
|   `SLTIU`   | Unsigned comparison              |      `0` |

---

# ⚙️ Dependency Chain

One important aspect of this test is that the instructions are **not independent**.

For example:

```asm
addi x1, x0, 12
addi x2, x0, 10

add  x3, x1, x2
sub  x4, x1, x2
and  x5, x1, x2
or   x6, x1, x2
xor  x7, x1, x2
```

The processor must correctly handle values produced by earlier instructions while those instructions are still moving through the pipeline.

Conceptually:

```text
             ┌───────────────┐
             │   Register    │
             │     File      │
             └───────┬───────┘
                     │
              Register Values
                     │
                     ▼
             ┌───────────────┐
             │  Forward MUX  │◄──── EX/MEM
             │               │◄──── MEM/WB
             └───────┬───────┘
                     │
                     ▼
                  ALU / EX
                     │
                     ▼
               Pipeline Flow
```

This gives the test an additional purpose:

**ALU execution + data-path integration + forwarding-path validation.**

---

---

# 📊 Architectural State Verification

The final register file was compared against the expected architectural state.

| Register | Expected | Actual |     |
| :------: | :------: | :----: | :-: |
|   `x1`   |   `12`   |  `12`  |  ✅  |
|   `x2`   |   `10`   |  `10`  |  ✅  |
|   `x3`   |   `22`   |  `22`  |  ✅  |
|   `x4`   |    `2`   |   `2`  |  ✅  |
|   `x5`   |    `8`   |   `8`  |  ✅  |
|   `x6`   |   `14`   |  `14`  |  ✅  |
|   `x7`   |    `6`   |   `6`  |  ✅  |
|   `x8`   |    `3`   |   `3`  |  ✅  |
|   `x9`   |   `96`   |  `96`  |  ✅  |
|   `x10`  |    `1`   |   `1`  |  ✅  |
|   `x11`  |    `1`   |   `1`  |  ✅  |
|   `x12`  |    `1`   |   `1`  |  ✅  |
|   `x13`  |    `0`   |   `0`  |  ✅  |
|   `x14`  |    `7`   |   `7`  |  ✅  |
|   `x15`  |    `3`   |   `3`  |  ✅  |
|   `x16`  |   `15`   |  `15`  |  ✅  |
|   `x17`  |    `8`   |   `8`  |  ✅  |
|   `x18`  |   `28`   |  `28`  |  ✅  |
|   `x19`  |    `3`   |   `3`  |  ✅  |
|   `x20`  |    `3`   |   `3`  |  ✅  |
|   `x21`  |    `1`   |   `1`  |  ✅  |
|   `x22`  |    `0`   |   `0`  |  ✅  |

<div align="center">

## `22 / 22` ✅

### ARCHITECTURAL CHECKS PASSED

</div>

---

# 📈 Simulation Evidence

The integrated processor was executed using **Verilator** and inspected using **GTKWave**.

The waveform captures the processor-level interaction between:

```text
PC
│
├── Instruction
│
├── Pipeline Cycle
│
├── ID / ALU Control
│
├── ALU Result
│
├── EX/MEM Data
│
├── MEM/WB Data
│
├── WB Destination Register
│
├── WB Write Enable
│
└── Register File State
```

The simulation completed with:

```text
>>> ALL CHECKS PASSED <<<
```

No architectural mismatches were reported.

---

# 🖥️ Verification Flow

```text
                  RISC-V Assembly
                         │
                         ▼
                RISC-V GNU Toolchain
                         │
                         ▼
                   Machine Code
                         │
                         ▼
                  Instruction Memory
                         │
                         ▼
        ┌─────────────────────────────────┐
        │       5-STAGE RISC-V CPU        │
        │                                 │
        │   IF → ID → EX → MEM → WB      │
        │                                 │
        │   • Register File               │
        │   • ALU                         │
        │   • Forwarding Unit             │
        │   • Hazard Unit                 │
        │   • Pipeline Registers          │
        │   • Branch / Jump Logic         │
        │   • Data Memory                 │
        └────────────────┬────────────────┘
                         │
                         ▼
                  Architectural State
                         │
                         ▼
                  Self-Checking TB
                         │
                         ▼
                  ┌──────────────┐
                  │  PASS / FAIL │
                  └──────────────┘
```

---

# 🧩 What Was Exercised

```text
┌─────────────────────────────────────────────────────┐
│                 ALU VALIDATION                     │
├──────────────────────┬──────────────────────────────┤
│ Arithmetic           │ ADD / SUB / ADDI             │
│ Logical              │ AND / OR / XOR               │
│ Shift                │ SLL / SRL / SRA              │
│ Immediate Shift      │ SLLI / SRLI / SRAI           │
│ Signed Compare       │ SLT / SLTI                   │
│ Unsigned Compare     │ SLTU / SLTIU                │
│ Register Dependency  │ Forwarding Path              │
│ Write Back           │ Register File                │
│ Pipeline             │ IF / ID / EX / MEM / WB      │
└──────────────────────┴──────────────────────────────┘
```

---

# 🏁 Validation Result

```text
                    PROCESSOR VALIDATION

                         ALU OPS
                            │
                            ▼
                   ┌────────────────┐
                   │ 22 TEST CHECKS │
                   └───────┬────────┘
                           │
                           ▼
                     ┌───────────┐
                     │  22 PASS  │
                     │   0 FAIL  │
                     └─────┬─────┘
                           │
                           ▼
                    INTEGRATION PASS
```

### Status

| Component / Feature        |   Result   |
| -------------------------- | :--------: |
| 5-stage pipeline           |      ✅     |
| R-type ALU                 |      ✅     |
| I-type ALU                 |      ✅     |
| Arithmetic                 |      ✅     |
| Logical operations         |      ✅     |
| Shift operations           |      ✅     |
| Signed comparison          |      ✅     |
| Unsigned comparison        |      ✅     |
| Register write-back        |      ✅     |
| Data dependencies          |      ✅     |
| Forwarding path            |      ✅     |
| Self-checking verification |      ✅     |
| `alu_ops.s`                | **✅ PASS** |

---

# 🗂️ Processor Validation Roadmap

This test is **Run 01** of the processor-level verification sequence.

```text
01 ── alu_ops.s
       │
       ▼
02 ── memory_ops.s
       │
       ▼
03 ── forwarding_chain.s
       │
       ▼
04 ── load_use_hazard.s
       │
       ▼
05 ── branches_not_taken.s
       │
       ▼
06 ── branches_taken.s
       │
       ▼
07 ── jumps.s
       │
       ▼
08 ── x0_protect.s
       │
       ▼
09 ── Combined_test.s
       │
       ▼
     FULL PROCESSOR
     VALIDATION
```

Each test targets a different class of processor behavior.

The final `Combined_test.s` will bring the instruction classes together into a single end-to-end validation.

---

# 🛠️ Toolchain

| Tool                     | Purpose                   |
| ------------------------ | ------------------------- |
| **Verilog**              | RTL implementation        |
| **RISC-V ISA**           | Processor instruction set |
| **RISC-V GNU Toolchain** | Assembly → machine code   |
| **Verilator**            | RTL simulation            |
| **GTKWave**              | Waveform analysis         |
| **Linux / WSL**          | Development environment   |

---
```

The RTL implementation and processor-level testbench remain part of the main pipeline project.

---

<div align="center">

### `RUN 01 COMPLETE`

**5-stage RISC-V pipeline**
**ALU instruction execution**
**22/22 architectural checks passed**

<br>

`Next → Memory Operations`

</div>
