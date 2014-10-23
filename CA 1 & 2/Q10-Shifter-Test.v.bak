module Q10_Shifter_Test();
  reg[7:0] d;
  reg[7:0] n;
  wire[7:0] w;
  Q10_Shifter uut(d,n,w);
  initial begin
    d=8'b11111111;
    n=8'b00000000;
    #200 n=8'b10000000;
    #200 n=8'b00010000;
    #200 d=8'b00000000;
    #200 n=8'b00000000;
    #200 n=8'b00100000;
    #200 d=8'b01011000;
    #200 d=8'b11111111;
    #200 n=8'b00000001;
    #200 $stop;
  end
endmodule