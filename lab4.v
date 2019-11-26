module lab4(bit_in, par_out);
  input [7:0] bit_in;
  output par_out;
  integer cnt = 0;
  integer x = 0;
  
  always @(bit_in)
    begin
      for(x=0; x<8; x=x+1)
        begin
          if(bit_in[x] == 1)
            cnt = cnt+1;
        end
      if(cnt % 2 == 0)
        par_out = 0;
      else
        par_out = 1;
    end
endmodule

module lab_top();
  reg [7:0] data;
  wire parity;
  lab4 u0 (data, parity);
  initial
    begin
      data = 8'b00000000;
      //data = 8'b10101010;
    end
endmodule