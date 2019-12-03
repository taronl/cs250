module dflipflop(
  input wire clk, d,
  output reg q
);
  reg [0:0] i;
  always @(posedge clk)
    begin
      q <= d;
    end
endmodule

module dflipflop_top(
  input clk, d,
  output q
);
  dflipflop uut(clk, 0, q);
endmodule