#!/usr/bin/env bash
# Opt 2 (8-deep FIFO) RTL simulation — iverilog
# Usage: bash sim/run_iverilog_opt2.sh

set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
RTL_DIR="$SCRIPT_DIR/../rtl"
OUT_DIR="$SCRIPT_DIR/rtl_sim/out"
LOG_DIR="$SCRIPT_DIR/rtl_sim/log"
SIM_BIN="$OUT_DIR/uart_sim_opt2"

mkdir -p "$OUT_DIR" "$LOG_DIR" "$SCRIPT_DIR/../ptpx/activity"

echo "============================================"
echo " Opt 2 (8-deep FIFO) RTL Simulation"
echo "============================================"

iverilog \
    -DDATA_BUS_WIDTH_8 \
    -o "$SIM_BIN" \
    -I "$RTL_DIR" \
    -I "$SCRIPT_DIR" \
    "$RTL_DIR/uart_top_opt2.v" \
    "$RTL_DIR/uart_wb.v" \
    "$RTL_DIR/uart_regs_opt2.v" \
    "$RTL_DIR/uart_transmitter_opt2.v" \
    "$RTL_DIR/uart_receiver_opt2.v" \
    "$RTL_DIR/uart_tfifo_opt2.v" \
    "$RTL_DIR/uart_rfifo_opt2.v" \
    "$RTL_DIR/uart_debug_if.v" \
    "$RTL_DIR/uart_sync_flops.v" \
    "$RTL_DIR/raminfr.v" \
    "$SCRIPT_DIR/uart_cs220_opt2_tb.v" \
    2>&1 | tee "$LOG_DIR/compile_opt2.log"

echo "Compiled: $SIM_BIN"

cd "$SCRIPT_DIR"
vvp "$SIM_BIN" 2>&1 | tee "$LOG_DIR/sim_opt2.log"
echo "Log: $LOG_DIR/sim_opt2.log"
echo "VCD: $SCRIPT_DIR/../ptpx/activity/uart_opt2.vcd"
echo "============================================"
