module Q5_MultiShifter_TestBench();
  reg[7:0] d;
  reg[2:0] n;
  reg clk,load;
  wire[7:0] w;
  Q4_MultiShifter ms(d,n,clk,load,w);
  initial begin
    d=8'b1011100;n=3'd1;load=1'b1;clk=1'b0;
    #500 clk=1;
    #500 clk=0;
    #500 clk=1;load=0;
    #500 clk=0;
    #500 clk=1;
    #500 clk=0;
    #500 clk=1;
    #500 clk=0;
    #500 clk=1;
    #500 clk=0;
    #500 $stop;
  end
endmodule
