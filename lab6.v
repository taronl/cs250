module walksignal(
  input clk, x, y,
  output reg [0:0] sx, sy
  );
  bit temp1, temp2; 
  always @(posedge clk)
    begin
      sx <= (x&~y);
      sy <= (~x&y);
      if((x==1)&(y==1))
        begin
          sx <= temp1;
          sy <= temp2;
        end
      temp1 <= sx;
      temp2 <= sy;
    end
endmodule

module walksignal_top(
  input clk, x, y,
  output reg sx, sy
);
  walksignal uut(clk, 1, 1, sx,sy);
endmodule