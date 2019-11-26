module srflipflop();
  input wire clk, set, reset;
  output reg [4:0] q, qbar;

  
  reg [0:0] i;
  
  always @(posedge clk)
    begin
      xor(q
    end
  
endmodule

/*
module srflipflop_top(
  input clk,
  output q
);
  
  srflipflop uut(clk, 0, q);
  
endmodule
*/