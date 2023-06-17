`timescale 1ns/1ns

module testbench;
logic D, ena1, ena2, ena3, clr2, clr3, pre3;
wire Q1, Q2, Q3;
reg i;
latches UUT (.D(D), .ena1(ena1), .ena2(ena2), .ena3(ena3),.Q1(Q1), .Q2(Q2), .Q3(Q3),.clr2(clr2), .clr3(clr3), .pre3(pre3));
 
initial
begin
$display("****************************************************\n");
$display("\n---------------- TESTING LATCH #1 ------------------\n");
ena1 = 1;
#10 D = 0;	
#10 $display("ena1=1,D=0,Q1= %b\n", Q1);
#10 D = 1;
#10 $display("D=1, Q1= %b\n", Q1);
#10 D = 0;
#10 $display("D=0, Q= %b\n", Q1);
ena1 = 0;
#10 $display("ena1 = 0,Q =%b\n", Q1);
#10 D = 1;
#10 $display("D=1, Q= %b\n", Q1);
ena1 = 1;
#10 $display("ena1 = 1,Q= %b\n", Q1);
$display("---------------   ENG OF TESTING   -----------------\n");
        
        
$display("\n---------------- TESTING LATCH #2 ------------------\n");
ena2 = 0;
#10 D = 0;	
#10 $display("ena2=0,D=0,Q2=%b\n", Q2);
#10 D = 1;
#10 $display("D = 1,Q2= %b\n", Q2);
#10 D = 0;
#10 $display("D = 0,Q2= %b\n", Q2);
ena2 = 1;
#10 $display("ena2 = 1,Q2 = %b\n", Q2);
#10 D = 1;
#10 $display("D = 1,Q2= %b\n", Q2);
ena2 = 0;
#10 $display("ena2 = 0,Q2 = %b\n", Q2);
clr2 = 1;
#10 $display("clr2 = 1,Q2 = %b\n", Q2);
clr2 = 0;
#10 $display("clr2 = 0,Q2 = %b\n", Q2);
          
$display("---------------   ENG OF TESTING   -----------------\n");
        

        
$display("\n---------------- TESTING LATCH #3 ------------------\n");
ena3 = 1;
#10 D = 0;	
#10 $display("ena3=0,D=0,Q3=%b\n", Q3);
#10 D = 1;
#10 $display("D = 1,Q3= %b\n", Q3);
#10 D = 0;
#10 $display("D = 0,Q3= %b\n", Q3);
ena3 = 0;
#10 $display("ena3 = 0,Q3 = %b\n", Q3);
#10 D = 1;
#10 $display("D = 1,Q3= %b\n", Q3);
ena3 = 1;
#10 $display("ena3 = 1,Q3 = %b\n", Q3);
clr3 = 0;
#10 $display("clr3 = 0,Q3 = %b\n", Q3);
clr3 = 1;
#10 $display("clr3 = 1,Q3 = %b\n", Q3);
#10 D = 0;
#10 $display("D= 0,Q3 = %b\n", Q3);
pre3 = 0;
#10 $display("pre3= 0,Q3 = %b\n", Q3);
pre3 = 1;
#10 $display("pre3 = 1,Q3 = %b\n", Q3);
#10 D = 1;
#10 $display("D= 1,Q3 = %b\n", Q3);
  
clr3 = 0;
pre3 = 0;
#10 $display("clr3 = 0,pre3 = 0,Q3 = %b\n", Q3);
clr3 = 1;
pre3 = 1;
#10 $display("clr3 = 1,pre3 = 1,Q3 = %b\n", Q3);
          
$display("---------------   ENG OF TESTING   -----------------\n");        
$finish;
end
endmodule
