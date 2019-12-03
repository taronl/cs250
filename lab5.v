module srflipflop(clk, st, rst, q, q1);
  input wire clk, st, rst;
  output reg [0:0] q, q1;
  
  initial
    begin
      q = 1'b0;
      q1 = 1'b1;
    end
  
  always @(posedge clk)
    begin
      case({st,rst})
        {1'b0, 1'b0}: begin q<=q; q1<=q1; end
        {1'b0, 1'b1}: begin q<=1'b0; q1<=1'b1; end
        {1'b1, 1'b0}: begin q<=1'b1; q1<=1'b0; end
        {1'b1, 1'b1}: begin q<=1'bx; q1<=1'bx; end
      endcase
    end
endmodule