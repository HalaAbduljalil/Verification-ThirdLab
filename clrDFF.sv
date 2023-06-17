`timescale 1ns/1ns
module clrDFF(clk, D,Q1,clr);
input clk, D,clr;
output Q1;
logic Q1_reg;
assign Q1 = Q1_reg;
always@(posedge clk)
if (clr == 1'b0)
 Q1_reg <= 0; 
else 
Q1_reg <= D; 
endmodule