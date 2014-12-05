module Q4_MultiShifter(input[7:0] a,input[2:0] n,input clk,input load,output[7:0] w);
  wire[7:0] s;
  wire[7:0] q;
  Decoder dec(n,s);
  Q4_8BitRegister register({8{~load}}&w|{8{load}}&a,clk,q);
  CA2_Q11_Shifter shifter(q,s,w);
endmodule