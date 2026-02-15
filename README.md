# Verilog Practice

This repository contains my RTL design practice using Verilog.

## Tools Used
- Icarus Verilog
- GTKWave
- VS Code

## Completed Designs
- Half Adder (with testbench and waveform simulation)

## Simulation

Compiled using:
iverilog -o sim half_adder.v tb_half_adder.v

Run using:
vvp sim

Waveform:
gtkwave wave.vcd

More modules will be added progressively.
