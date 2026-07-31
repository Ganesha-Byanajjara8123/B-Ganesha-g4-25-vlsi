<div align="center">

# 🚀 Pipeline Registers

### Synchronizing the 5-Stage RV32I RISC-V Pipeline

<p>

![Verilog](https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Architecture-5--Stage%20Pipeline-success?style=for-the-badge)
![Modules](https://img.shields.io/badge/Modules-4-orange?style=for-the-badge)
![Simulation](https://img.shields.io/badge/Simulation-Verilator-red?style=for-the-badge)
![Waveforms](https://img.shields.io/badge/Waveforms-GTKWave-purple?style=for-the-badge)

</p>

*Implementation and verification of all four pipeline registers used in a 5-Stage RV32I RISC-V Processor.*

</div>

---

# 📖 Overview

Pipeline registers are the backbone of a pipelined processor.

Instead of allowing signals to propagate directly through all five stages, each stage stores its outputs inside a dedicated pipeline register. This allows multiple instructions to execute simultaneously while keeping both **datapath values** and **control signals** synchronized between consecutive stages.

This repository contains the implementation and verification of all four pipeline registers used in my **5-Stage RV32I Processor**.

---

# 🏗️ Pipeline Register Flow

```
                Instruction Flow

        ┌───────────────┐
        │ Instruction   │
        │    Fetch      │
        └──────┬────────┘
               │
               ▼
        ┌───────────────┐
        │ IF/ID Register│
        └──────┬────────┘
               │
               ▼
        ┌───────────────┐
        │ Instruction   │
        │    Decode     │
        └──────┬────────┘
               │
               ▼
        ┌───────────────┐
        │ ID/EX Register│
        └──────┬────────┘
               │
               ▼
        ┌───────────────┐
        │   Execute     │
        └──────┬────────┘
               │
               ▼
       ┌────────────────┐
       │ EX/MEM Register│
       └──────┬─────────┘
              │
              ▼
       ┌────────────────┐
       │ Memory Access  │
       └──────┬─────────┘
              │
              ▼
       ┌────────────────┐
       │ MEM/WB Register│
       └──────┬─────────┘
              │
              ▼
       ┌────────────────┐
       │   Write Back   │
       └────────────────┘
```

---

# 🎯 Purpose of Each Register

| Pipeline Register | Function |
|-------------------|----------|
| **IF/ID Register** | Transfers the fetched instruction, PC, and PC+4 from the Instruction Fetch stage to the Decode stage. Supports **stall** and **flush** operations for hazard handling. |
| **ID/EX Register** | Transfers decoded operands, immediate values, register addresses, and all required control signals from the Decode stage to the Execute stage. |
| **EX/MEM Register** | Stores ALU results, memory write information, destination register details, and execution-stage control signals before entering the Memory stage. |
| **MEM/WB Register** | Preserves memory outputs and write-back information before updating the Register File in the Write-Back stage. |

---

# ✨ Features

- ✅ Complete Pipeline Register Chain
- ✅ Synchronous RTL Design
- ✅ Asynchronous Reset Support
- ✅ Stall Support (IF/ID)
- ✅ Flush Support (IF/ID)
- ✅ Datapath Synchronization
- ✅ Control Signal Synchronization
- ✅ Self-Checking Testbenches
- ✅ Verilator Verified
- ✅ GTKWave Timing Analysis

---
---

# 🧪 Verification Summary

Every pipeline register was verified independently using a dedicated self-checking testbench.

| Module | Verification | Waveform |
|---------|--------------|----------|
| IF/ID Register | ✅ PASS | ✅ GTKWave |
| ID/EX Register | ✅ PASS | ✅ GTKWave |
| EX/MEM Register | ✅ PASS | ✅ GTKWave |
| MEM/WB Register | ✅ PASS | ✅ GTKWave |

---

# 📊 Signal Flow Through the Pipeline

```
Instruction
      │
      ▼
 IF/ID Register
      │
      ▼
Decoded Operands
Control Signals
      │
      ▼
 ID/EX Register
      │
      ▼
ALU Result
Store Data
Memory Control
      │
      ▼
 EX/MEM Register
      │
      ▼
Loaded Data
Write-Back Control
      │
      ▼
 MEM/WB Register
      │
      ▼
Register File
```

---

# 📚 Key Learnings

During the implementation of these pipeline registers, I gained practical experience in:

- Pipeline stage isolation
- Datapath synchronization
- Control signal propagation
- Pipeline timing
- Register-to-register data transfer
- Stall and flush mechanisms
- Pipeline verification using Verilator
- Waveform analysis with GTKWave

---

# 🚀 Next Step

With the pipeline register chain completed, the next stage of the processor focuses on handling pipeline hazards.

Upcoming modules:

- ✅ Hazard Detection Unit
- ✅ Data Forwarding Unit
- ✅ Branch Flush Unit

These modules will enable the processor to correctly execute dependent instructions while maintaining pipeline efficiency.

---

<div align="center">

### ⭐ Pipeline Registers form the backbone of my **5-Stage RV32I RISC-V Processor**.

**Next milestone:** Hazard Detection & Data Forwarding 🚀

</div>
