`timescale 1ns/1ns
module testbench;
logic clk=0, D,clr_ff2,clr_ff3,pre_ff3;
wire Q1,Q2,Q3;
reg i;

flipflops UUT (.clk(clk), .D(D),.Q1(Q1),.Q3(Q3),.Q3(Q3),.clr_ff2(clr_ff2),.clr_ff3(clr_ff3),.pre_ff3(pre_ff3));

initial
begin
for(i=0; i<100;i=i+1)
begin	
#5 clk <= ~clk;
end      
end 
 

initial
begin
$display("\n-------------- first flipflop -----------------\n");
#10 D = 0;	
#10 $display("D=0 ,  Q= %b", Q1);
#10 D = 1;
#10 $display("D=1,  Q= %b", Q1);
#10 D = 0;
#10 $display("D=0,  Q= %b", Q1);
    		
$display("---------------   finish first flipflop-----------------\n");
        
$display("\n-------------- Second flipflop -----------------\n");
#10 D = 0;	
#10 $display("D=0 ,  Q2= %b", Q2);
#10 D = 1;
#10 $display("D=1,  Q2= %b", Q2);
$display("clr_ff2 =1"); 
#10 clr_ff2 = 1;
#10 $display("Q2= %b", Q2);    	
#10 $display("Q2= %b", Q2);
#10 $display("Q2= %b\n", Q2);
#10 D = 0;
#10 $display("D=0,  Q2= %b", Q2);
#10 D = 1;
#10 $display("D=1,  Q2= %b", Q2);  
$display("clr_ff2 =0"); 
#10 clr_ff2 = 0;
#10 $display("Q2= %b", Q2);
$display("---------------   finish Second flipflop-----------------\n");

$display("\n-------------- third flipflop -----------------\n");
#10 D = 0;	
#10 $display("D=0 ,  Q3= %b", Q3);
#10 D = 1;
#10 $display("D=1,  Q3= %b", Q3);
$display("clr_ff3 =0"); 
#10 clr_ff3 = 0;
#10 $display("Q3= %b", Q3);    	
#10 $display("Q3= %b", Q3);
#10 $display("Q3= %b\n", Q3);
#10 D = 0;
#10 $display("D=0,  Q3= %b", Q3);
#10 D = 1;
#10 $display("D=1,  Q3= %b", Q3);
  
$display("clr_ff3 =1"); 
#10 clr_ff3 = 1;
#10 $display("Q3= %b", Q3);
#10 D = 0;	
#10 $display("D=0 ,  Q3= %b", Q3);

$display("pre_ff3 = 0"); 
#10 pre_ff3 = 0;
#10 $display("The value of Q3 is %b", Q3);
#10 $display("The value of Q3 is %b", Q3);
#10 $display("The value of Q3 is %b\n", Q3);
#10 pre_ff3 = 1;   
#10 D = 0;
#10 $display("D=0 ,  Q3= %b", Q3);
$display("Disabling preset & clr signals "); 
#10 pre_ff3 = 1;
#10 D = 0;	
#10 $display("D=0 ,  Q3= %b", Q3);

#10 D = 1;	
#10 $display("D=1 ,  Q3= %b", Q3);
          		
        		


$display("---------------   finish third flipflop-----------------\n");
              
$finish;
end
   

endmodule

