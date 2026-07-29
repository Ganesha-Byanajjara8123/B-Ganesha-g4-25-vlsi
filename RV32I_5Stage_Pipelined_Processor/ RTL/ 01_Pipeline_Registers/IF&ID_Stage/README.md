<div align="center">

# 🚀 IF/ID Pipeline Register

### Pipeline Register Between **Instruction Fetch (IF)** and **Instruction Decode (ID)** Stages

<p>

![Verilog](https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge)
![Pipeline](https://img.shields.io/badge/Pipeline-5--Stage-success?style=for-the-badge)
![Stage](https://img.shields.io/badge/Stage-IF--ID-orange?style=for-the-badge)
![Simulation](https://img.shields.io/badge/Simulation-Verilator-red?style=for-the-badge)
![Waveform](https://img.shields.io/badge/Waveform-GTKWave-purple?style=for-the-badge)

</p>

*A synchronous pipeline register that transfers the outputs of the Instruction Fetch (IF) stage to the Instruction Decode (ID) stage while supporting **stall** and **flush** operations required for pipeline hazard handling.*

</div>

---

# 📖 Overview

The **IF/ID Pipeline Register** is the first pipeline register in a **5-Stage RV32I Processor**.

Its primary responsibility is to **capture the outputs of the Instruction Fetch (IF) stage on every rising clock edge and provide stable inputs to the Instruction Decode (ID) stage during the next clock cycle.**

In addition to normal data transfer, the register also supports **pipeline stalls** and **pipeline flushes**, making it suitable for both **data hazards** and **control hazards**.

---

# 🎯 Why is this Register Required?

Without pipeline registers, every stage would continuously change as signals propagate through the datapath.

The IF/ID Register isolates the Fetch and Decode stages by storing:

- Program Counter (PC)
- PC + 4
- Current Instruction

This allows the Decode stage to process one instruction while the Fetch stage simultaneously fetches the next instruction.

---

# 🔄 Pipeline Position

```
Instruction Memory
        │
        ▼
 ┌───────────────────┐
 │   IF/ID Register  │
 └───────────────────┘
        │
        ▼
 Instruction Decode
```

---

# ✨ Features

- ✅ Captures IF stage outputs every clock cycle
- ✅ Transfers PC to Decode stage
- ✅ Transfers PC + 4
- ✅ Transfers fetched instruction
- ✅ Asynchronous Reset
- ✅ Pipeline Stall Support (`IF_ID_Write_in`)
- ✅ Pipeline Flush Support (`IF_ID_Flush_in`)
- ✅ Synchronous Operation

---

# 📌 Interface

| Signal | Width | Direction | Description |
|---------|------:|-----------|-------------|
| clk | 1 | Input | System Clock |
| rst | 1 | Input | Asynchronous Reset |
| IF_ID_Write_in | 1 | Input | Enables pipeline register update |
| IF_ID_Flush_in | 1 | Input | Flushes register contents |
| IF_PC_in | 32 | Input | Current Program Counter |
| IF_PC_plus4_in | 32 | Input | PC + 4 |
| IF_instruction_in | 32 | Input | Instruction fetched from Instruction Memory |
| IF_PC_out | 32 | Output | Registered PC |
| IF_PC_plus4_out | 32 | Output | Registered PC + 4 |
| IF_instruction_out | 32 | Output | Registered Instruction |

---

# ⚙️ Working Principle

### Normal Operation

When **IF_ID_Write_in = 1**, the register captures all IF stage outputs on the rising edge of the clock.

```
IF Stage
    │
    ▼
IF/ID Register
    │
    ▼
Decode Stage
```

---

### Pipeline Stall

When

```
IF_ID_Write_in = 0
```

the register **holds its previous values**.

This prevents the Decode stage from receiving a new instruction during **data hazards**.

---

### Pipeline Flush

When

```
IF_ID_Flush_in = 1
```

all outputs are cleared to zero.

This removes incorrectly fetched instructions after a taken branch or jump, preventing them from propagating through the pipeline.

---

### Reset

When reset is asserted,

```
PC            = 0

PC+4          = 0

Instruction   = 0
```

ensuring the processor starts from a known state.

---

# 🧪 Verification

The module was verified using a dedicated Verilator testbench.

### Test Cases

| Test | Description | Result |
|------|-------------|--------|
| Reset | Outputs cleared | ✅ PASS |
| Instruction 1 | PC = 0 | ✅ PASS |
| Instruction 2 | PC = 4 | ✅ PASS |
| Instruction 3 | PC = 8 | ✅ PASS |

---

# 📊 Simulation Output

> **<img width="620" height="212" alt="image" src="https://github.com/user-attachments/assets/0ae7ce31-1c53-4c57-8f01-361d4aaf667d" />
**

<p align="center">
<img src="Waveforms/verilator_output.png" width="900">
</p>

All directed test cases passed successfully.

---

# 📈 GTKWave Verification

> **<img width="959" height="328" alt="IF_ID_Register" src="https://github.com/user-attachments/assets/50471f82-1d62-4755-a3d6-88829494b8c5" />
**

<p align="center">
<img src="Waveforms/IF_ID_Register.png" width="900">
</p>

The waveform confirms:

- Correct synchronization on each clock edge
- Proper transfer of PC
- Correct propagation of PC + 4
- Accurate instruction transfer
- Stable registered outputs

---

---

# 📚 Key Learnings

During the implementation of this module, I learned:

- The role of pipeline registers in stage isolation
- How stalls preserve pipeline state during data hazards
- How flush logic removes invalid instructions after control hazards
- The importance of synchronizing datapath information between pipeline stages

---

# 🚀 Next Module

➡️ **ID/EX Pipeline Register**

The next pipeline register transfers decoded operands, immediate values, destination registers, and control signals from the **Instruction Decode (ID)** stage to the **Execute (EX)** stage, enabling instruction execution in the next clock cycle.

---

<div align="center">

⭐ Part of my **5-Stage RV32I RISC-V Processor** project.

</div>
