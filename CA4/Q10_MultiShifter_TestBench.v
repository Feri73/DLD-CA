module Q10_MultiShifter_TestBench();
  reg[7:0] d;
  reg[2:0] n;
  reg r;
  reg clk,load;
  wire[7:0] w;
  Q9_MultiShifter ms(d,n,clk,r,load,w);
  initial begin
    d=8'b1011100;n=3'd1;load=1'b1;clk=1'b0;r=0;
    #100 clk=1;
    #100 clk=0;
    #100 clk=1;load=0;
    #100 clk=0;
    #100 clk=1;
    #100 clk=0;
    #100 clk=1;
    #100 clk=0;
    #100 clk=1;r=1;
    #100 clk=0;
    #100 $stop;
  end
endmodule