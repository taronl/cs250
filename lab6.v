module walksignal(
  input clk, x, y,
  output reg [1:0] sx, sy
  );
  initial
    begin
      x = 0;
      y = 0;
    end
  always @(posedge clk)
    begin
      sx <= (x|y);
      sy <= (x|y);
      if((x==1)&(y==1))
        begin
          sx <= x;
          sy <= y;
        end
    end
endmodule

module walksignal_top();
  wire x, y;
  reg sx, sy;
  walksignal uut(clk, x, y, sx,sy);
endmodule