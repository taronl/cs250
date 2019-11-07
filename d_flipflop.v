// time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// Design of positive edge D flip flop
// Author:
// Updated:

// input/output of module
module RisingEdge_DFlipFlop(
  input wire clk, d,	// input
  output reg q		// output
);
  
  reg [0:0] i;		// 2 bit number
  
  // body of our design
  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= d + i[0];	//aync - make an assignment
      i <= i + 1;
    end
  
endmodule