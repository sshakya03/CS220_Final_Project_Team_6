#!/usr/bin/env bash
# Opt 3 (pipelined baud enable) gate-level simulation — VCS (school server)
# Usage: bash sim/gate_sim/run/run_gls_opt3.sh [--sdf]

set -e
REPO="$(cd "$(dirname "$0")/../../.." && pwd)"
NET_DIR="$REPO/syn/netlists"
SIM_DIR="$REPO/sim/gate_sim"
ACT_DIR="$REPO/ptpx/activity"
LOG_DIR="$SIM_DIR/log"
BIN_DIR="$SIM_DIR/bin"

SAED_RVT="/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/verilog/saed32nm.v"
SAED_LVT="/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_lvt/verilog/saed32nm_lvt.v"
SAED_HVT="/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_hvt/verilog/saed32nm_hvt.v"

mkdir -p "$LOG_DIR" "$BIN_DIR" "$ACT_DIR"

USE_SDF=0
for arg in "$@"; do
    case "$arg" in --sdf) USE_SDF=1 ;; esac
done

SIM_BIN="$BIN_DIR/simv_opt3"
SDF_FLAG=""
TCHK_FLAG="+notimingchecks"
if [ "$USE_SDF" -eq 1 ]; then
    SDF_FLAG="+define+GLS"
    TCHK_FLAG="+neg_tchk"
    SIM_BIN="$BIN_DIR/simv_opt3_sdf"
    echo "Mode: GLS with SDF (timing-accurate)"
else
    echo "Mode: zero-delay GLS (functionality check)"
fi

echo "============================================"
echo " Opt 3 Gate-Level Simulation"
echo "============================================"

vcs -full64 \
    -DDATA_BUS_WIDTH_8 \
    $SDF_FLAG \
    $TCHK_FLAG \
    -timescale=1ns/10ps \
    +incdir+"$REPO/rtl" \
    +incdir+"$REPO/sim" \
    "$SAED_RVT" "$SAED_LVT" "$SAED_HVT" \
    "$NET_DIR/uart_top_pipe_netlist.v" \
    "$REPO/sim/uart_cs220_opt3_tb.v" \
    -o "$SIM_BIN" \
    2>&1 | tee "$LOG_DIR/compile_gls_opt3.log"

echo "Compiled: $SIM_BIN"

cd "$REPO/sim"
"$SIM_BIN" 2>&1 | tee "$LOG_DIR/sim_gls_opt3.log"

echo "Log: $LOG_DIR/sim_gls_opt3.log"
if [ "$USE_SDF" -eq 0 ]; then
    echo "VCD: $ACT_DIR/uart_opt3.vcd"
    echo ""
    echo "If all tests PASS, re-run with --sdf to generate timing-accurate VCD for PTPX."
fi
echo "============================================"
