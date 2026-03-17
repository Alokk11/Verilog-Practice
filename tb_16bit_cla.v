`timescale 1ns/1ps

module cla4_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

cla4 uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("cla4.vcd");
    $dumpvars(0, cla4_tb);
end

initial begin

A = 4'b0000; B = 4'b0000; Cin = 0; #10;
A = 4'b0011; B = 4'b0101; Cin = 0; #10;
A = 4'b1111; B = 4'b0001; Cin = 0; #10;
A = 4'b1010; B = 4'b0101; Cin = 1; #10;
A = 4'b1100; B = 4'b0011; Cin = 0; #10;

$finish;

end

initial begin
$monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",$time,A,B,Cin,Sum,Cout);
end

endmodule