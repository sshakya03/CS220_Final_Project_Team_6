#!/usr/bin/env python3
"""
CS220 Spring 2026 - Team 6
UART 16550 Software Golden Model

PURPOSE
-------
Python behavioral model of the UART 16550 core.  Mirrors the RTL at the
register/frame level so test results can be compared against the Verilog
simulation (uart_cs220_testbench.v).

Runs the same 20-testcase sequence: RC01-RC10 (random-constrained) and
CC01-CC10 (corner cases), all in loopback mode with 8-bit Wishbone bus.

Usage:
    python3 sw/uart_golden_model.py
"""

from collections import deque


# ---------------------------------------------------------------------------
# LCR bit positions
# ---------------------------------------------------------------------------
LCR_WLS  = (0, 1)   # word length select bits
LCR_STB  = 2        # stop bits
LCR_PEN  = 3        # parity enable
LCR_EPS  = 4        # even parity select
LCR_SP   = 5        # stick parity
LCR_BC   = 6        # break control
LCR_DLAB = 7        # divisor latch access bit

# LSR bit positions
LSR_DR   = 0        # data ready
LSR_OE   = 1        # overrun error
LSR_PE   = 2        # parity error
LSR_FE   = 3        # framing error
LSR_BI   = 4        # break interrupt
LSR_THRE = 5        # TX FIFO empty
LSR_TE   = 6        # TX shift register + FIFO both empty
LSR_EI   = 7        # error in RX FIFO

# MCR bit positions
MCR_DTR  = 0
MCR_RTS  = 1
MCR_OUT1 = 2
MCR_OUT2 = 3
MCR_LB   = 4        # loopback

FIFO_DEPTH = 16


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _bit(val, n):
    return (val >> n) & 1

def _bits(val, hi, lo):
    mask = (1 << (hi - lo + 1)) - 1
    return (val >> lo) & mask

def _calc_parity(data, bits, eps, stick, pen):
    if not pen:
        return None
    if stick:
        return 1 if eps else 0       # mark parity=0, space parity=1 (inverted)
    ones = bin(data & ((1 << bits) - 1)).count('1')
    if eps:
        return 0 if (ones % 2 == 0) else 1   # even: total 1s should be even
    else:
        return 0 if (ones % 2 == 1) else 1   # odd:  total 1s should be odd

def _data_bits_from_lcr(lcr):
    return 5 + _bits(lcr, 1, 0)

def _divisor_to_baud(divisor, clk_hz=50_000_000):
    if divisor == 0:
        return 0
    return clk_hz / (16 * divisor)


# ---------------------------------------------------------------------------
# UART 16550 register model
# ---------------------------------------------------------------------------

class UART16550:
    def __init__(self):
        self._dll   = 0
        self._dlm   = 0
        self._ier   = 0
        self._fcr   = 0
        self._lcr   = 0
        self._mcr   = 0
        self._scr   = 0
        self._lsr   = 0b01100000    # THRE=1, TE=1 at reset
        self._msr   = 0
        self._tx_fifo = deque()
        self._rx_fifo = deque()     # entries: (data, pe, fe, bi)

    # -----------------------------------------------------------------------
    # Register write  (address 0-7, 8-bit data)
    # -----------------------------------------------------------------------
    def write(self, addr, data):
        data &= 0xFF
        dlab = _bit(self._lcr, LCR_DLAB)

        if addr == 0:
            if dlab:
                self._dll = data
            else:
                self._thr_write(data)
        elif addr == 1:
            if dlab:
                self._dlm = data
            else:
                self._ier = data & 0x0F
        elif addr == 2:
            self._fcr_write(data)
        elif addr == 3:
            self._lcr = data
        elif addr == 4:
            self._mcr = data & 0x1F
            if _bit(self._mcr, MCR_LB):
                self._loopback_flush()
        elif addr == 7:
            self._scr = data

    # -----------------------------------------------------------------------
    # Register read
    # -----------------------------------------------------------------------
    def read(self, addr):
        dlab = _bit(self._lcr, LCR_DLAB)

        if addr == 0:
            if dlab:
                return self._dll
            else:
                return self._rbr_read()
        elif addr == 1:
            if dlab:
                return self._dlm
            else:
                return self._ier
        elif addr == 2:
            return self._iir()
        elif addr == 3:
            return self._lcr
        elif addr == 4:
            return self._mcr
        elif addr == 5:
            return self._lsr_read()
        elif addr == 6:
            return self._msr
        elif addr == 7:
            return self._scr
        return 0

    # -----------------------------------------------------------------------
    # Internal: TX FIFO write + loopback
    # -----------------------------------------------------------------------
    def _thr_write(self, data):
        if len(self._tx_fifo) < FIFO_DEPTH:
            self._tx_fifo.append(data)
        else:
            pass    # overflow; drop (simplified)

        if _bit(self._mcr, MCR_LB):
            self._loopback_flush()

        # Update LSR: THRE reflects whether TX FIFO is empty after loopback
        self._update_lsr()

    def _loopback_flush(self):
        while self._tx_fifo:
            raw = self._tx_fifo.popleft()
            rx_data = self._frame_loopback(raw)
            if len(self._rx_fifo) < FIFO_DEPTH:
                self._rx_fifo.append(rx_data)
            # else: overrun (simplified: drop)
        self._update_lsr()

    def _frame_loopback(self, raw):
        nbits = _data_bits_from_lcr(self._lcr)
        mask  = (1 << nbits) - 1
        data  = raw & mask

        pen   = _bit(self._lcr, LCR_PEN)
        eps   = _bit(self._lcr, LCR_EPS)
        stick = _bit(self._lcr, LCR_SP)

        tx_par = _calc_parity(data, nbits, eps, stick, pen)
        rx_par = _calc_parity(data, nbits, eps, stick, pen)   # no corruption in model
        pe = (pen and tx_par != rx_par)

        return (data, pe, False, False)   # (data, parity_err, frame_err, break)

    # -----------------------------------------------------------------------
    # Internal: RBR read
    # -----------------------------------------------------------------------
    def _rbr_read(self):
        if not self._rx_fifo:
            return 0
        entry = self._rx_fifo.popleft()
        self._update_lsr()
        return entry[0]

    # -----------------------------------------------------------------------
    # Internal: FCR write
    # -----------------------------------------------------------------------
    def _fcr_write(self, data):
        self._fcr = data & 0xFF
        if _bit(data, 1):   # RX FIFO reset
            self._rx_fifo.clear()
        if _bit(data, 2):   # TX FIFO reset
            self._tx_fifo.clear()
        self._update_lsr()

    # -----------------------------------------------------------------------
    # Internal: LSR update
    # -----------------------------------------------------------------------
    def _update_lsr(self):
        lsr = 0
        if self._rx_fifo:
            lsr |= (1 << LSR_DR)
            if any(e[1] for e in self._rx_fifo):    # parity error in FIFO
                lsr |= (1 << LSR_EI)
        if not self._tx_fifo:
            lsr |= (1 << LSR_THRE)
            lsr |= (1 << LSR_TE)
        self._lsr = lsr

    def _lsr_read(self):
        return self._lsr

    # -----------------------------------------------------------------------
    # Internal: IIR (simplified)
    # -----------------------------------------------------------------------
    def _iir(self):
        if self._rx_fifo and _bit(self._ier, 0):
            return 0b0100       # RDA interrupt
        if not self._tx_fifo and _bit(self._ier, 1):
            return 0b0010       # THRE interrupt
        return 0b0001           # no interrupt pending

    # -----------------------------------------------------------------------
    # Public helpers
    # -----------------------------------------------------------------------
    def reset(self):
        self.__init__()

    @property
    def baud_rate(self):
        divisor = (self._dlm << 8) | self._dll
        return _divisor_to_baud(divisor)

    @property
    def data_bits(self):
        return _data_bits_from_lcr(self._lcr)

    @property
    def parity_mode(self):
        pen   = _bit(self._lcr, LCR_PEN)
        eps   = _bit(self._lcr, LCR_EPS)
        stick = _bit(self._lcr, LCR_SP)
        if not pen:
            return 'none'
        if stick:
            return 'mark' if not eps else 'space'
        return 'even' if eps else 'odd'

    @property
    def stop_bits(self):
        return 2 if _bit(self._lcr, LCR_STB) else 1

    def data_ready(self):
        return bool(self._rx_fifo)


# ---------------------------------------------------------------------------
# Test helpers  (mirror the Verilog testbench tasks)
# ---------------------------------------------------------------------------

def init_uart(dut, lcr_val, divisor):
    dut.write(3, lcr_val | 0x80)   # DLAB=1
    dut.write(0, divisor)           # DLL
    dut.write(1, 0x00)              # DLM
    dut.write(3, lcr_val)           # DLAB=0
    dut.write(2, 0xC7)              # FCR: enable + reset both FIFOs
    dut.write(2, 0xC1)              # FCR: enable only
    dut.write(4, 0x10)              # MCR: loopback


def hard_reset_8n1(dut):
    dut.reset()
    init_uart(dut, 0x03, 5)


def loopback_byte(dut, tx_data, expected, test_id, results):
    dut.write(0, tx_data)
    if not dut.data_ready():
        print(f"FAIL [{test_id}]: no RX data (tx=0x{tx_data:02X})")
        results['fail'] += 1
        return
    rx_data = dut.read(0)
    if rx_data == expected:
        print(f"PASS [{test_id}]: TX=0x{tx_data:02X}  RX=0x{rx_data:02X}  (correct)")
        results['pass'] += 1
    else:
        print(f"FAIL [{test_id}]: TX=0x{tx_data:02X}  expected=0x{expected:02X}  got=0x{rx_data:02X}")
        results['fail'] += 1


# ---------------------------------------------------------------------------
# 20-testcase sequence
# ---------------------------------------------------------------------------

def run_tests():
    dut = UART16550()
    results = {'pass': 0, 'fail': 0}

    print()
    print("=======================================================")
    print("  CS220 Team 6 - UART 16550 Software Golden Model")
    print("  Config: 8-bit bus, divisor=5 (625kbaud), loopback")
    print("=======================================================")

    init_uart(dut, 0x03, 5)

    # -------------------------------------------------------------------
    print("\n--- Random-Constrained Tests (RC01-RC10) ---")
    # -------------------------------------------------------------------

    # RC01-RC05: 8N1 fixed bytes
    loopback_byte(dut, 0xA5, 0xA5, "RC01", results)
    loopback_byte(dut, 0x3C, 0x3C, "RC02", results)
    loopback_byte(dut, 0xF0, 0xF0, "RC03", results)
    loopback_byte(dut, 0x0F, 0x0F, "RC04", results)
    loopback_byte(dut, 0x96, 0x96, "RC05", results)

    # RC06: 7N1
    dut.write(3, 0x82); dut.write(0, 5); dut.write(1, 0x00)
    dut.write(3, 0x02); dut.write(4, 0x10)
    loopback_byte(dut, 0x37, 0x37, "RC06", results)

    # RC07: 8O1
    dut.write(3, 0x8B); dut.write(0, 5); dut.write(1, 0x00)
    dut.write(3, 0x0B); dut.write(4, 0x10)
    loopback_byte(dut, 0xA5, 0xA5, "RC07", results)

    # RC08: 8E1
    dut.write(3, 0x9B); dut.write(0, 5); dut.write(1, 0x00)
    dut.write(3, 0x1B); dut.write(4, 0x10)
    loopback_byte(dut, 0x69, 0x69, "RC08", results)

    # RC09: burst 3 bytes (8N1)
    dut.write(3, 0x83); dut.write(0, 5); dut.write(1, 0x00)
    dut.write(3, 0x03); dut.write(4, 0x10)
    dut.write(0, 0x12); dut.write(0, 0x34); dut.write(0, 0x56)
    r = [dut.read(0), dut.read(0), dut.read(0)]
    if r == [0x12, 0x34, 0x56]:
        print("PASS [RC09]: burst 3 bytes: 0x12 0x34 0x56")
        results['pass'] += 1
    else:
        print(f"FAIL [RC09]: expected 0x12 0x34 0x56, got {[hex(x) for x in r]}")
        results['fail'] += 1

    # RC10: 5N1
    dut.write(3, 0x80); dut.write(0, 5); dut.write(1, 0x00)
    dut.write(3, 0x00); dut.write(4, 0x10)
    loopback_byte(dut, 0x15, 0x15, "RC10", results)

    # -------------------------------------------------------------------
    print("\n--- Corner Case Tests (CC01-CC10) ---")
    # -------------------------------------------------------------------

    hard_reset_8n1(dut)

    # CC01-CC04: edge data values
    loopback_byte(dut, 0x00, 0x00, "CC01", results)
    loopback_byte(dut, 0xFF, 0xFF, "CC02", results)
    loopback_byte(dut, 0x55, 0x55, "CC03", results)
    loopback_byte(dut, 0xAA, 0xAA, "CC04", results)

    # CC05: scratch register write/read
    dut.write(7, 0xBE)
    scr_val = dut.read(7)
    if scr_val == 0xBE:
        print(f"PASS [CC05]: scratch reg: wrote 0xBE, read 0x{scr_val:02X}")
        results['pass'] += 1
    else:
        print(f"FAIL [CC05]: scratch reg: expected 0xBE, got 0x{scr_val:02X}")
        results['fail'] += 1

    # CC06: DLL readback
    dut.write(3, 0x83)
    dll_val = dut.read(0)
    dut.write(3, 0x03)
    if dll_val == 5:
        print(f"PASS [CC06]: DLL readback = {dll_val} (expected 5)")
        results['pass'] += 1
    else:
        print(f"FAIL [CC06]: DLL readback = {dll_val} (expected 5)")
        results['fail'] += 1

    # CC07: RX FIFO flush
    dut.write(0, 0x42)
    assert dut.data_ready()
    dut.write(2, 0xC3)   # FCR: FIFO_EN | RX_RST
    dut.write(2, 0xC1)
    lsr_val = dut.read(5)
    if not (lsr_val & 0x01):
        print("PASS [CC07]: RX FIFO flush: DR=0 after flush")
        results['pass'] += 1
    else:
        print(f"FAIL [CC07]: RX FIFO flush: DR still=1 after flush (LSR=0x{lsr_val:02X})")
        results['fail'] += 1

    # CC08: IER write/read
    dut.write(1, 0x0F)
    ier_val = dut.read(1)
    if (ier_val & 0x0F) == 0x0F:
        print(f"PASS [CC08]: IER read=0x{ier_val:02X} (bits[3:0]=F)")
        results['pass'] += 1
    else:
        print(f"FAIL [CC08]: IER expected 0x0F, got 0x{ier_val:02X}")
        results['fail'] += 1
    dut.write(1, 0x00)

    # CC09: post-reset LSR
    dut.reset()
    lsr_val = dut.read(5)
    if (lsr_val >> 5) & 0x3 == 0x3:    # THRE=1, TE=1
        print(f"PASS [CC09]: post-reset LSR=0x{lsr_val:02X} (THRE=1, TE=1)")
        results['pass'] += 1
    else:
        print(f"FAIL [CC09]: post-reset LSR=0x{lsr_val:02X} (expected THRE=1,TE=1)")
        results['fail'] += 1

    # CC10: byte after full reset + reinit
    init_uart(dut, 0x03, 5)
    loopback_byte(dut, 0x42, 0x42, "CC10", results)

    # -------------------------------------------------------------------
    print()
    print("=======================================================")
    print(f"  TEST SUMMARY: {results['pass']} PASSED  /  {results['fail']} FAILED  /  20 TOTAL")
    print("=======================================================")
    if results['fail'] == 0:
        print("  ALL TESTS PASSED")
    else:
        print("  ** FAILURES DETECTED **")
    print()

    return results


# ---------------------------------------------------------------------------
# Metrics summary
# ---------------------------------------------------------------------------

def print_metrics():
    print("\n--- Golden Model Configuration Metrics ---")
    configs = [
        ("8N1",  0x03, 5,  50_000_000),
        ("7N1",  0x02, 5,  50_000_000),
        ("8O1",  0x0B, 5,  50_000_000),
        ("8E1",  0x1B, 5,  50_000_000),
        ("5N1",  0x00, 5,  50_000_000),
    ]
    print(f"  {'Config':<8} {'DataBits':>8} {'Parity':>8} {'StopBits':>9} {'BaudRate':>12} {'FrameBits':>10} {'Throughput(bps)':>16}")
    for name, lcr, div, clk in configs:
        dut = UART16550()
        dut.write(3, lcr | 0x80); dut.write(0, div); dut.write(1, 0); dut.write(3, lcr)
        baud    = dut.baud_rate
        dbits   = dut.data_bits
        par     = dut.parity_mode
        sbits   = dut.stop_bits
        pbit    = 0 if par == 'none' else 1
        frame   = 1 + dbits + pbit + sbits   # start + data + parity + stop
        tput    = baud * dbits / frame
        print(f"  {name:<8} {dbits:>8} {par:>8} {sbits:>9} {baud:>12.0f} {frame:>10} {tput:>16.0f}")


if __name__ == "__main__":
    run_tests()
    print_metrics()
