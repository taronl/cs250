module lab4(
  input [7:0] in,
  output out
);
  
  assign out = ^(in[7:0]);
endmodule

module lab4_top(
  reg [7:0] in,
  wire out
);
  
  lab4 uut(
    in(in),
    out(out);
  
  initial begin
    in = 
    
    
    /*in = 0;
    #100;
    in = 17;
    #100;
    in = 36;
    #100;
    in = 44;
    #100;
    in = 57;
    #100;
    in = 66;
    #100;
    in = 75;*/
  end
 endmodule
