# Verilog RTL Design & Verification Practice

This repository contains my hands-on work in **RTL design using Verilog**, focused on building strong fundamentals in **combinational logic, sequential design, and simulation-based verification**.

---

## 🛠 Tools Used

- **Icarus Verilog** – Compilation & Simulation  
- **GTKWave** – Waveform Analysis  
- **VS Code** – Development Environment  

---

## 📁 Repository Structure
- **rtl/ → RTL design modules**
- **tb/ → Testbenches**

---

## 🚀 Implemented Designs

### 🔹 Mod-N Counter
📁 `rtl/mod_counter.v`, `tb/mod_counter_tb.v`  
- Parameterized counter (configurable N)  
- Generates **1-cycle tick pulse** at rollover  
- Sequential logic using clocked always block  
- Verified using simulation and waveform analysis  

---

### 🔹 Half Adder
📁 `rtl/half_adder.v`, `tb/tb_half_adder.v`  
- Basic combinational logic design  
- Verified using testbench and VCD waveform  

---

### 🔹 16:1 Multiplexer
📁 `rtl/mux16to1.v`, `tb/mux16to1_tb.v`  
- Vector-index based implementation (`assign y = in[sel]`)  
- Efficient and scalable design  
- Fully verified via simulation  

---

### 🔹 16-bit Carry Lookahead Adder (CLA)
📁 `rtl/16bit_cla.v`, `tb/tb_16bit_cla.v`  
- Hierarchical design using **4-bit CLA blocks**  
- Implements Generate (G) and Propagate (P) logic  
- Faster carry computation than ripple carry adder  
- Verified using multiple test cases  

---

### 🔹 4-bit ALU *(in progress / to be added)*
📁 `rtl/alu.v`, `tb/alu_tb.v`  
- Supports arithmetic and logical operations  
- Combinational design using case statements  
- Will be fully verified using testbench  

---

### 🔹 FSM Sequence Detector *(in progress / to be added)*
📁 `rtl/fsm_seq_detector.v`, `tb/fsm_tb.v`  
- Detects sequence **"101"**  
- Sequential logic using finite state machine  
- Verified through waveform-based analysis  

---

## ▶ How to Simulate

### Example: Mod-N Counter

```bash
iverilog -o sim.out rtl/mod_counter.v tb/mod_counter_tb.v
vvp sim.out
gtkwave mod_counter.vcd