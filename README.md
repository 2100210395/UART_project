# UART_project
A simple and complete UART protocol design in Verilog with transmitter, receiver, and testbench. Simulated using Vivado. Ideal for learning serial communication design and HDL simulation.
Sure! Here's a detailed and polished `README.md` description for your UART project on GitHub:

---

# 🟢 UART Protocol in Verilog

This repository contains a complete Verilog implementation of the **UART (Universal Asynchronous Receiver/Transmitter)** protocol. It includes both the **transmitter (TX)** and **receiver (RX)** modules along with a **testbench** to verify functionality. Designed and simulated using **Xilinx Vivado**.

---

## 📌 Features

* ✅ Fully synthesizable UART TX and RX modules
* ✅ Baud rate generator with configurable parameters
* ✅ Simple FSM-based design for both TX and RX
* ✅ 1 start bit, 8 data bits, 1 stop bit format
* ✅ Testbench to verify TX → RX functionality
* ✅ Written in clean, modular Verilog HDL
* ✅ Simulated and verified in Vivado

---

## 🧠 Parameters

| Parameter   | Description           | Default   |
| ----------- | --------------------- | --------- |
| `clk_freq`  | Clock frequency in Hz | `1000000` |
| `baud_rate` | UART baud rate        | `9600`    |

---

## 📂 Files Included

* `UART_tx.v` – UART Transmitter module
* `UART_rx.v` – UART Receiver module
* `UART_top.v` – Top-level module connecting TX and RX
* `UART_tb.v` – Testbench to simulate the UART protocol

---

## ▶️ Simulation

The testbench does the following:

1. Sends random 8-bit data using the TX module.
2. Captures serial output and verifies it at RX.
3. Logs sent and received data to monitor correctness.

## 🧪 Waveform Example



## 📦 Getting Started

1. Clone the repo

   ```bash
   git clone https://github.com/your-username/UART-Verilog.git
   cd UART-Verilog
   ```
2. Open the files in **Vivado** or any Verilog simulator (e.g., ModelSim, GTKWave).
3. Run the testbench to verify functionality.
