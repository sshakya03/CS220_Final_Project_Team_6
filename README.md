# UART 16550 Final Project - Team 6

This project implements, verifies, and optimizes a UART 16550 compatible core.  The baseline design is verified for functional correctness and synthesized for performance evaluation using a 32nm SAED32 technology library.  Three RTL-level optimizations are implemented, each with dedicated verification, synthesis, and power analysis flows.

## 1. Directory Structure

* **`rtl/`**: All Verilog RTL source files — baseline and optimization variants.
* **`sim/`**: Testbenches and simulation scripts for baseline and optimizations.
* **`syn/`**: Synopsys Design Compiler synthesis scripts and generated reports.
* **`ptpx/`**: PrimeTime PX scripts and reports for power consumption analysis.
* **`sw/`**: Python bit-accurate software golden model.

## 2. Environment & Tools

* **Simulation**: Icarus Verilog (local) or Synopsys VCS (school server).
* **Synthesis**: Synopsys Design Compiler (W-2024.09).
* **Power Analysis**: Synopsys PrimeTime PX (V-2023.12).
* **Target Library**: SAED32 32nm PDK — worst-case corners (`ss0p75v125c` for RVT, LVT, HVT).
* **Software Model**: Python 3.10+ (standard library only — no packages required).

## 3. Optimizations

Three RTL-level optimizations are implemented.  Each has its own RTL variant, testbench, synthesis script, and PrimeTime script.

### Optimization 1: TX Datapath Clock Gating (Power)

**Goal**: Reduce dynamic power by preventing the TX shift register, counters, and FSM registers from toggling when the transmitter is idle and the TX FIFO is empty.

**Implementation**: Added a clock gate enable `tx_cg_en = (tstate != s_idle) | (|tf_count)` to `uart_transmitter_clkgate.v`.  The `if (tx_cg_en)` enable pattern is recognized by Synopsys DC and mapped to an ICG (Integrated Clock Gate) cell, physically gating the flip-flop clock.  The TX FIFO clock is **not** gated so the FIFO can accept writes at any time.

**Modified files**:
- `rtl/uart_transmitter_clkgate.v` — TX FSM with ICG-style enable
- `rtl/uart_regs_clkgate.v` — instantiates `uart_transmitter_clkgate`
- `rtl/uart_top_clkgate.v` — top-level module for Opt 1

**Expected PPA impact**: Power ↓ (fewer toggle events in TX datapath during idle), Area ≈ (ICG cells added, minimal overhead), Frequency ≈.

### Optimization 2: Reduced FIFO Depth 16 → 8 (Area)

**Goal**: Reduce area by halving the TX and RX FIFO RAM depth from 16 to 8 entries.

**Implementation**: Created `uart_tfifo_opt2.v` and `uart_rfifo_opt2.v` with `fifo_depth=8`, `fifo_pointer_w=3`, `fifo_counter_w=4`.  The RX FIFO error-bit scan is trimmed to 8 entries.  FCR trigger levels are remapped for the 8-deep FIFO: `{00→1, 01→2, 10→4, 11→6}` (vs. baseline `{1, 4, 8, 14}`).

**Modified files**:
- `rtl/uart_tfifo_opt2.v` — 8-deep TX FIFO
- `rtl/uart_rfifo_opt2.v` — 8-deep RX FIFO, simplified error_bit
- `rtl/uart_transmitter_opt2.v` — uses `uart_tfifo_opt2`
- `rtl/uart_receiver_opt2.v` — uses `uart_rfifo_opt2`
- `rtl/uart_regs_opt2.v` — uses opt2 TX/RX, updated trigger levels
- `rtl/uart_top_opt2.v` — top-level module for Opt 2

**Expected PPA impact**: Area ↓ (smaller RAM arrays in TX/RX FIFOs), Power ↓ (less RAM switching), Frequency ≈.

### Optimization 3: Pipelined Baud Enable (Frequency)

**Goal**: Improve maximum frequency by breaking the long combinatorial path from the 16-bit DLC counter zero-detect to the `enable` register into two shorter registered stages.

**Implementation**: Added a pipeline register `dlc_zero_q` in `uart_regs_pipe.v` that captures `~(|dlc)` at each clock edge (cleared on `start_dlc` to prevent spurious pulses after a divisor reload).  The `enable` register is then driven by `|dl & dlc_zero_q & ~start_dlc`.  This removes the 16-input NOR from the single-cycle path to `enable`, trading it for two shorter paths.  Both TX and RX use the same `enable`, so the 1-cycle phase shift is transparent.

**Modified files**:
- `rtl/uart_regs_pipe.v` — two-stage pipelined baud enable
- `rtl/uart_top_pipe.v` — top-level module for Opt 3

**Expected PPA impact**: Frequency ↑ (shorter critical path to `enable`), Area ≈ (one extra register), Power ≈.

## 4. Execution Instructions

### 4.1 Baseline RTL Simulation (Icarus Verilog, local)

```bash
cd sim/
bash run_iverilog.sh
# Expected: 20 PASSED / 0 FAILED / 20 TOTAL
```

### 4.2 Baseline RTL Simulation (VCS, school server)

```bash
cd sim/
./simv
# Expected: 20 PASSED / 0 FAILED / 20 TOTAL
```

### 4.3 Optimization Simulations (Icarus Verilog, local)

**Opt 1 — Clock Gating:**
```bash
cd sim/
iverilog -DDATA_BUS_WIDTH_8 -I../rtl -I. \
  ../rtl/uart_top_clkgate.v ../rtl/uart_wb.v ../rtl/uart_regs_clkgate.v \
  ../rtl/uart_transmitter_clkgate.v ../rtl/uart_receiver.v \
  ../rtl/uart_tfifo.v ../rtl/uart_rfifo.v ../rtl/uart_debug_if.v \
  ../rtl/uart_sync_flops.v ../rtl/raminfr.v uart_cs220_opt1_tb.v \
  -o sim_opt1 && vvp sim_opt1
# Expected: 10 PASSED / 0 FAILED / 10 TOTAL
```

**Opt 2 — Reduced FIFO:**
```bash
cd sim/
iverilog -DDATA_BUS_WIDTH_8 -I../rtl -I. \
  ../rtl/uart_top_opt2.v ../rtl/uart_wb.v ../rtl/uart_regs_opt2.v \
  ../rtl/uart_transmitter_opt2.v ../rtl/uart_receiver_opt2.v \
  ../rtl/uart_tfifo_opt2.v ../rtl/uart_rfifo_opt2.v \
  ../rtl/uart_debug_if.v ../rtl/uart_sync_flops.v ../rtl/raminfr.v \
  uart_cs220_opt2_tb.v -o sim_opt2 && vvp sim_opt2
# Expected: 10 PASSED / 0 FAILED / 10 TOTAL
```

**Opt 3 — Pipelined Enable:**
```bash
cd sim/
iverilog -DDATA_BUS_WIDTH_8 -I../rtl -I. \
  ../rtl/uart_top_pipe.v ../rtl/uart_wb.v ../rtl/uart_regs_pipe.v \
  ../rtl/uart_transmitter.v ../rtl/uart_receiver.v \
  ../rtl/uart_tfifo.v ../rtl/uart_rfifo.v ../rtl/uart_debug_if.v \
  ../rtl/uart_sync_flops.v ../rtl/raminfr.v uart_cs220_opt3_tb.v \
  -o sim_opt3 && vvp sim_opt3
# Expected: 10 PASSED / 0 FAILED / 10 TOTAL
```

### 4.4 Baseline Synthesis (Design Compiler, school server)

```bash
cd syn/
dc_shell -f run_synth.tcl | tee reports/dc_run.log
# Generates: netlists/uart_top_netlist.v, reports/
# Baseline Fmax ≈ 110.92 MHz
```

### 4.5 Optimization Synthesis (Design Compiler, school server)

```bash
cd syn/
dc_shell -f run_synth_opt1.tcl | tee reports/dc_opt1_run.log
dc_shell -f run_synth_opt2.tcl | tee reports/dc_opt2_run.log
dc_shell -f run_synth_opt3.tcl | tee reports/dc_opt3_run.log
# Generates: netlists/uart_top_clkgate_netlist.v
#            netlists/uart_top_opt2_netlist.v
#            netlists/uart_top_pipe_netlist.v
```

### 4.6 Baseline Power Analysis (PrimeTime PX, school server)

```bash
cd ptpx/
pt_shell -f run_ptpx.tcl | tee reports/ptpx_run.log
# Prerequisite: activity/uart_activity.vcd from VCS simulation
```

### 4.7 Optimization Power Analysis (PrimeTime PX, school server)

```bash
cd ptpx/
pt_shell -f run_ptpx_opt1.tcl | tee reports/ptpx_opt1_run.log
pt_shell -f run_ptpx_opt2.tcl | tee reports/ptpx_opt2_run.log
pt_shell -f run_ptpx_opt3.tcl | tee reports/ptpx_opt3_run.log
# Each script reads the corresponding VCD from activity/ and netlist from syn/netlists/
```

**Generating VCD files** (run each testbench on VCS before running ptpx):
```bash
# Baseline VCD
cd sim/ && ./simv   # dumps ptpx/activity/uart_activity.vcd

# Opt 1 VCD (compile uart_cs220_opt1_tb.v with VCS into simv_opt1, then run)
./simv_opt1         # dumps ptpx/activity/uart_opt1.vcd

# Opt 2 VCD
./simv_opt2         # dumps ptpx/activity/uart_opt2.vcd

# Opt 3 VCD
./simv_opt3         # dumps ptpx/activity/uart_opt3.vcd
```

### 4.8 Software Verification

```bash
cd sw/
python3 uart_golden_model.py
# Runs baseline 20-testcase sequence (RC01–RC10, CC01–CC10)

# To model Opt 2 (8-deep FIFO) semantics:
python3 -c "
from uart_golden_model import UART16550, FIFO_DEPTH_OPT2
uart = UART16550(fifo_depth=FIFO_DEPTH_OPT2)
print('Opt2 FIFO depth:', uart._fifo_depth)
"
```

## 5. Verification Summary

### Baseline (20 testcases)

| Suite | Count | Coverage |
|---|---|---|
| Random-Constrained (RC01–RC10) | 10 | Randomized framing (5–8 data bits, parity, stop bits), async clock |
| Corner Case (CC01–CC10) | 10 | FIFO burst, flush, register readback, post-reset state machines |
| **Total** | **20** | All pass for RTL sim and gate-level sim with SDF back-annotation |

### Optimization Testbenches (10 testcases each)

| Optimization | Testbench | Testcases | Focus |
|---|---|---|---|
| Opt 1 (clock gating) | `uart_cs220_opt1_tb.v` | OPT1_TC01–TC10 | Idle→active transitions, back-to-back bursts, parity, post-reset |
| Opt 2 (FIFO depth) | `uart_cs220_opt2_tb.v` | OPT2_TC01–TC10 | FIFO boundary (8 entries), flush, trigger levels, burst ordering |
| Opt 3 (pipelined enable) | `uart_cs220_opt3_tb.v` | OPT3_TC01–TC10 | Multiple divisors, divisor reload, frame formats, burst stability |

## 6. PPA Comparison

Fill in after running synthesis and PrimeTime on the school server:

| Design | Frequency (MHz) | Area (µm²) | Avg Power (mW) | Timing Slack (ns) |
|---|---|---|---|---|
| Baseline | ~110.92 | TBD | TBD | ≥ 0 |
| Opt 1 — Clock Gating | TBD | TBD | TBD (expected ↓) | TBD |
| Opt 2 — FIFO 8-deep | TBD | TBD (expected ↓) | TBD | TBD |
| Opt 3 — Pipelined Enable | TBD (expected ↑) | TBD | TBD | TBD |

Copy the generated reports from `syn/reports/` and `ptpx/reports/` into the final written report and fill in the table above.
