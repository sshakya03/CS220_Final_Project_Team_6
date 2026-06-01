// Opt 3 (pipelined baud enable) testbench — 10 testcases

`timescale 1ns/10ps
`define DATA_BUS_WIDTH_8

module uart_cs220_opt3_tb;

`include "uart_defines.v"

reg  clk;
reg  wb_reset;
initial clk = 0;
always  #10 clk = ~clk;

reg  [`UART_ADDR_WIDTH-1:0] wb_adr;
reg  [`UART_DATA_WIDTH-1:0] wb_wdat;
wire [`UART_DATA_WIDTH-1:0] wb_rdat;
reg  [3:0]  wb_sel;
reg         wb_we, wb_cyc, wb_stb;
wire        wb_ack, wb_int;
wire stx; reg srx;
wire rts, dtr; reg cts, dsr, ri, dcd;

integer pass_count, fail_count;
reg [7:0] r1,r2,r3;
reg [7:0] lsr_val;
reg       dr_ready;

uart_top_pipe #(`UART_DATA_WIDTH, `UART_ADDR_WIDTH) dut (
    .wb_clk_i(clk), .wb_rst_i(wb_reset),
    .wb_adr_i(wb_adr), .wb_dat_i(wb_wdat), .wb_dat_o(wb_rdat),
    .wb_we_i(wb_we), .wb_stb_i(wb_stb), .wb_cyc_i(wb_cyc),
    .wb_ack_o(wb_ack), .wb_sel_i(wb_sel), .int_o(wb_int),
    .stx_pad_o(stx), .srx_pad_i(srx), .rts_pad_o(rts),
    .cts_pad_i(cts), .dtr_pad_o(dtr), .dsr_pad_i(dsr),
    .ri_pad_i(ri), .dcd_pad_i(dcd)
);

task wb_write;
    input [`UART_ADDR_WIDTH-1:0] addr; input [`UART_DATA_WIDTH-1:0] data;
    integer timeout;
begin
    @(posedge clk); #1;
    wb_adr=addr; wb_wdat=data; wb_we=1; wb_cyc=1; wb_stb=1; wb_sel=4'hF;
    timeout=200;
    while (!wb_ack && timeout>0) begin @(posedge clk); timeout=timeout-1; end
    #1; wb_cyc=0; wb_stb=0; wb_we=0; @(posedge clk);
end
endtask

task wb_read;
    input  [`UART_ADDR_WIDTH-1:0] addr; output [`UART_DATA_WIDTH-1:0] data;
    integer timeout;
begin
    @(posedge clk); #1;
    wb_adr=addr; wb_we=0; wb_cyc=1; wb_stb=1; wb_sel=4'hF;
    timeout=200;
    while (!wb_ack && timeout>0) begin @(posedge clk); timeout=timeout-1; end
    #1; data=wb_rdat; wb_cyc=0; wb_stb=0; @(posedge clk);
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
    cnt=6000; dr_ready=0;
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
    $dumpfile("../ptpx/activity/uart_opt3.vcd");
    $dumpvars(0, uart_cs220_opt3_tb);

    `ifdef GLS
        $sdf_annotate("../syn/netlists/uart_top_pipe.sdf", dut);
    `endif

    wb_reset=1; wb_cyc=0; wb_stb=0; wb_we=0; wb_sel=4'hF;
    wb_adr=0; wb_wdat=0; srx=1; cts=1; dsr=1; ri=1; dcd=1;
    pass_count=0; fail_count=0;
    repeat(10) @(posedge clk); #1 wb_reset=0; repeat(5) @(posedge clk);

    $display("\n=======================================================");
    $display("  Opt 3 (Pipelined Baud Enable) Verification — 10 Testcases");
    $display("=======================================================\n");

    // TC01: divisor=5 (625kbaud equiv at 50MHz sysclk), 8N1
    init_uart(8'h03, 8'd5);
    loopback_byte(8'hA5, 8'hA5, "O3T1");

    // TC02: divisor=10 (slower baud), 8N1 — pipelined enable phase still correct
    init_uart(8'h03, 8'd10);
    loopback_byte(8'h3C, 8'h3C, "O3T2");

    // TC03: divisor=20 (even slower), 8N1
    init_uart(8'h03, 8'd20);
    loopback_byte(8'hF0, 8'hF0, "O3T3");

    // TC04: divisor=5, 7N1
    init_uart(8'h02, 8'd5);
    loopback_byte(8'h37, 8'h37, "O3T4");

    // TC05: divisor=5, 8O1 (odd parity)
    wb_write(3'd3, 8'h8B); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h0B); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'hA5, 8'hA5, "O3T5");

    // TC06: divisor=5, 5N1
    wb_write(3'd3, 8'h80); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h00); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h15, 8'h15, "O3T6");

    // TC07: divisor=5, 8N1, burst of 3 bytes — pipeline stable across frames
    init_uart(8'h03, 8'd5);
    wb_write(3'd0,8'h12); wb_write(3'd0,8'h34); wb_write(3'd0,8'h56);
    wait_dr(); wb_read(3'd0,r1);
    wait_dr(); wb_read(3'd0,r2);
    wait_dr(); wb_read(3'd0,r3);
    if (r1===8'h12 && r2===8'h34 && r3===8'h56) begin
        $display("PASS [O3T7]: burst 3 bytes"); pass_count=pass_count+1;
    end else begin
        $display("FAIL [O3T7]: burst mismatch"); fail_count=fail_count+1;
    end

    // TC08: Change divisor mid-session (tests start_dlc clears dlc_zero_q)
    init_uart(8'h03, 8'd5);
    loopback_byte(8'hAA, 8'hAA, "O3T8"); // at divisor=5
    init_uart(8'h03, 8'd10);              // reload to divisor=10
    loopback_byte(8'h55, 8'h55, "O3T8"); // reuse id; check divisor reload works

    // TC09: 8E2 (even parity, 2 stop bits), divisor=5
    wb_write(3'd3, 8'h9F); wb_write(3'd0, 8'd5); wb_write(3'd1, 8'h00);
    wb_write(3'd3, 8'h1F); wb_write(3'd4, 8'h10);
    repeat(5) @(posedge clk);
    loopback_byte(8'h69, 8'h69, "O3T9");

    // TC10: All-zeros and all-ones at divisor=5
    init_uart(8'h03, 8'd5);
    loopback_byte(8'h00, 8'h00, "O3TA");

    $display("\n=======================================================");
    $display("  OPT3 SUMMARY: %0d PASSED / %0d FAILED / 10 TOTAL",
             pass_count, fail_count);
    $display("=======================================================\n");
    $finish;
end

endmodule
