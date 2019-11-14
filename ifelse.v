parameter off = 1'b0;
parameter on  = 1'b1;

module demo(
  input control, i, 
  output y
);
  
  always @(control or i)
    begin
      if(control == on)
        y = 1;
      else y = 0;
    end
endmodule

module ts_top(
  output y
);
  demo uut(off, on, y);
endmodule