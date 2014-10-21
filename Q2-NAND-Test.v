module Q2_NAND_Test();
  reg a,b;
  wire w;
  Q1_NAND uut(a,b,w);
  initial begin
    a=0;
    b=1;//01 w=1 delay:10-0=10
    #20 a=1;//01->11 w=1->0 delay:28-20=8
    #20 b=0;//11->10 w=0->1 delay:45-40=5
    #20 b=1;//10->11 w=1->0 delay:67-60=7
    #20 a=0;//11->01 w=0->1 delay:90-80=10
    #20 $stop;
  end
endmodule