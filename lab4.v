module lab4(
  input [7:0] bit_in,
  output parity
);
  
  assign
    parity = ~^bit_in;
endmodule

module lab4 uut(
  reg [7:0] bit_in;
  wire parity
);
  