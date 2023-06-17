`timescale 1ns/1ns
module mux3x1(sel, in1, in2, in3, out);
input in1, in2, in3;
input [1:0] sel;
output logic out;

always@(sel, in1, in2, in3)
begin
if(sel == 2'b00)
out = in1;
else if(sel == 2'b01)
out = in2;
else
out = in3;
end
endmodule
