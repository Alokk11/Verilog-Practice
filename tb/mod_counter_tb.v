module mod_counter_tb;

    reg clk;
    reg rst;
    wire tick;

    // Instantiate DUT
    mod_counter uut (
        .clk(clk),
        .rst(rst),
        .tick(tick)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus + dump
    initial begin
        $dumpfile("mod_counter.vcd");
        $dumpvars(0, mod_counter_tb);

        rst = 1;
        #10;
        rst = 0;

        #200;

        $stop;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | count=%d | tick=%b", $time, uut.count, tick);
    end

endmodule