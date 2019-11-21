module fib(
  input wire clk,
  output reg y
);
  
  reg [3:0] y;
  reg [3:0] previous, current, counter;
  
  always @(posedge clk)
    begin
      previous <= 4'd0;
      current <= 4'd1;
      counter <= 4'd1;
    end
  
  always @(posedge clk)
    begin
      counter <= counter +1;
      current <= current + previous;
      previous <= current;
      
    end
      
endmodule

module fib_top(
  input wire clk,
  output reg y
);
  
  module fib uut(clk);
    
  endmodule