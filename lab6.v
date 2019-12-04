module walksignal(
  input clk, x, y,
  output reg [0:0] sx, sy
  );
  always @(posedge clk)
    begin
      if((x==0)&(y==0))
        begin
          sx <= 0;
          sy <= 0;
        end
      if((x==1)&(y==0))
        begin
          sx <= x;
          sy <= y;
        end
      if((x==0)&(y==1))
        begin
          sx <= x;
          sy <= y;
        end
      if((x==1)&(y==1))
        begin
          sx <= x;
          sy <= x;
        end
    end
endmodule

module walksignal_top(
  input clk, x, y,
  output reg sx, sy
);
  walksignal uut(clk, 0, 0, sx,sy);
endmodule