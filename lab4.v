module lab4(
  input [7:0] bit_in,
  output parity
);
  assign
    parity = ~^bit_in;
endmodule

module lab4_top(
  output parity
);
  lab4 uut(8'b10001000, parity);
endmodule