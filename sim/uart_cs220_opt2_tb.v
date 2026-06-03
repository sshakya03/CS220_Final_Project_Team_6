// Opt 2 (8-deep FIFO) testbench — 10 testcases
// Compiled against 32-bit bus netlist (synthesized without DATA_BUS_WIDTH_8)

`timescale 1ns/10ps

module uart_cs220_opt2_tb;

reg  clk;
reg  wb_reset;
initial clk = 0;
always  #10 clk = ~clk;

// 32-bit WB interface matching synthesized netlist
reg  [4:0]  wb_adr;
reg  [31:0] wb_wdat;
wire [31:0] wb_rdat;
reg  [3:0]  wb_sel;
reg         wb_we, wb_cyc, wb_stb;
wire        wb_ack, wb_int;
wire stx; reg srx;
wire rts, dtr; reg cts, dsr, ri, dcd;

integer pass_count, fail_count;
reg [7:0] r1,r2,r3,r4,r5,r6,r7,r8;
reg [7:0] lsr_val;
reg       dr_ready;

uart_top_opt2 dut (
    .wb_clk_i(clk), .wb_rst_i(wb_reset),
    .wb_adr_i(wb_adr), .wb_dat_i(wb_wdat), .wb_dat_o(wb_rdat),
    .wb_we_i(wb_we), .wb_stb_i(wb_stb), .wb_cyc_i(wb_cyc),
    .wb_ack_o(wb_ack), .wb_sel_i(wb_sel), .int_o(wb_int),
    .stx_pad_o(stx), .srx_pad_i(srx), .rts_pad_o(rts),
    .cts_pad_i(cts), .dtr_pad_o(dtr), .dsr_pad_i(dsr),
    .ri_pad_i(ri), .dcd_pad_i(dcd)
);

// 32-bit big-endian byte-lane encoding for UART register access
task wb_write;
    input [2:0] reg_addr;
    input [7:0] data;
    reg [4:0]  waddr;
    reg [3:0]  sel;
    reg [31:0] wdat;
    integer timeout;
begin
    waddr = {2'b00, reg_addr[2], 2'b00};
    case (reg_addr[1:0])
        2'b00: begin sel = 4'b1000; wdat = {data, 24'b0}; end
        2'b01: begin sel = 4'b0100; wdat = {8'b0, data, 16'b0}; end
        2'b10: begin sel = 4'b0010; wdat = {16'b0, data, 8'b0}; end
        2'b11: begin sel = 4'b0001; wdat = {24'b0, data}; end
    endcase
    @(posedge clk); #1;
    wb_adr=waddr; wb_wdat=wdat; wb_sel=sel; wb_we=1; wb_cyc=1; wb_stb=1;
    timeout=200;
    while (!wb_ack && timeout>0) begin @(posedge clk); timeout=timeout-1; end
    #1; wb_cyc=0; wb_stb=0; wb_we=0; @(posedge clk);
end
endtask

task wb_read;
    input  [2:0] reg_addr;
    output [7:0] data;
    reg [4:0]  raddr;
    reg [3:0]  sel;
    reg [31:0] rdat;
    integer timeout;
begin
    raddr = {2'b00, reg_addr[2], 2'b00};
    case (reg_addr[1:0])
        2'b00: sel = 4'b1000;
        2'b01: sel = 4'b0100;
        2'b10: sel = 4'b0010;
        2'b11: sel = 4'b0001;
    endcase
    @(posedge clk); #1;
    wb_adr=raddr; wb_sel=sel; wb_we=0; wb_cyc=1; wb_stb=1;
    timeout=200;
    while (!wb_ack && timeout>0) begin @(posedge clk); timeout=timeout-1; end
    #1; rdat=wb_rdat; wb_cyc=0; wb_stb=0;
    case (reg_addr[1:0])
        2'b00: data = rdat[31:24];
        2'b01: data = rdat[23:16];
        2'b10: data = rdat[15:8];
        2'b11: data = rdat[7:0];
    endcase
    @(posedge clk);
end
endtask

task init_uart;
    input [7:0] lcr_val; input [7:0] divisor;
begin
    wb_write(3'd3, lcr_val|8'h80); wb_write(3'd0, divisor); wb_write(3'd1, 8'h00);
    wb_write(3'd3, lcr_val); wb_write(3'd2, 8'hC7);
    repeat(4) @(posedge clk);
    wb_write(3'd2, 8'hC1); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
end
endtask

task wait_dr;
    integer cnt; reg [7:0] lsr;
begin
    cnt=8000; dr_ready=0;
    while (cnt>0 && !dr_ready) begin
        wb_read(3'd5, lsr);
        if (lsr[0]) dr_ready=1; else cnt=cnt-1;
    end
end
endtask

task loopback_byte;
    input [7:0] tx; input [7:0] exp; input [31:0] id;
    reg [7:0] rx;
begin
    wb_write(3'd0, tx); wait_dr();
    if (!dr_ready) begin
        $display("FAIL [%s]: timeout tx=0x%02X", id, tx); fail_count=fail_count+1;
    end else begin
        wb_read(3'd0, rx);
        if (rx===exp) begin $display("PASS [%s]: 0x%02X", id, rx); pass_count=pass_count+1; end
        else begin $display("FAIL [%s]: exp=0x%02X got=0x%02X", id, exp, rx); fail_count=fail_count+1; end
    end
end
endtask

initial begin
    $dumpfile("../ptpx/activity/uart_opt2.vcd");
    $dumpvars(0, uart_cs220_opt2_tb);

    `ifdef GLS
        $sdf_annotate("../syn/netlists/uart_top_opt2.sdf", dut);
    `endif

    wb_reset=1; wb_cyc=0; wb_stb=0; wb_we=0; wb_sel=4'h0;
    wb_adr=0; wb_wdat=0; srx=1; cts=1; dsr=1; ri=1; dcd=1;
    pass_count=0; fail_count=0;
    repeat(10) @(posedge clk); #1 wb_reset=0; repeat(5) @(posedge clk);

    $display("\n=======================================================");
    $display("  Opt 2 (8-Deep FIFO) Verification — 10 Testcases");
    $display("=======================================================\n");

    init_uart(8'h03, 8'd5); // 8N1, divisor=5

    // TC01: Single byte (depth=1) — basic loopback with 8-deep FIFO
    loopback_byte(8'hA5, 8'hA5, "O2T1");

    // TC02: 4-byte burst (half of 8-deep FIFO)
    wb_write(3'd0,8'h10); wb_write(3'd0,8'h20); wb_write(3'd0,8'h30); wb_write(3'd0,8'h40);
    wait_dr(); wb_read(3'd0,r1); wait_dr(); wb_read(3'd0,r2);
    wait_dr(); wb_read(3'd0,r3); wait_dr(); wb_read(3'd0,r4);
    if (r1===8'h10 && r2===8'h20 && r3===8'h30 && r4===8'h40) begin
        $display("PASS [O2T2]: 4-byte burst"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O2T2]: 4-byte mismatch"); fail_count=fail_count+1;
    end

    // TC03: Full 8-byte burst — exercises entire FIFO depth
    wb_write(3'd0,8'h01); wb_write(3'd0,8'h02); wb_write(3'd0,8'h03); wb_write(3'd0,8'h04);
    wb_write(3'd0,8'h05); wb_write(3'd0,8'h06); wb_write(3'd0,8'h07); wb_write(3'd0,8'h08);
    wait_dr(); wb_read(3'd0,r1); wait_dr(); wb_read(3'd0,r2);
    wait_dr(); wb_read(3'd0,r3); wait_dr(); wb_read(3'd0,r4);
    wait_dr(); wb_read(3'd0,r5); wait_dr(); wb_read(3'd0,r6);
    wait_dr(); wb_read(3'd0,r7); wait_dr(); wb_read(3'd0,r8);
    if (r1===8'h01 && r2===8'h02 && r3===8'h03 && r4===8'h04 &&
        r5===8'h05 && r6===8'h06 && r7===8'h07 && r8===8'h08) begin
        $display("PASS [O2T3]: full 8-byte burst correct"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O2T3]: 8-byte burst mismatch"); fail_count=fail_count+1;
    end

    // TC04: All-zeros byte through 8-deep FIFO
    loopback_byte(8'h00, 8'h00, "O2T4");

    // TC05: All-ones byte through 8-deep FIFO
    loopback_byte(8'hFF, 8'hFF, "O2T5");

    // TC06: RX FIFO flush — write 3 bytes, flush, verify DR=0
    wb_write(3'd0,8'hAA); wb_write(3'd0,8'hBB); wb_write(3'd0,8'hCC);
    wait_dr();
    wb_write(3'd2, 8'hC3); // FCR: FIFO_EN | RX_RST
    repeat(4) @(posedge clk);
    wb_write(3'd2, 8'hC1);
    repeat(4) @(posedge clk);
    wb_read(3'd5, lsr_val);
    if (!lsr_val[0]) begin
        $display("PASS [O2T6]: RX flush DR=0"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O2T6]: DR still set after RX flush"); fail_count=fail_count+1;
    end

    // TC07: FCR trigger level 01 (trigger=2 in 8-deep config)
    // Wait for any in-flight bytes from TC06 (BB was in TX shift register during TC06 flush)
    repeat(1200) @(posedge clk);
    init_uart(8'h03, 8'd5);
    wb_write(3'd2, 8'hC5); // FCR: FIFO_EN | trigger=01 (level=2)
    wb_write(3'd0,8'h55); wb_write(3'd0,8'h66);
    wait_dr(); wb_read(3'd0,r1); wait_dr(); wb_read(3'd0,r2);
    if (r1===8'h55 && r2===8'h66) begin
        $display("PASS [O2T7]: trigger=2 readback correct"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O2T7]: r1=0x%02X r2=0x%02X (exp 0x55 0x66)", r1, r2); fail_count=fail_count+1;
    end

    // TC08: Interleaved write/read pairs (FIFO in steady use)
    init_uart(8'h03, 8'd5);
    loopback_byte(8'hCA, 8'hCA, "O2T8");

    // TC09: Post-reset FIFO count = 0 (LSR THRE=1, TE=1 after reset)
    @(posedge clk); #1 wb_reset=1; repeat(5) @(posedge clk); #1 wb_reset=0;
    repeat(5) @(posedge clk);
    wb_read(3'd5, lsr_val);
    if (lsr_val[5] && lsr_val[6]) begin
        $display("PASS [O2T9]: post-reset LSR=0x%02X (THRE=1,TE=1)", lsr_val); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O2T9]: post-reset LSR=0x%02X", lsr_val); fail_count=fail_count+1;
    end

    // TC10: 7E1 frame through reduced FIFO — verify parity path still correct
    init_uart(8'h03, 8'd5);
    wb_write(3'd3, 8'h99); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h19); // 7E1
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h2A, 8'h2A, "O2TA");

    $display("\n=======================================================");
    $display("  OPT2 SUMMARY: %0d PASSED / %0d FAILED / 10 TOTAL",
             pass_count, fail_count);
    $display("=======================================================\n");
    $finish;
end

endmodule
