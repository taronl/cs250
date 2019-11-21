module fib(
  input clk,
  output reg [3:0] y
);
  
  reg [3:0] prev, cnt;
  
  initial
    begin
      //cnt = 4'd0;
      prev = 4'd0;
      y = 4'd1;
    end
  
  always @(posedge clk)
    begin
      //cnt <= cnt + 1;    
      y <= y + prev;
      prev <= y;
      
    end
      
endmodule

module cnt(
  
);

/*module fib_top(
  input wire clk,
  output reg [3:0] y
);
  
  fib uut(clk, y);
    
endmodule*/