module name(
  input clk,
  output reg [1:0] d, // holding a 2 bit number
  output reg d0, d1
);
  
  // only on start
  initial
    begin
      d = 2'b1_1;
    end
  
  always @ (posedge clk)
    begin
      d[1:0] <= ~d[1:0];
    end
  
  // alwaays evaluated
  assign d0 = d[0];
  assign d1 = d[1];
  
endmodule