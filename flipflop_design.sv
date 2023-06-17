`timescale 1ns/1ns
module flipflops(clk, D,Q1, Q2,Q3,clr_ff2,clr_ff3,pre_ff3 );
input clk, D,clr_ff2,pre_ff3,clr_ff3 ;
output Q1,Q2,Q3;
logic Q1_reg,Q2_reg,Q3_reg;
assign Q1 = Q1_reg;
assign Q2 = Q2_reg;
assign Q3 = Q3_reg;
always@(posedge clk) Q1_reg <= D; 
always@(negedge clk, posedge clr_ff2)
begin
if(clr_ff2 == 1'b1)
Q2_reg <= 1'b0;
else
Q2_reg <= D;
end
always@(posedge clk, negedge pre_ff3, negedge clr_ff3)
begin
if(clr_ff3 == 1'b0)
Q3_reg <= 1'b0;
else if (pre_ff3 == 1'b0)
Q3_reg <= 1'b1;
else
Q3_reg <= D;
end	
endmodule

