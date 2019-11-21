module fib(
  input wire clk,
  output reg y);
  
  reg [3:0] y;
  reg [3:0] previous, current, counter;
  
  always @(posedge clk)
    begin
      previous <= 16'd0;
      current <= 16'd1;
      counter <= 16'd1;
    end
  
  always @(posedge clk)
    begin
      counter <= counter +1;
      current <= current + previous;
      previous <= current;
      
    end
  
   assign value = current;
      
endmodule