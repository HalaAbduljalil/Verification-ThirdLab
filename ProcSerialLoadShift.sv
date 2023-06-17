`timescale 1ns/1ns
module ProceduralSerialLoad(clk, clr, D, E, Q);
input clk, clr, D, E;
output Q;
logic [0:4] Qreg;
assign Q = Qreg[4];
always@(posedge clk)
begin
Qreg[0] <= (clr == 1'b0) ? (1'b0) : ((E == 1'b1) ? D : Qreg[0]);
Qreg[1] <= (clr == 1'b0) ? (1'b0) : ((E == 1'b1) ? Qreg[0]: Qreg[1]);
Qreg[2] <= (clr == 1'b0) ? (1'b0) : ((E == 1'b1) ? Qreg[1]: Qreg[2]);
Qreg[3] <= (clr == 1'b0) ? (1'b0) : ((E == 1'b1) ? Qreg[2]: Qreg[3]);
Qreg[4] <= (clr == 1'b0) ? (1'b0) : ((E == 1'b1) ? Qreg[3]: Qreg[4]);
       
     end
endmodule
