module asynchronous_reset(  
  input clk, reset,
  output reg [4:0] counter
);
  
  always @(posedge clk or posedge reset)
    begin
      if(reset) counter <= 0;
      else
        counter <= counter + 1;
    end
endmodule




/*module asynchronous_reset_test_top(
  input clk,
  output reg [2:0] counter
);
  
  reg reset = 0;
  
  always @(posedge clk)
    begin
      asynchronous_reset uut(clk, reset, counter);
      reset <= `reset;  
    end
endmodule*/