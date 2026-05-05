#!/usr/bin/env bash
# CS220 Team 6 - UART 16550 RTL Simulation Script (iverilog)
# Usage:  bash run_iverilog.sh [--wave]
#   --wave : also dump waveforms to sim/out/waves.vcd (view with GTKWave)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
RTL_DIR="$SCRIPT_DIR/../rtl"
OUT_DIR="$SCRIPT_DIR/rtl_sim/out"
LOG_DIR="$SCRIPT_DIR/rtl_sim/log"
SIM_BIN="$OUT_DIR/uart_sim"

WAVE=0
for arg in "$@"; do
    case "$arg" in
        --wave) WAVE=1 ;;
        *) echo "Unknown argument: $arg"; exit 1 ;;
    esac
done

mkdir -p "$OUT_DIR" "$LOG_DIR"

echo "============================================"
echo " CS220 Team 6 - UART 16550 Simulation"
echo " Tool : iverilog + vvp"
echo "============================================"

# ----------------------------------------------------------------
# Compile
# ----------------------------------------------------------------
echo "[1/2] Compiling..."

WAVE_FLAG=""
if [ "$WAVE" -eq 1 ]; then
    WAVE_FLAG="-DDUMP_WAVES"
fi

iverilog \
    -DDATA_BUS_WIDTH_8 \
    $WAVE_FLAG \
    -o "$SIM_BIN" \
    -I "$RTL_DIR" \
    -I "$SCRIPT_DIR" \
    "$RTL_DIR/uart_top.v" \
    "$RTL_DIR/uart_wb.v" \
    "$RTL_DIR/uart_regs.v" \
    "$RTL_DIR/uart_transmitter.v" \
    "$RTL_DIR/uart_receiver.v" \
    "$RTL_DIR/uart_tfifo.v" \
    "$RTL_DIR/uart_rfifo.v" \
    "$RTL_DIR/uart_debug_if.v" \
    "$RTL_DIR/uart_sync_flops.v" \
    "$RTL_DIR/raminfr.v" \
    "$SCRIPT_DIR/uart_cs220_testbench.v" \
    2>&1 | tee "$LOG_DIR/compile.log"

echo "[1/2] Compilation done.  Binary: $SIM_BIN"

# ----------------------------------------------------------------
# Simulate
# ----------------------------------------------------------------
echo "[2/2] Simulating..."
vvp "$SIM_BIN" 2>&1 | tee "$LOG_DIR/sim.log"
echo "[2/2] Simulation complete.  Log: $LOG_DIR/sim.log"

if [ "$WAVE" -eq 1 ]; then
    echo ""
    echo " Waveform written to: $OUT_DIR/waves.vcd"
    echo " View with: gtkwave $OUT_DIR/waves.vcd"
fi

echo "============================================"
