`timescale 1ns/1ns
module ParallelLoadSR(clk, clr, D, sel, vec, Q);
input clk, clr, D;
input [1:0] sel;
input [4:0] vec;
output Q;

logic Q1, Q2, Q3, Q4, Q5;
logic m1out, m2out, m3out, m4out, m5out;
assign Q = Q5;

mux3x1 mux1 (.sel(sel), .in1(Q1), .in2(vec[4]), .in3(D), .out(m1out));	
mux3x1 mux2 (.sel(sel), .in1(Q2), .in2(vec[3]), .in3(Q1), .out(m2out));	
mux3x1 mux3 (.sel(sel), .in1(Q3), .in2(vec[2]), .in3(Q2), .out(m3out));	
mux3x1 mux4 (.sel(sel), .in1(Q4), .in2(vec[1]), .in3(Q3), .out(m4out));	
mux3x1 mux5 (.sel(sel), .in1(Q5), .in2(vec[0]), .in3(Q4), .out(m5out));	
  
srff ff1 (.clk(clk), .D(m1out), .clr(clr), .Q(Q1));
srff ff2 (.clk(clk), .D(m2out), .clr(clr), .Q(Q2));
srff ff3 (.clk(clk), .D(m3out), .clr(clr), .Q(Q3));
srff ff4 (.clk(clk), .D(m4out), .clr(clr), .Q(Q4));
srff ff5 (.clk(clk), .D(m5out), .clr(clr), .Q(Q5));
 
endmodule
