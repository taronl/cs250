`timescale 1ns/100ps

module RisingEdge_DFlipFlop(
  input wire clk, d,
  output reg q
);
  
  reg [0:0] i;
  
  always @(posedge clk)
    begin
      q <= d + i[0];
      i <= i + 1;
    end
  
endmodule