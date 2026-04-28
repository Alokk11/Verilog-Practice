module fsm_seq_detector (
    input clk,
    input rst,
    input x,
    output reg y
);

reg [1:0] state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= S0;
        y <= 0;
    end else begin
        case(state)
            S0: begin
                if (x) state <= S1;
                else state <= S0;
                y <= 0;
            end

            S1: begin
                if (x) state <= S1;
                else state <= S2;
                y <= 0;
            end

            S2: begin
                if (x) begin
                    state <= S1;
                    y <= 1;
                end else begin
                    state <= S0;
                    y <= 0;
                end
            end
        endcase
    end
end

endmodule