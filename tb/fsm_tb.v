module fsm_tb;

reg clk, rst, x;
wire y;

fsm_seq_detector uut (
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $dumpfile("fsm.vcd");
    $dumpvars(0, fsm_tb);

    rst = 1; #10;
    rst = 0;

    x = 1; #10;
    x = 0; #10;
    x = 1; #10;  // should detect "101"

    x = 1; #10;
    x = 0; #10;
    x = 1; #10;

    $stop;
end

endmodule