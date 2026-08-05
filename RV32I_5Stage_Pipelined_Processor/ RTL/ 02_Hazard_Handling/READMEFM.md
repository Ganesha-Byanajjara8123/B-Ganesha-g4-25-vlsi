# 🔀 Forward MUX (3-to-1)

> Pipeline Stage : Execute (EX)

---

## 📖 Introduction

In a pipelined processor, the Forwarding Unit detects where the newest operand is available, but it cannot directly route data to the ALU.

The Forward MUX performs this final selection by choosing between:

• Register File
• EX/MEM pipeline register
• MEM/WB pipeline register

This enables dependent instructions to execute without waiting for register write-back, reducing unnecessary pipeline stalls.

---

## 🏗 Pipeline Position

(Register File)
        │
        ▼
   Reg_Data_in
        │
        │
 EX/MEM ─────► EX_Data_in
        │
        │
MEM/WB ─────► WB_Data_in
        │
        ▼
 +------------------+
 | Forward MUX 3:1  |
 +------------------+
        │
        ▼
     ALU Operand

---

## ⚙️ Selection Logic

| Select | Source |
|---------|--------|
|00|Register File|
|01|MEM/WB|
|10|EX/MEM|
|11|Default|

---

## ✅ Verification

✔ Register File path

✔ EX/MEM forwarding

✔ MEM/WB forwarding

✔ Default selection

All scenarios verified using a self-checking Verilog testbench.

---

## 🖥 Simulation

✅ Verilator

<img width="704" height="371" alt="Forward_MUX_3to1V" src="https://github.com/user-attachments/assets/a6230dd1-776b-4533-8f80-b8bc11f9cf91" />


✅ GTKWave

<img width="959" height="299" alt="Forward_MUX_3to1" src="https://github.com/user-attachments/assets/acb8be3d-a75c-4c27-b22a-2a996b32ce86" />


---

## 🚀 Integration Status

✔ Connected with Forwarding Unit

✔ Ready for Pipeline Integration

Next:
Integrate forwarding into the complete 5-stage processor.
