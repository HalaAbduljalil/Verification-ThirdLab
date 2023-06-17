`timescale 1ns/1ns
module SerialLoadSR(clk, clr, D, E, Q);
	
	input clk, clr, D, E;
	output Q;

	logic Q1, Q2, Q3, Q4, Q5;
	logic m1out, m2out, m3out, m4out, m5out;
 
   	assign Q = Q5;

	mux2x1 mux1 (.sel(E), .in1(Q1), .in2(D), .out(m1out));	
  	mux2x1 mux2 (.sel(E), .in1(Q2), .in2(Q1), .out(m2out));	
  	mux2x1 mux3 (.sel(E), .in1(Q3), .in2(Q2), .out(m3out));	
  	mux2x1 mux4 (.sel(E), .in1(Q4), .in2(Q3), .out(m4out));	
  	mux2x1 mux5 (.sel(E), .in1(Q5), .in2(Q4), .out(m5out));	
  
  	srff ff1 (.clk(clk), .D(m1out), .clr(clr), .Q(Q1));
  	srff ff2 (.clk(clk), .D(m2out), .clr(clr), .Q(Q2));
  	srff ff3 (.clk(clk), .D(m3out), .clr(clr), .Q(Q3));
  	srff ff4 (.clk(clk), .D(m4out), .clr(clr), .Q(Q4));
  	srff ff5 (.clk(clk), .D(m5out), .clr(clr), .Q(Q5));
 
endmodule