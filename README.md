# UART 16550 Project Baseline - Team 6

This project implements and verifies a baseline design for a UART 16550 compatible core. The design is verified for functional correctness and synthesized for performance evaluation using a 32nm technology library.

## 1. Directory Structure

The project is organized into the following mandatory directories:

* **`rtl/`**: Contains all Verilog RTL source files for the UART 16550 core.
* **`sim/`**: Contains the main Verilog testbench (`uart_cs220_testbench.v`) and all simulation/verification files.
* **`syn/`**: Contains Synopsys Design Compiler synthesis scripts and generated reports.
* **`ptpx/`**: Contains PrimeTime PX scripts and reports for power consumption analysis.
* **`sw/`**: Contains the Python-based bit-accurate software golden model and related testbench.

## 2. Environment & Tools

The following tools and libraries are required to reproduce the results:

* **Simulation**: Icarus Verilog (local) or Synopsys VCS (server).
* **Synthesis**: Synopsys Design Compiler (W-2024.09).
* **Power Analysis**: Synopsys PrimeTime PX (V-2023.12).
* **Target Library**: SAED32 32nm PDK (worst-case corners: ss0p75v125c).
* **Software Model**: Python 3.10+ (standard library only).

## 3. Execution Instructions

### 3.1 RTL Simulation (Local - Icarus Verilog)
To run the functional verification suite locally using Icarus Verilog:
1. Navigate to the simulation folder: `cd sim/`
2. Execute the shell script: `bash run_iverilog.sh`
3. (Optional) To view waveforms in GTKWave, run: `bash run_iverilog.sh --wave`
* **Expected Result**: `20 PASSED / 0 FAILED / 20 TOTAL`

### 3.2 RTL Simulation (School Server - VCS)
To run the simulation using Synopsys VCS on the school server:
1. Navigate to the simulation folder: `cd sim/`
2. Run the compiled simulator: `./simv`
* **Expected Result**: `20 PASSED / 0 FAILED / 20 TOTAL`

### 3.3 Synthesis Flow (Design Compiler)
To perform synthesis and determine the maximum frequency (Fmax) using Synopsys Design Compiler:
1. Navigate to the synthesis directory: `cd syn/`
2. Launch `dc_shell` in batch mode using the provided Tcl script:
   ```bash
   dc_shell -f run_synth.tcl | tee reports/dc_run.log
Verification: The script autonomously executes the Fmax search by iteratively tightening clock constraints.

Outputs: Once finished, check syn/reports/ for timing, area, and constraint reports. The gate-level netlist and SDF file are written to syn/netlists/.

Baseline Target: Frequency ~110.92 MHz.

### 3.4 Power Analysis (PrimeTime PX)
Power analysis is performed using a two-step flow requiring activity data from the simulation.

1. **Activity Generation**: 
   Ensure your testbench in `sim/` includes the `$dumpvars` command. Run a VCS simulation to generate the VCD file. Copy the resulting file to the activity directory:
   `cp sim/uart_activity.vcd ptpx/activity/`

2. **Run PrimeTime**: 
   Navigate to the power analysis folder and launch `pt_shell` in power mode:
   ```bash
   cd ptpx/
   pt_shell -f run_ptpx.tcl | tee reports/ptpx_run.log

### 3.5 Software Verification
To run the bit-accurate Python golden model and compare results:
1. Navigate to the software folder: `cd sw/`
2. Run the model: 
   ```bash
   python3 uart_golden_model.py

## 4. Verification Summary

The design is verified against a suite of 20 non-trivial testcases:

* **10 Random-Constrained Testcases**: Verifies randomized framing configurations (5-8 data bits, parity, stop bits) and asynchronous clock relationships between the Wishbone bus and UART baud rate.
* **10 Corner Case Testcases**: Specifically targets high-risk behaviors including FIFO burst writes/reads, FIFO flushes, register readback integrity (Scratchpad and DLL), and post-reset state machine transitions.

**Compliance**: All 20 testcases successfully achieved a `PASSED` status for both the high-level RTL functional simulation and the post-synthesis gate-level netlist simulation (with back-annotated timing via the SDF file).
