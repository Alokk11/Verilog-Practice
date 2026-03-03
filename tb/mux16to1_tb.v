`timescale 1ns/1ps

module mux16to1_tb;

reg  [15:0] in;
reg  [3:0]  sel;
wire y;

integer i;

// Instantiate DUT
mux16to1 uut (
    .in(in),
    .sel(sel),
    .y(y)
);

initial begin
    // 🔹 Create VCD file
    $dumpfile("mux16to1.vcd");
    $dumpvars(0, mux16to1_tb);

    $display("Starting Testbench...");

    in = 16'b1010_1100_1111_0001;

    for (i = 0; i < 16; i = i + 1) begin
        sel = i;
        #5;

        if (y !== in[i]) begin
            $display("ERROR at sel=%0d Expected=%b Got=%b", i, in[i], y);
        end
        else begin
            $display("PASS  at sel=%0d Output=%b", i, y);
        end
    end

    $display("Test Completed.");
    $finish;
end

endmodule