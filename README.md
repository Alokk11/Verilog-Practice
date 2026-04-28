# Verilog RTL Design & Verification Practice

This repository contains my hands-on work in **RTL design using Verilog**, focusing on building strong fundamentals in digital design, simulation, and verification.

---

## 🛠 Tools Used

- **Icarus Verilog** – Compilation & Simulation  
- **GTKWave** – Waveform Analysis  
- **VS Code** – Development Environment  

---

---

## 🚀 Implemented Designs

### 🔹 Mod-N Counter
- Parameterized counter design (configurable N)
- Generates **1-cycle tick pulse** at rollover
- Verified using testbench and waveform analysis
- Demonstrates sequential logic and timing behavior

---

### 🔹 Half Adder
- Basic combinational logic implementation
- Verified with dedicated testbench and waveform analysis

---

### 🔹 16:1 Multiplexer
- Efficient vector-index implementation (`assign y = in[sel]`)
- Fully tested with simulation

---

### 🔹 16-bit Carry Lookahead Adder (CLA)
- Built using hierarchical 4-bit CLA blocks
- Uses Generate (G) and Propagate (P) logic
- Faster than ripple carry adder
- Verified using testbench and waveform analysis

---

## ▶ How to Simulate

Example (Mod-N Counter):

```bash
iverilog -o sim.out rtl/mod_counter.v tb/mod_counter_tb.v
vvp sim.out
gtkwave mod_counter.vcd