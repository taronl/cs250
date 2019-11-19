module lab1(a, b, c, y);
  input a, b, c;
  output y;
  
  assign y = a & b;
  
endmodule 

/*module lab1_top(
  output y
);
  lab1 uut(1,1,y);
endmodule