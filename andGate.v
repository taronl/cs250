module and_gate(a, b, y);
  input a, b; // input ports
  output y;   // output ports
  
  //and gate1(y, a, b);
  assign y = a & b; // (a AND b)
  
endmodule // no semicolon

module and_gate_top(
  output y
);
  and_gate uut(1,1,y);
endmodule