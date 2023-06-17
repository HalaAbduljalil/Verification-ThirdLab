`timescale 1ns/1ns
module latches(D,ena1,ena2,ena3,Q1, Q2,Q3,clr2,clr3,pre3 );
input D,ena1,ena2,ena3,clr2,clr3,pre3;
output Q1,Q2,Q3;
logic Q1_reg,Q2_reg,Q3_reg;
assign Q1 = Q1_reg;
assign Q2 = Q2_reg;
assign Q3 = Q3_reg;
always@(D,ena1) if (ena1==1'b1) Q1_reg = D; 
always@(D,clr2,ena2)
begin
if(clr2 == 1'b1)
Q2_reg = 1'b0;
else if(ena2 == 1'b0)
Q2_reg = D;
end
always@(D, clr3, pre3, ena3)
begin
if(clr3 == 1'b0)
Q3_reg = 1'b0;
else if (pre3 == 1'b0)
Q3_reg = 1'b1;
else if(ena3 == 1'b1)
Q3_reg = D;
end	
endmodule

