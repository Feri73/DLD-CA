module Decoder(input[2:0] s,output[7:0] w);
  assign w = 1<<s;
endmodule