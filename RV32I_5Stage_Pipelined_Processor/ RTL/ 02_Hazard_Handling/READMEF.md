<div align="center">

# 🚀 Forwarding Unit

### Data Hazard Resolution for a 5-Stage RV32I RISC-V Processor

<p>

![Verilog](https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Architecture-5--Stage%20Pipeline-success?style=for-the-badge)
![Module](https://img.shields.io/badge/Module-Forwarding%20Unit-orange?style=for-the-badge)
![Simulation](https://img.shields.io/badge/Simulation-Verilator-red?style=for-the-badge)
![Waveform](https://img.shields.io/badge/Waveform-GTKWave-purple?style=for-the-badge)

</p>

*Forwarding Unit that resolves RAW (Read After Write) data hazards by forwarding results directly from later pipeline stages, reducing unnecessary pipeline stalls.*

</div>

---

# 📖 Overview

In a pipelined processor, consecutive instructions often depend on the results of previous instructions.

Without forwarding, the processor would need to stall until the previous instruction writes its result back to the Register File.

The **Forwarding Unit** eliminates most of these unnecessary stalls by routing the latest available data directly from later pipeline stages to the ALU inputs.

---

# ❓ Why is a Forwarding Unit Required?

Consider the following instruction sequence:

```assembly
add  x5,x1,x2
sub  x6,x5,x3
```

The `sub` instruction needs the value of **x5** immediately.

However, `add` has not yet reached the Write-Back stage.

Instead of waiting several clock cycles, the processor forwards the ALU result directly to the Execute stage.

This allows the dependent instruction to execute without stalling.

---

# ⚠️ RAW Data Hazard

```
Cycle        IF        ID        EX        MEM       WB
---------------------------------------------------------
1            ADD
2            SUB       ADD
3                     SUB       ADD
4                              SUB       ADD
5                                       SUB
```

Instead of waiting for Write-Back, the ALU result is forwarded directly from a later stage.

---

# 🏗️ Pipeline Position

```
               EX/MEM
                  │
                  │
                  ▼
          +----------------+
          | Forwarding Unit|
          +----------------+
                  ▲
                  │
                  │
               MEM/WB

                  │
                  ▼

              ALU Inputs
```

---

# ⚙️ Forwarding Logic

The Forwarding Unit compares:

- Source registers of the current Execute instruction
- Destination register from the EX stage
- Destination register from the WB stage

If a match exists:

- EX stage has highest priority
- Otherwise forward from WB stage
- Otherwise use Register File data

---

# 🔄 Forwarding Encoding

| Code | Source |
|------|--------|
| `00` | Register File |
| `01` | MEM/WB Stage |
| `10` | EX/MEM Stage |
| `11` | Reserved |

---

# ✨ Features

- ✅ Resolves RAW Data Hazards
- ✅ Supports EX-to-EX Forwarding
- ✅ Supports MEM/WB Forwarding
- ✅ EX Stage Priority over WB Stage
- ✅ Independent ForwardA and ForwardB Selection
- ✅ Fully Combinational RTL
- ✅ Verilator Verified
- ✅ GTKWave Verified

---

# 📥 Inputs

| Signal | Description |
|---------|-------------|
| `ID_rs1_in` | ALU Source Register 1 |
| `ID_rs2_in` | ALU Source Register 2 |
| `EX_rd_in` | Destination Register from EX Stage |
| `EX_RegWrite_in` | EX Stage Register Write Enable |
| `WB_rd_in` | Destination Register from WB Stage |
| `WB_RegWrite_in` | WB Stage Register Write Enable |

---

# 📤 Outputs

| Signal | Description |
|---------|-------------|
| `ForwardA_out` | Select signal for ALU Source A |
| `ForwardB_out` | Select signal for ALU Source B |

---

# 🧪 Verification

The Forwarding Unit was verified using directed self-checking Verilator testbenches.

### Test Cases

| Test Case | Description | Result |
|-----------|-------------|--------|
| Test Case 1 | Simultaneous EX and WB Forwarding | ✅ PASS |
| Test Case 2 | EX Stage Priority over WB Stage | ✅ PASS |
| Test Case 3 | No Forwarding Required | ✅ PASS |

---

# 📊 Verilator Output

<p align="center">

<img width="684" height="410" alt="Forward_UnitV" src="https://github.com/user-attachments/assets/3d9fdb9c-e36a-422f-a06b-9d7623c8d4c5" />

<img src="Waveforms/Forward_UnitV.png" width="900">

</p>

Console output confirms:

- EX Forwarding
- WB Forwarding
- EX Priority
- No Forwarding Case

---

# 📈 GTKWave Verification

<p align="center">

<img width="958" height="349" alt="Forward_Unit" src="https://github.com/user-attachments/assets/3b3dee55-7f86-4f0f-9323-640cddc72c6d" />

<img src="Waveforms/Forward_Unit.png" width="900">


</p>

Waveform analysis confirms:

- Correct ForwardA generation
- Correct ForwardB generation
- EX stage priority
- Proper register comparison
- Stable combinational operation

---
---

# 📚 Key Learnings

During this implementation, I learned:

- RAW (Read After Write) dependency resolution
- EX-to-EX forwarding
- MEM/WB forwarding
- Priority-based forwarding selection
- Register dependency comparison
- Eliminating unnecessary pipeline stalls
- Practical implementation of forwarding logic using combinational RTL

---

# 🚀 Next Module

➡️ **Branch Flush Unit**

After resolving data hazards through Hazard Detection and Forwarding, the next step is handling **Control Hazards** by flushing incorrect instructions after a taken branch or jump.

---

<div align="center">

### ⭐ Part of my **5-Stage RV32I RISC-V Processor** project.

**Next Milestone:** Forward Unit MUX 🚀

</div>
