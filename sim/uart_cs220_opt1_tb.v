// Opt 1 (TX clock gating) testbench — 10 testcases
// Compiled against 32-bit bus netlist (synthesized without DATA_BUS_WIDTH_8)

`timescale 1ns/10ps

module uart_cs220_opt1_tb;

reg  clk;
reg  wb_reset;

initial clk = 0;
always  #10 clk = ~clk;

// 32-bit WB interface matching synthesized netlist
reg  [4:0]  wb_adr;
reg  [31:0] wb_wdat;
wire [31:0] wb_rdat;
reg  [3:0]  wb_sel;
reg         wb_we;
reg         wb_cyc;
reg         wb_stb;
wire        wb_ack;
wire        wb_int;
wire stx;
reg  srx;
wire rts, dtr;
reg  cts, dsr, ri, dcd;

integer pass_count;
integer fail_count;
reg [7:0]  r1, r2, r3, r4, r5;
reg [7:0]  lsr_val;
reg        dr_ready;

uart_top_clkgate dut (
    .wb_clk_i(clk), .wb_rst_i(wb_reset),
    .wb_adr_i(wb_adr), .wb_dat_i(wb_wdat), .wb_dat_o(wb_rdat),
    .wb_we_i(wb_we), .wb_stb_i(wb_stb), .wb_cyc_i(wb_cyc),
    .wb_ack_o(wb_ack), .wb_sel_i(wb_sel), .int_o(wb_int),
    .stx_pad_o(stx), .srx_pad_i(srx), .rts_pad_o(rts),
    .cts_pad_i(cts), .dtr_pad_o(dtr), .dsr_pad_i(dsr),
    .ri_pad_i(ri), .dcd_pad_i(dcd)
);

// 32-bit big-endian byte-lane encoding for UART register access
// reg[2]=word select (0→regs 0-3, 1→regs 4-7)
// reg[1:0]=byte lane: 00→sel=4'b1000 data[31:24], 01→sel=4'b0100 data[23:16],
//                     10→sel=4'b0010 data[15:8],   11→sel=4'b0001 data[7:0]
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
    #1; wb_cyc=0; wb_stb=0; wb_we=0;
    @(posedge clk);
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
    input [7:0] lcr_val;
    input [7:0] divisor;
begin
    wb_write(3'd3, lcr_val | 8'h80);
    wb_write(3'd0, divisor);
    wb_write(3'd1, 8'h00);
    wb_write(3'd3, lcr_val);
    wb_write(3'd2, 8'hC7);
    repeat(4) @(posedge clk);
    wb_write(3'd2, 8'hC1);
    wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
end
endtask

task wait_dr;
    integer cnt; reg [7:0] lsr;
begin
    cnt=3000; dr_ready=0;
    while (cnt>0 && !dr_ready) begin
        wb_read(3'd5, lsr);
        if (lsr[0]) dr_ready=1; else cnt=cnt-1;
    end
end
endtask

task loopback_byte;
    input [7:0]  tx_data;
    input [7:0]  expected;
    input [31:0] test_id;
    reg   [7:0]  rx_data;
begin
    wb_write(3'd0, tx_data);
    wait_dr();
    if (!dr_ready) begin
        $display("FAIL [%s]: timeout (tx=0x%02X)", test_id, tx_data);
        fail_count=fail_count+1;
    end else begin
        wb_read(3'd0, rx_data);
        if (rx_data===expected) begin
            $display("PASS [%s]: TX=0x%02X RX=0x%02X", test_id, tx_data, rx_data);
            pass_count=pass_count+1;
        end else begin
            $display("FAIL [%s]: TX=0x%02X expected=0x%02X got=0x%02X",
                     test_id, tx_data, expected, rx_data);
            fail_count=fail_count+1;
        end
    end
end
endtask

initial begin
    $dumpfile("../ptpx/activity/uart_opt1.vcd");
    $dumpvars(0, uart_cs220_opt1_tb);

    `ifdef GLS
        $sdf_annotate("../syn/netlists/uart_top_clkgate.sdf", dut);
    `endif

    wb_reset=1; wb_cyc=0; wb_stb=0; wb_we=0; wb_sel=4'h0;
    wb_adr=0; wb_wdat=0; srx=1; cts=1; dsr=1; ri=1; dcd=1;
    pass_count=0; fail_count=0;
    repeat(10) @(posedge clk);
    #1 wb_reset=0;
    repeat(5) @(posedge clk);

    $display("\n=======================================================");
    $display("  Opt 1 (TX Clock Gating) Verification — 10 Testcases");
    $display("=======================================================\n");

    init_uart(8'h03, 8'd5); // 8N1, divisor=5

    // TC01: Single byte after cold start — clock gate must not block first TX
    loopback_byte(8'hA5, 8'hA5, "O1T1");

    // TC02: Long idle (100 cycles) then TX — ICG exits correctly
    repeat(100) @(posedge clk);
    loopback_byte(8'h5A, 8'h5A, "O1T2");

    // TC03: Back-to-back burst of 3 bytes — no gate between frames
    wb_write(3'd0, 8'h11);
    wb_write(3'd0, 8'h22);
    wb_write(3'd0, 8'h33);
    wait_dr(); wb_read(3'd0, r1);
    wait_dr(); wb_read(3'd0, r2);
    wait_dr(); wb_read(3'd0, r3);
    if (r1===8'h11 && r2===8'h22 && r3===8'h33) begin
        $display("PASS [O1T3]: burst 3: 0x11 0x22 0x33"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O1T3]: got 0x%02X 0x%02X 0x%02X",r1,r2,r3); fail_count=fail_count+1;
    end

    // TC04: Back-to-back burst of 5 bytes
    wb_write(3'd0, 8'hAA); wb_write(3'd0, 8'hBB); wb_write(3'd0, 8'hCC);
    wb_write(3'd0, 8'hDD); wb_write(3'd0, 8'hEE);
    wait_dr(); wb_read(3'd0, r1);
    wait_dr(); wb_read(3'd0, r2);
    wait_dr(); wb_read(3'd0, r3);
    wait_dr(); wb_read(3'd0, r4);
    wait_dr(); wb_read(3'd0, r5);
    if (r1===8'hAA && r2===8'hBB && r3===8'hCC && r4===8'hDD && r5===8'hEE) begin
        $display("PASS [O1T4]: burst 5 bytes correct"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O1T4]: mismatch in burst 5"); fail_count=fail_count+1;
    end

    // TC05: All-zeros byte (worst case for gating — zero data toggle)
    loopback_byte(8'h00, 8'h00, "O1T5");

    // TC06: All-ones byte (max toggle activity)
    loopback_byte(8'hFF, 8'hFF, "O1T6");

    // TC07: 7N1 configuration with gating
    wb_write(3'd3, 8'h82); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h02); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h37, 8'h37, "O1T7");

    // TC08: 8O1 (odd parity) — parity path inside gated TX
    wb_write(3'd3, 8'h8B); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h0B); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'hA5, 8'hA5, "O1T8");

    // TC09: Idle → TX → long idle → TX again (two gating cycles)
    wb_write(3'd3, 8'h83); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h03); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h42, 8'h42, "O1T9");
    repeat(200) @(posedge clk); // long idle
    loopback_byte(8'h24, 8'h24, "O1T9"); // reuse label; both checked

    // TC10: Post-reset transmit — reset clears gating state, TX works immediately
    @(posedge clk); #1 wb_reset=1; repeat(5) @(posedge clk); #1 wb_reset=0;
    repeat(5) @(posedge clk);
    init_uart(8'h03, 8'd5);
    loopback_byte(8'h55, 8'h55, "O1TA");

    $display("\n=======================================================");
    $display("  OPT1 SUMMARY: %0d PASSED / %0d FAILED / 10 TOTAL",
             pass_count, fail_count);
    $display("=======================================================\n");
    $finish;
end

endmodule
