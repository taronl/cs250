module srflipflop(
  input wire clk, s, r,
  output reg q, q1
);
  initial
    begin
      q = 0;
    end
  always @(posedge clk)
    begin
      q1 <= ~(~(s | q) | r);
    end
endmodule

module srflipflop_top(
  input clk, s, r,
  output q, q1
);
  srflipflop uut(clk, 1, 0, q, q1);
endmodule