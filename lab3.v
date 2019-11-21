module fib(
  input clk, reset,
  input reg [5:0] n,
  output reg ready,
  output [31:0] value)
  
  reg [31:0] previous, current;
  reg [5:0] counter;
  
  always @(posedge reset) begin