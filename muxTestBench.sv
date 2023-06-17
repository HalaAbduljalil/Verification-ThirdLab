`timescale 1ns/1ns

module TestMux;
logic S,IN1,IN2;
wire OUT;
reg i;

mux2x1 M(S,IN1,IN2,OUT);

initial 
begin
S=0;
IN1=1;
IN2=0;
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
////////
S=0;
IN1=0;
IN2=1;
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
///////////
S=1;
IN1=1;
IN2=0;
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
////////
S=1;
IN1=0;
IN2=1;
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);
#10 $display("S=%d,IN1=%d,IN2=%d,OUT=%d",S,IN1,IN2,OUT);

end
endmodule