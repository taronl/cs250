module fib(
  input clk,
  output reg [3:0] y
);
  
  reg [3:0] prev;
  
  initial
    begin
      prev = 4'd0;
      y = 4'd1;
    end
  
  always @(posedge clk)
    begin
      if(y >= 13)
        begin
          prev <= 4'd0;
          y <= 4'd1;
        end
      else
        begin  
      	  y <= y + prev;
      	  prev <= y;
        end
      
    end
      
endmodule