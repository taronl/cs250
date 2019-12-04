module walksignal(
  input clk, x, y,
  output reg [0:0] sx, sy
  );
  always @(posedge clk)
    begin
      sx <= (x&~y);
      sy <= (~x&y);
      if((x==1)&(y==1))
        begin
          sx <= x;
          sy <= y;
        end
    end
endmodule

module walksignal_top(
  input clk, x, y,
  output reg sx, sy
);
  walksignal uut(clk, 0, 1, sx ,sy);
endmodule