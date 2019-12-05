module walksignal(
  input clk, x, y,
  output reg [0:0] sx, sy
  );
  always @(posedge clk)
    begin
      sx <= (x&~y);
      sy <= (~x&y);
    end
endmodule

module walksignal_top(
  input clk, x, y,
  output reg sx, sy
);
  walksignal uut(clk, 0, 0, sx ,sy);
endmodule