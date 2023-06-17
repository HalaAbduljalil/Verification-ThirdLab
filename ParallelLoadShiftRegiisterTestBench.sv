`timescale 1ns/1ns
module testbench;
logic clk=0, clr, D=1'b1;
logic [1:0] sel;
logic [4:0] vec;
wire Q;
ParallelLoadSR(.clk(clk), .clr(clr), .D(D), .sel(sel), .vec(vec) ,.Q(Q));
reg i;
initial
begin
for(i=0;i<1000;i=i+1)
#5 clk <= ~clk;		
end	

initial
begin
$display("************************************************\n");
sel = 2'b10;
clr = 1'b1;
vec = 5'b11111;
D = 1;
#10 $display("Clk #1: Q= %b. |D = 0| [0xxx x]", Q);
#10 $display("Clk #2: Q= %b. |D = 0| [00xx x]", Q);
#10 $display("Clk #3: Q= %b. |D = 0| [000x x]", Q);
      
D = 1;
#10 $display("Clk #4: Q= %b. |D = 1| [1000 x]", Q);
#10 $display("Clk #5: Q= %b. |D = 1| [1100 0]", Q);
#10 $display("Clk #6: Q= %b. |D = 1| [1110 0]", Q);
    
#10 $display("Clk #7: Q= %b. |D = 1| [1111 0]", Q);
#10 $display("Clk #8: Q= %b. |D = 1| [1111 1]", Q);
#10 $display("Clk #9: Q= %b. |D = 1| [1111 1]", Q);
     
clr = 1'b0;
#10 $display("\n\n\nClearing Register\n");
      
clr = 1'b1;
#10 $display("Clk #10: Q= %b. |D = 1| [1000 0]", Q);
#10 $display("Clk #11: Q= %b. |D = 1| [1100 0]", Q);
    
#10 $display("Clk #12: Q= %b. |D = 1| [1110 0]", Q);
#10 $display("Clk #13: Q= %b. |D = 1| [1111 0]", Q);
#10 $display("Clk #14: Q= %b. |D = 1| [1111 1]", Q);
      
      
$display("\n\n\nLoading shift register with 5'b01010\n");
      
vec = 5'b01010;
sel = 2'b01;
      
#10 $display("Clk #15: Q= %b. |D = 1| [0101 0]", Q);
sel = 2'b10;
      
#10 $display("Clk #16: Q= %b. |D = 1| [1010 1]", Q);
#10 $display("Clk #17: Q= %b. |D = 1| [1101 0]", Q);
#10 $display("Clk #18: Q= %b. |D = 1| [1110 1]", Q);
#10 $display("Clk #19: Q= %b. |D = 1| [1111 0]", Q);

#10 $display("Clk #20: Q= %b. |D = 1| [1111 1]", Q);
#10 $display("Clk #21: Q= %b. |D = 1| [1111 1]", Q);
D = 0;
sel = 2'b00;
$display("\n\n\nDisabling shifting\n");
#10 $display("Clk #22: Q= %b. |D = 0| [1111 1]", Q);
#10 $display("Clk #23: Q= %b. |D = 0| [1111 1]", Q);
#10 $display("Clk #24: Q= %b. |D = 0| [1111 1]", Q);
#10 $display("Clk #25: Q= %b. |D = 0| [1111 1]", Q);
#10 $display("Clk #26: Q= %b. |D = 0| [1111 1]", Q);
      
$display("\n\n\nLoading shift register with 5'b01110\n");
vec = 5'b01110;
sel = 2'b01;
#10 $display("Clk #27: Q= %b. |D = 0| [0111 0]", Q);
sel = 2'b10;
#10 $display("Clk #28: Q= %b. |D = 0| [0011 1]", Q);
#10 $display("Clk #29: Q= %b. |D = 0| [0001 1]", Q);
#10 $display("Clk #30: Q= %b. |D = 0| [0000 1]", Q);
#10 $display("Clk #31: Q= %b. |D = 0| [0000 0]", Q);
D = 1;
#10 $display("Clk #31: Q= %b. |D = 1| [1000 0]", Q);
#10 $display("Clk #32: Q= %b. |D = 1| [1100 0]", Q);
#10 $display("Clk #33: Q= %b. |D = 1| [1110 0]", Q);
#10 $display("Clk #34: Q= %b. |D = 1| [1111 0]", Q);
#10 $display("Clk #35: Q= %b. |D = 1| [1111 1]", Q);
$display("\n************************************************");
$finish;
end
endmodule;