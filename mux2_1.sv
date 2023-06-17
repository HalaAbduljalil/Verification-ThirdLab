`timescale 1ns/1ns
module mux2x1(sel, in1, in2, out);
input sel, in1, in2;
output logic out;
always@(sel, in1, in2)
begin
if(sel == 1'b0)
out = in1;
else
out = in2;
end
endmodule

