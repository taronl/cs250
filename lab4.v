module paritychecker(
  input [7:0] bit_in,
  output parity
);
  assign
    parity = ~^bit_in;
endmodule

module paritychecker_top(
  output parity
);
  paritychecker uut(8'b10001000, parity);
endmodule