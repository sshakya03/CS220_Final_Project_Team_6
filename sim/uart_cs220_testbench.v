// CS220 Spring 2026 - Team 6
// UART 16550 Verification Testbench
// 20 testcases: 10 random-constrained (RC01-RC10) + 10 corner case (CC01-CC10)
// Uses 8-bit bus mode and MCR loopback for self-checking
//
// Compile & run:
//   iverilog -DDATA_BUS_WIDTH_8 -I../rtl -I. \
//     ../rtl/uart_top.v ../rtl/uart_wb.v ../rtl/uart_regs.v \
//     ../rtl/uart_transmitter.v ../rtl/uart_receiver.v \
//     ../rtl/uart_tfifo.v ../rtl/uart_rfifo.v ../rtl/uart_debug_if.v \
//     ../rtl/uart_sync_flops.v ../rtl/raminfr.v uart_cs220_testbench.v \
//     -o sim_out && vvp sim_out

`timescale 1ns/10ps
`define DATA_BUS_WIDTH_8

module uart_cs220_testbench;

`include "uart_defines.v"

// ------------------------------------------------------------------
// Clock / Reset
// ------------------------------------------------------------------
reg  clk;
reg  wb_reset;

// Clock: 20 ns period = 50 MHz
initial clk = 0;
always  #10 clk = ~clk;

// ------------------------------------------------------------------
// Wishbone Interface (8-bit mode: 3-bit addr, 8-bit data)
// ------------------------------------------------------------------
reg  [`UART_ADDR_WIDTH-1:0] wb_adr;
reg  [`UART_DATA_WIDTH-1:0] wb_wdat;
wire [`UART_DATA_WIDTH-1:0] wb_rdat;
reg  [3:0]  wb_sel;
reg         wb_we;
reg         wb_cyc;
reg         wb_stb;
wire        wb_ack;
wire        wb_int;

// ------------------------------------------------------------------
// UART Serial / Modem
// ------------------------------------------------------------------
wire stx;
reg  srx;
wire rts, dtr;
reg  cts, dsr, ri, dcd;

// ------------------------------------------------------------------
// Test counters and shared variables
// ------------------------------------------------------------------
integer pass_count;
integer fail_count;

// Shared regs used across test blocks
reg [7:0]  r1, r2, r3;
reg [7:0]  scr_val;
reg [7:0]  dll_val;
reg [7:0]  lsr_val;
reg [7:0]  ier_val;
reg        dr_ready;

// ------------------------------------------------------------------
// DUT: uart_top in 8-bit mode
// Parameters: uart_data_width=8, uart_addr_width=3
// ------------------------------------------------------------------
uart_top #(`UART_DATA_WIDTH, `UART_ADDR_WIDTH) dut (
    .wb_clk_i   (clk),
    .wb_rst_i   (wb_reset),
    .wb_adr_i   (wb_adr),
    .wb_dat_i   (wb_wdat),
    .wb_dat_o   (wb_rdat),
    .wb_we_i    (wb_we),
    .wb_stb_i   (wb_stb),
    .wb_cyc_i   (wb_cyc),
    .wb_ack_o   (wb_ack),
    .wb_sel_i   (wb_sel),
    .int_o      (wb_int),
    .stx_pad_o  (stx),
    .srx_pad_i  (srx),
    .rts_pad_o  (rts),
    .cts_pad_i  (cts),
    .dtr_pad_o  (dtr),
    .dsr_pad_i  (dsr),
    .ri_pad_i   (ri),
    .dcd_pad_i  (dcd)
);

// ------------------------------------------------------------------
// Wishbone Write Task
// Drive signals after posedge, wait for ack, then deassert.
// uart_wb inserts 1 wait-state: ack arrives 2 clocks after assertion.
// ------------------------------------------------------------------
task wb_write;
    input [`UART_ADDR_WIDTH-1:0] addr;
    input [`UART_DATA_WIDTH-1:0] data;
    integer timeout;
begin
    @(posedge clk); #1;
    wb_adr  = addr;
    wb_wdat = data;
    wb_we   = 1'b1;
    wb_cyc  = 1'b1;
    wb_stb  = 1'b1;
    wb_sel  = 4'hF;
    // Poll for ack (arrives ~2 cycles later)
    timeout = 200;
    while (!wb_ack && timeout > 0) begin
        @(posedge clk);
        timeout = timeout - 1;
    end
    #1;
    wb_cyc  = 1'b0;
    wb_stb  = 1'b0;
    wb_we   = 1'b0;
    @(posedge clk);
end
endtask

// ------------------------------------------------------------------
// Wishbone Read Task
// ------------------------------------------------------------------
task wb_read;
    input  [`UART_ADDR_WIDTH-1:0] addr;
    output [`UART_DATA_WIDTH-1:0] data;
    integer timeout;
begin
    @(posedge clk); #1;
    wb_adr  = addr;
    wb_we   = 1'b0;
    wb_cyc  = 1'b1;
    wb_stb  = 1'b1;
    wb_sel  = 4'hF;
    timeout = 200;
    while (!wb_ack && timeout > 0) begin
        @(posedge clk);
        timeout = timeout - 1;
    end
    // Sample data one delta after ack so registered wb_dat_o is stable
    #1;
    data    = wb_rdat;
    wb_cyc  = 1'b0;
    wb_stb  = 1'b0;
    @(posedge clk);
end
endtask

// ------------------------------------------------------------------
// Initialize UART
//   lcr_val  : LCR format bits (without DLAB, e.g. 8'h03 = 8N1)
//   divisor  : 8-bit DLL value (DLM kept 0)
// After init, loopback mode (MCR[4]=1) is enabled for all tests.
// ------------------------------------------------------------------
task init_uart;
    input [7:0] lcr_val;
    input [7:0] divisor;
begin
    // Set DLAB to access divisor latch
    wb_write(3'd3, lcr_val | 8'h80);
    // Program divisor
    wb_write(3'd0, divisor);    // DLL
    wb_write(3'd1, 8'h00);      // DLM = 0
    // Clear DLAB, apply data format
    wb_write(3'd3, lcr_val);
    // Enable and reset both FIFOs
    wb_write(3'd2, 8'hC7);      // FCR: FIFO_EN | RX_RST | TX_RST
    repeat(4) @(posedge clk);
    wb_write(3'd2, 8'hC1);      // FCR: FIFO_EN only
    // Enable loopback mode
    wb_write(3'd4, 8'h10);      // MCR: LOOP
    repeat(5) @(posedge clk);
end
endtask

// ------------------------------------------------------------------
// Poll LSR data-ready bit (LSR[0]) with 3000-cycle timeout.
// Sets dr_ready=1 if data arrived, dr_ready=0 on timeout.
// ------------------------------------------------------------------
task wait_dr;
    integer cnt;
    reg [7:0] lsr;
begin
    cnt      = 3000;
    dr_ready = 1'b0;
    while (cnt > 0 && !dr_ready) begin
        wb_read(3'd5, lsr);
        if (lsr[0]) dr_ready = 1'b1;
        else        cnt = cnt - 1;
    end
end
endtask

// ------------------------------------------------------------------
// Loopback byte test helper
// Writes tx_data to THR, waits for RX, reads from RBR, compares.
// expected: value expected in RBR (may differ from tx_data for
//           narrow character widths due to bit masking).
// test_id : 4-char string identifier, e.g. "RC01"
// ------------------------------------------------------------------
task loopback_byte;
    input [7:0]  tx_data;
    input [7:0]  expected;
    input [31:0] test_id;   // 4 ASCII chars packed in 32 bits
    reg   [7:0]  rx_data;
begin
    wb_write(3'd0, tx_data);    // Write to THR
    wait_dr(/* dr_ready updated */);
    if (!dr_ready) begin
        $display("FAIL [%s]: timeout waiting for RX data (tx=0x%02X)",
                 test_id, tx_data);
        fail_count = fail_count + 1;
    end else begin
        wb_read(3'd0, rx_data);  // Read from RBR
        if (rx_data === expected) begin
            $display("PASS [%s]: TX=0x%02X  RX=0x%02X  (correct)",
                     test_id, tx_data, rx_data);
            pass_count = pass_count + 1;
        end else begin
            $display("FAIL [%s]: TX=0x%02X  expected=0x%02X  got=0x%02X",
                     test_id, tx_data, expected, rx_data);
            fail_count = fail_count + 1;
        end
    end
end
endtask

// ------------------------------------------------------------------
// Hard reset + re-initialize to 8N1 helper
// ------------------------------------------------------------------
task hard_reset_8n1;
begin
    wb_reset = 1'b1;
    repeat(5) @(posedge clk);
    wb_reset = 1'b0;
    repeat(5) @(posedge clk);
    init_uart(8'h03, 8'd5);
end
endtask

// ==================================================================
// MAIN TEST SEQUENCE
// ==================================================================
initial begin
    // ----- Signal initialization -----
    wb_reset = 1'b1;
    wb_cyc   = 1'b0;
    wb_stb   = 1'b0;
    wb_we    = 1'b0;
    wb_sel   = 4'hF;
    wb_adr   = {`UART_ADDR_WIDTH{1'b0}};
    wb_wdat  = {`UART_DATA_WIDTH{1'b0}};
    srx      = 1'b1;   // idle high
    cts      = 1'b1;
    dsr      = 1'b1;
    ri       = 1'b1;
    dcd      = 1'b1;
    pass_count = 0;
    fail_count = 0;

    // Apply reset for 10 cycles
    repeat(10) @(posedge clk);
    wb_reset = 1'b0;
    repeat(5)  @(posedge clk);

    $display("");
    $display("=======================================================");
    $display("  CS220 Team 6 - UART 16550 Verification Testbench");
    $display("  Config: 8-bit bus, divisor=5 (625kbaud), loopback");
    $display("=======================================================");

    // Initialize UART: 8N1, divisor=5, loopback enabled
    init_uart(8'h03, 8'd5);

    // ==============================================================
    // RANDOM-CONSTRAINED TESTS (RC01-RC10)
    // Goal: verify correct TX/RX of diverse data patterns and
    //       configurations using pseudo-random but fixed data values.
    // ==============================================================
    $display("\n--- Random-Constrained Tests (RC01-RC10) ---");

    // RC01: 8N1 - pseudo-random byte 0xA5 (1010 0101)
    loopback_byte(8'hA5, 8'hA5, "RC01");

    // RC02: 8N1 - pseudo-random byte 0x3C (0011 1100)
    loopback_byte(8'h3C, 8'h3C, "RC02");

    // RC03: 8N1 - pseudo-random byte 0xF0 (1111 0000)
    loopback_byte(8'hF0, 8'hF0, "RC03");

    // RC04: 8N1 - pseudo-random byte 0x0F (0000 1111)
    loopback_byte(8'h0F, 8'h0F, "RC04");

    // RC05: 8N1 - pseudo-random byte 0x96 (1001 0110)
    loopback_byte(8'h96, 8'h96, "RC05");

    // RC06: 7N1 - 7-bit character width; 0x37 has bit7=0 so
    //       transmitted and received values are identical.
    wb_write(3'd3, 8'h82);   // LCR DLAB=1, WLS=10 (7-bit)
    wb_write(3'd0, 8'd5);    // DLL
    wb_write(3'd1, 8'h00);   // DLM
    wb_write(3'd3, 8'h02);   // LCR: 7N1 (DLAB=0)
    wb_write(3'd4, 8'h10);   // MCR: loopback
    repeat(5) @(posedge clk);
    loopback_byte(8'h37, 8'h37, "RC06");

    // RC07: 8O1 (odd parity) - byte 0xA5
    //       LCR: WLS=11(8-bit), PEN=1(parity), EPS=0(odd)
    wb_write(3'd3, 8'h8B);   // LCR DLAB=1, 8O1
    wb_write(3'd0, 8'd5);
    wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h0B);   // LCR: 8O1 (DLAB=0)
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'hA5, 8'hA5, "RC07");

    // RC08: 8E1 (even parity) - byte 0x69 (0110 1001)
    //       LCR: WLS=11, PEN=1, EPS=1
    wb_write(3'd3, 8'h9B);   // LCR DLAB=1, 8E1
    wb_write(3'd0, 8'd5);
    wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h1B);   // LCR: 8E1 (DLAB=0)
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h69, 8'h69, "RC08");

    // RC09: Burst of 3 bytes (8N1) - write all then read all back
    wb_write(3'd3, 8'h83);   // LCR DLAB=1, 8N1
    wb_write(3'd0, 8'd5);
    wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h03);   // LCR: 8N1
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    wb_write(3'd0, 8'h12);   // THR <- 0x12
    wb_write(3'd0, 8'h34);   // THR <- 0x34
    wb_write(3'd0, 8'h56);   // THR <- 0x56
    // Read back three bytes one at a time
    wait_dr(); wb_read(3'd0, r1);
    wait_dr(); wb_read(3'd0, r2);
    wait_dr(); wb_read(3'd0, r3);
    if (r1 === 8'h12 && r2 === 8'h34 && r3 === 8'h56) begin
        $display("PASS [RC09]: burst 3 bytes: 0x12 0x34 0x56");
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [RC09]: expected 0x12 0x34 0x56, got 0x%02X 0x%02X 0x%02X",
                 r1, r2, r3);
        fail_count = fail_count + 1;
    end

    // RC10: 5-bit character (5N1) - byte 0x15 (bits[4:0]=10101)
    //       Bit7-5 of sent byte are not transmitted; received value
    //       has the same bit pattern since 0x15 < 0x20.
    wb_write(3'd3, 8'h80);   // LCR DLAB=1, WLS=00 (5-bit)
    wb_write(3'd0, 8'd5);
    wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h00);   // LCR: 5N1
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h15, 8'h15, "RC10");

    // ==============================================================
    // CORNER CASE TESTS (CC01-CC10)
    // Goal: verify edge-case data values and control register behavior.
    // ==============================================================
    $display("\n--- Corner Case Tests (CC01-CC10) ---");

    // Reset back to 8N1 for corner case tests
    hard_reset_8n1();

    // CC01: All-zeros data byte (0x00)
    loopback_byte(8'h00, 8'h00, "CC01");

    // CC02: All-ones data byte (0xFF)
    loopback_byte(8'hFF, 8'hFF, "CC02");

    // CC03: Alternating bits 0x55 (0101 0101)
    loopback_byte(8'h55, 8'h55, "CC03");

    // CC04: Alternating bits 0xAA (1010 1010)
    loopback_byte(8'hAA, 8'hAA, "CC04");

    // CC05: Scratch register write/read-back
    wb_write(3'd7, 8'hBE);
    wb_read (3'd7, scr_val);
    if (scr_val === 8'hBE) begin
        $display("PASS [CC05]: scratch reg: wrote 0xBE, read 0x%02X", scr_val);
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [CC05]: scratch reg: expected 0xBE, got 0x%02X", scr_val);
        fail_count = fail_count + 1;
    end

    // CC06: Divisor latch (DLL) read-back
    wb_write(3'd3, 8'h83);   // LCR: DLAB=1
    wb_read (3'd0, dll_val); // Read DLL
    wb_write(3'd3, 8'h03);   // LCR: DLAB=0
    if (dll_val === 8'd5) begin
        $display("PASS [CC06]: DLL readback = %0d (expected 5)", dll_val);
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [CC06]: DLL readback = %0d (expected 5)", dll_val);
        fail_count = fail_count + 1;
    end

    // CC07: RX FIFO flush via FCR bit[1]
    //   Write a byte, wait for it to arrive, flush RX FIFO,
    //   then verify LSR DR=0 (FIFO empty).
    wb_write(3'd0, 8'h42);  // Put 'B' into TX FIFO
    wait_dr();               // Confirm it looped back into RX FIFO
    // Flush RX FIFO
    wb_write(3'd2, 8'hC3);  // FCR: FIFO_EN | RX_RST
    repeat(4) @(posedge clk);
    wb_write(3'd2, 8'hC1);  // FCR: FIFO_EN only
    repeat(4) @(posedge clk);
    wb_read(3'd5, lsr_val);
    if (!lsr_val[0]) begin
        $display("PASS [CC07]: RX FIFO flush: DR=0 after flush");
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [CC07]: RX FIFO flush: DR still=1 after flush");
        fail_count = fail_count + 1;
    end

    // CC08: IER (Interrupt Enable Register) write/read-back
    //   Only bits [3:0] are implemented.
    wb_write(3'd1, 8'h0F);  // Enable all 4 interrupt sources
    wb_read (3'd1, ier_val);
    if ((ier_val & 8'h0F) === 8'h0F) begin
        $display("PASS [CC08]: IER read=0x%02X (bits[3:0]=F)", ier_val);
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [CC08]: IER expected 0x0F, got 0x%02X", ier_val);
        fail_count = fail_count + 1;
    end
    wb_write(3'd1, 8'h00);  // Disable all interrupts

    // CC09: Post-reset LSR state
    //   After hardware reset with no prior TX, LSR[5]=1 (THRE) and
    //   LSR[6]=1 (TE) because both TX FIFO and shift register are empty.
    wb_reset = 1'b1;
    repeat(5) @(posedge clk);
    wb_reset = 1'b0;
    repeat(5) @(posedge clk);
    wb_read(3'd5, lsr_val);
    if (lsr_val[5] && lsr_val[6]) begin
        $display("PASS [CC09]: post-reset LSR=0x%02X (THRE=1, TE=1)", lsr_val);
        pass_count = pass_count + 1;
    end else begin
        $display("FAIL [CC09]: post-reset LSR=0x%02X (expected THRE=1,TE=1)", lsr_val);
        fail_count = fail_count + 1;
    end
    // Re-initialize for final test
    init_uart(8'h03, 8'd5);

    // CC10: Single byte after full reset-and-reinit
    //   Ensures the UART is functional after a reset cycle.
    loopback_byte(8'h42, 8'h42, "CC10");

    // ==============================================================
    // SUMMARY
    // ==============================================================
    $display("");
    $display("=======================================================");
    $display("  TEST SUMMARY: %0d PASSED  /  %0d FAILED  /  20 TOTAL",
             pass_count, fail_count);
    $display("=======================================================");
    if (fail_count == 0)
        $display("  ALL TESTS PASSED");
    else
        $display("  ** FAILURES DETECTED **");
    $display("");
    $finish;
end

endmodule
