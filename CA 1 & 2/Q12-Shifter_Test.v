module Q12_Shifter_Test();
  reg[7:0] d;
  reg[7:0] n;
  wire[7:0] w1;
  wire[7:0] w2;
  wire[7:0] w3;
  Q10_Shifter uut1(d,n,w1);
  Q11_Shifter uut2(d,n,w2);
  Q13_Shifter uut3(d,n,w3);
  initial begin
    d=8'b11111111;
    n=8'b10000000;
    #200 n=8'b10000000;
    #200 n=8'b00010000;
    #200 d=8'b00000000;
    #200 n=8'b00100000;
    #200 d=8'b01011000;
    #200 n=8'b00000001;
    #200 n=8'b00000010;
    #200 n=8'b00000100;
    #200 n=8'b00001000;
    #200 n=8'b00010000;
    #200 n=8'b00100000;
    #200 n=8'b01000000;
    #200 n=8'b10000000;
    #200 d=8'b11111111;
    #200 $stop;
  end
endmodule