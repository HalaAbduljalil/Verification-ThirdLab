`timescale 1ns/1ns
module testbench;
logic clk=0, clr, D, E;
wire Q;
SerialLoadSR(.clk(clk), .clr(clr), .D(D), .E(E), .Q(Q));
reg i;
initial
begin
for(i=0;i<1000;i=i+1)
#5 clk <= ~clk;		
end	

initial
begin
$display("************************************************\n");
E = 1'b1;      // enabling the shift register
clr = 1'b1;    // disabling the clr signal
$display("Clear is Disabled and Shifting is Enabled\n"); 
                      
D = 1;
#10 $display("Clk #1: Q =%b. |D = 1| [1xxx x]", Q);
#10 $display("Clk #2: Q =%b. |D = 1| [11xx x]", Q);
#10 $display("Clk #3: Q =%b. |D = 1| [111x x]", Q);
    
D = 0;
#10 $display("Clk #4: Q =%b. |D = 0| [0111 x]", Q);
#10 $display("Clk #5: Q =%b. |D = 0| [0011 1]", Q);
#10 $display("Clk #6: Q =%b. |D = 0| [0001 1]", Q);
    
#10 $display("Clk #7: Q =%b. |D = 0| [0000 1]", Q);
#10 $display("Clk #8: Q =%b. |D = 0| [0000 0]", Q);
#10 $display("Clk #9: Q =%b. |D = 0| [0000 0]", Q);
    
E = 1'b0;
$display("\n\n\nThe Shifting is Disabled\n");
#10 $display("Clk #10: Q =%b. |D = 0| [0000 0]", Q); 
    
    
D = 1;
#10 $display("Clk #11: Q =%b. |D = 1| [0000 0]", Q);
#10 $display("Clk #12: Q =%b. |D = 1| [0000 0]", Q);
#10 $display("Clk #13: Q =%b. |D = 1| [0000 0]", Q);
#10 $display("Clk #14: Q =%b. |D = 1| [0000 0]", Q);
#10 $display("Clk #15: Q =%b. |D = 1| [0000 0]", Q); 
    
    
E = 1'b1;
$display("\n\n\nThe Shifting is Enabled\n");
    
#10 $display("Clk #16: Q =%b. |D = 1| [1000 0]", Q);
#10 $display("Clk #17: Q =%b. |D = 1| [1100 0]", Q);
#10 $display("Clk #18: Q =%b. |D = 1| [1110 0]", Q);
#10 $display("Clk #19: Q =%b. |D = 1| [1111 0]", Q);
#10 $display("Clk #20: Q =%b. |D = 1| [1111 1]", Q);   
    
      
clr = 1'b0;  
$display("\n\n\nClear is Enabled\n");
    
#10 $display("Clk #21: Q =%b. |D = 1| [0000 0]", Q);
#10 $display("Clk #22: Q =%b. |D = 1| [0000 0]", Q);
    
clr = 1'b1;  
$display("\n\n\nClear is Disabled and D = 1\n");
    
#10 $display("Clk #23: Q =%b. |D = 1| [1000 0]", Q);
#10 $display("Clk #24: Q =%b. |D = 1| [1100 0]", Q);
#10 $display("Clk #25: Q =%b. |D = 1| [1110 0]", Q);
#10 $display("Clk #26: Q =%b. |D = 1| [1111 0]", Q);
#10 $display("Clk #27: Q =%b. |D = 1| [1111 1]", Q);
    
D = 0;
#10 $display("Clk #28: Q =%b. |D = 0| [0111 1]", Q);
#10 $display("Clk #29: Q =%b. |D = 0| [0011 1]", Q);
#10 $display("Clk #30: Q =%b. |D = 0| [0001 1]", Q);
#10 $display("Clk #31: Q =%b. |D = 0| [0000 1]", Q);
#10 $display("Clk #32: Q =%b. |D = 0| [0000 0]", Q);
$display("\n************************************************");
$finish;
end
endmodule;