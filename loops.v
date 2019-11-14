module demo(
  input clk,
  output reg [3:0] bits
);
  
  always @(posedge clk)
    begin
      for(int i = 0; i <= 3; i++)
        begin
          bits[i+1] <= bits[i];
        end
    end
endmodule