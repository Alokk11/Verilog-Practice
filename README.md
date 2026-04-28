# RTL Design and Verification Practice (Verilog)

This repository documents my structured learning journey in RTL design using Verilog.  
The goal is to build strong fundamentals in combinational and sequential logic along with proper simulation and verification practices.

---

## 🛠 Tools Used

- Icarus Verilog (Compilation & Simulation)
- GTKWave (Waveform Analysis)
- VS Code (Development Environment)

---

## 📁 Project Structure

```
rtl/        # RTL design files
tb/         # Testbenches
README.md
.gitignore
```

---


---

## ✅ Completed Designs

### 🔹 Half Adder
- RTL implementation  
- Dedicated testbench  
- Waveform dumping using VCD  
- Verified using GTKWave  

---

### 🔹 16:1 Multiplexer
- Vector-index based RTL implementation (`assign y = in[sel]`)
- Dedicated testbench  
- VCD waveform generation  
- Fully simulated and verified  

---

### 🔹 16-bit Carry Lookahead Adder (CLA)
- Structural implementation using **4-bit CLA blocks**
- Carry **Generate (G)** and **Propagate (P)** logic
- Faster carry computation compared to ripple carry adders
- Dedicated testbench with multiple test cases
- VCD waveform dumping and verification using GTKWave

---

## ▶ How to Simulate

### Example: 16:1 Multiplexer

Compile:
```
iverilog rtl/mux16to1.v tb/mux16to1_tb.v -o sim.out
```

Run:
```
vvp sim.out
```

View waveform:
```
gtkwave mux16to1.vcd
```

---

## 🎯 Learning Progression

This repository will progressively include:

- Full Adder
- Ripple Carry Adder
- Multiplexers (parameterized versions)
- Counters
- Flip-Flops
- Finite State Machines (FSM)
- ALU (Arithmetic Logic Unit)
- Basic verification enhancements

---

## 📌 Objective

To build a strong foundation in RTL design and simulation as preparation for advanced digital design and VLSI verification roles.

---

More modules will be added progressively.
# Verilog Practice Projects

This repository contains Verilog RTL designs and testbenches for digital design practice and verification.

## Projects

### Mod-N Counter
- Parameterized counter design
- Generates 1-cycle tick at rollover
- Verified using testbench and waveform analysis

## Tools Used
- Icarus Verilog (Simulation)
- GTKWave (Waveform analysis)

## How to Run

```bash
iverilog -o mod_counter_tb.vvp rtl/mod_counter.v tb/mod_counter_tb.v
vvp mod_counter_tb.vvp
gtkwave mod_counter.vcd