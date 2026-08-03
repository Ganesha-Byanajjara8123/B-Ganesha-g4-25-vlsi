<div align="center">

# 🚀 Hazard Detection Unit

### Load-Use Hazard Detection for a 5-Stage RV32I RISC-V Processor

<p>

![Verilog](https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Architecture-5--Stage%20Pipeline-success?style=for-the-badge)
![Module](https://img.shields.io/badge/Module-Hazard%20Detection-orange?style=for-the-badge)
![Simulation](https://img.shields.io/badge/Simulation-Verilator-red?style=for-the-badge)
![Waveform](https://img.shields.io/badge/Waveform-GTKWave-purple?style=for-the-badge)

</p>

*Hazard Detection Unit responsible for identifying **Load-Use Data Hazards** and safely stalling the pipeline in a 5-stage RV32I RISC-V Processor.*

</div>

---

# 📖 Overview

A pipelined processor improves performance by executing multiple instructions simultaneously.

However, when an instruction depends on the result of a previous **Load (LW)** instruction, the required data is not yet available, leading to a **Load-Use Data Hazard**.

The **Hazard Detection Unit** detects this condition and temporarily stalls the pipeline by freezing the Program Counter (PC), preventing updates to the IF/ID register, and inserting a bubble (NOP) into the Execute stage.

---

# ❓ Why is a Hazard Detection Unit Required?

Consider the following instruction sequence:

```assembly
lw   x5,0(x1)
add  x6,x5,x7
```

The **ADD** instruction requires the value of **x5**.

However, the **LW** instruction has not yet completed its memory access.

At this point:

- The data is **not available**
- Forwarding **cannot solve** this dependency
- The processor must wait for one clock cycle

Without a Hazard Detection Unit, the ADD instruction would use an incorrect value and produce the wrong result.

---

# ⚠️ Load-Use Hazard

```
Cycle        IF        ID        EX        MEM       WB
---------------------------------------------------------
1            LW
2            ADD       LW
3            Stall     ADD       LW
4            Next      ADD       MEM
5                      Next      ADD       WB
```

The processor inserts one **Bubble (NOP)**, allowing the Load instruction to complete before the dependent instruction proceeds.

---

# 🏗️ Pipeline Position

```
Instruction Fetch
        │
        ▼
   IF/ID Register
        │
        ▼
Hazard Detection Unit
        │
        ▼
   ID/EX Register
        │
        ▼
 Execute Stage
```

---

# ⚙️ RTL Working Principle

The Hazard Detection Unit monitors:

- Destination register of the instruction in the **ID/EX** stage
- Source registers of the instruction in the **IF/ID** stage
- Result Source signal indicating a **Load** instruction

If a Load-Use dependency is detected:

```
PC_Write      = 0
IF_ID_Write   = 0
ID_EX_Flush   = 1
```

Otherwise:

```
PC_Write      = 1
IF_ID_Write   = 1
ID_EX_Flush   = 0
```

---

# 🔍 Detection Logic

A hazard is detected when:

```verilog
(ID_EX_ResultSrc == 3'b001) &&
(ID_EX_rd != 5'd0) &&
(
 (ID_EX_rd == IF_ID_rs1) ||
 (ID_EX_rd == IF_ID_rs2)
)
```

This condition identifies a **Load-Use RAW (Read After Write)** dependency.

---

# ✨ Features

- ✅ Detects Load-Use Hazards
- ✅ Prevents incorrect instruction execution
- ✅ Generates Pipeline Stall Signals
- ✅ Inserts Pipeline Bubble (NOP)
- ✅ Simple Combinational Logic
- ✅ Fully Synthesizable RTL
- ✅ Verilator Verified
- ✅ GTKWave Verified

---

# 📥 Inputs

| Signal | Description |
|---------|-------------|
| `ID_EX_rd_in` | Destination register from ID/EX stage |
| `ID_EX_ResultSrc_in` | Indicates Load instruction (`3'b001`) |
| `IF_ID_rs1_in` | Source Register-1 of current instruction |
| `IF_ID_rs2_in` | Source Register-2 of current instruction |

---

# 📤 Outputs

| Signal | Description |
|---------|-------------|
| `PC_Write_out` | Enables or stalls Program Counter |
| `IF_ID_Write_out` | Enables or stalls IF/ID Register |
| `ID_EX_Flush_out` | Inserts Bubble (NOP) into Execute stage |

---

# 🧪 Verification

The module was verified using a dedicated **Verilator** testbench.

### Test Cases

| Test Case | Description | Result |
|-----------|-------------|--------|
| Test Case 1 | Load-Use Hazard Detected | ✅ PASS |
| Test Case 2 | No Hazard Present | ✅ PASS |
| Test Case 3 | ALU Instruction (No Stall Required) | ✅ PASS |

---

# 📊 Verilator Output

<p align="center">

<img src="Waveforms/verilator_output.png" width="900">

</p>

The console output confirms that the Hazard Detection Unit correctly generates stall signals only for valid Load-Use hazards.

---

# 📈 GTKWave Verification

<p align="center">

<img src="Waveforms/Hazard_Unit.png" width="900">

</p>

Waveform verification confirms:

- Correct hazard detection
- PC stall generation
- IF/ID register stall
- ID/EX flush signal generation
- Normal pipeline operation when no hazard exists

---

# 📂 Project Structure

```text
Hazard_Unit/
│
├── RTL/
│   └── Hazard_Unit.v
│
├── Testbench/
│   └── tb_Hazard_Unit.v
│
├── Waveforms/
│   ├── Hazard_Unit.png
│   └── verilator_output.png
│
└── README.md
```

---

# 📚 Key Learnings

During this implementation, I learned:

- The difference between **Load-Use Hazards** and general RAW hazards.
- Why forwarding alone cannot solve every dependency.
- How to freeze the Program Counter and IF/ID Register.
- How to insert a Bubble (NOP) into the pipeline.
- Practical implementation of pipeline stall logic using combinational RTL.

---

# 🚀 Next Module

➡️ **Forwarding Unit**

The Forwarding Unit will resolve most RAW data hazards by forwarding results directly from later pipeline stages, reducing unnecessary pipeline stalls and improving overall processor performance.

---

<div align="center">

### ⭐ Part of my **5-Stage RV32I RISC-V Processor** project.

**Next Milestone:** Data Forwarding Unit 🚀

</div>
