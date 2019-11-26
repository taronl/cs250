module lab4(
  input [7:0] in,
  output out
);
  
  assign out = ^(in[7:0]);
endmodule

module top_lab4(
  reg [7:0] in,
  wire out
  
  lab4 uut(
    .in(in),
    .out(out)
  );
  
  initial begin
    in = 0;
  end
 endmodule
