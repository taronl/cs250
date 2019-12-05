module srflipflop(
  input wire clk, s, r, q,
  output reg q1
);
  always @(posedge clk)
    begin
      q1 <= ~(~(s|q)|r);
    end
endmodule

module srflipflop_top(
  input clk, s, r, q,
  output q1
);
  srflipflop uut(clk, 1, 1, 0, q1);
endmodule