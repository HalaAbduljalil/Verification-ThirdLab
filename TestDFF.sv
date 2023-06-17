`timescale 1ns /1ns

module Testdffp;
logic CLK=0,D,CLR;
wire  Q;
reg i;

clrDFF UUT(CLK,D,Q,CLR);
initial 
begin 
for(i=0;i<100;i=i+1)
#5 CLK= ~ CLK;
end

initial
begin 
CLK=0;
CLR=1;
D=0;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
D=1;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
CLR=0;
D=0;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
D=1;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);

CLR=1;
D=0;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
D=1;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);

CLR=0;
D=0;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
D=1;
#10 $display("CLK=%d,CLR=%d,D=%d,Q=%d",CLK,CLR,D,Q);
end 
endmodule;
