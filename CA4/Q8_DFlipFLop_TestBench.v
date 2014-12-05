module Q8_DFlipFlop_TestBench();
  reg d,r,clk;
  wire w;
  Q7_DFlipFlop dff(d,clk,r,w);
  initial begin
    clk=0;r=1;d=1;
    #100 clk=1;
    #100 clk=0;
    #100 clk=1;
    #100 clk=0;
    #100 clk=1;r=0;
    #100 clk=0;
    #100 clk=1;
    #100 clk=0;d=0;
    #100 clk=1;
    #100 clk=0;
    #100 $stop;
  end
endmodule