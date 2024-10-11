module stimulus;
reg clk;
reg reset;
wire [1:0] q;
counter c0(q, clk, reset);
initial
clk = 1'b0;
always
#5 clk = ~clk;
initial
begin
reset = 1'b1;
#50 reset = 1'b0;
#50 reset = 1'b1;
#5 reset = 1'b0;
#50 $finish;
end
initial
$monitor($time, " output q = %d clock= %d reset = %d ", q, clk, reset);
endmodule