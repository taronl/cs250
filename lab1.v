module lab1(
  input a, b, c,
  output y
);
  
  assign y = (a & ~b) | (a & ~c);
  
endmodule 

module lab1_top(
  output y
);
  lab1 uut(1, 1, 1, y);
endmodule