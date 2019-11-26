module lab4(
  input [3:0] in,
  output out
);
  assign out = ^(in[7:0]);
endmodule

module lab4_top(
  input [3:0] in,
  output out
);

  lab4 uut(1,2,3,4,5,6,7);
  
endmodule