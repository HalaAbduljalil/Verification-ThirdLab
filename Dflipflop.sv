`timescale 1ns/1ns
module srff(clk, D, clr, Q);
input clk, D, clr;
output Q;
logic Q_reg;
assign Q = Q_reg;
always@(negedge clk, negedge clr)
begin
if(clr == 1'b0)
Q_reg <= 1'b0;
else
Q_reg <= D;
end
endmodule
