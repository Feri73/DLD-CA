module Q4_NAND_Test();
  reg a,b;
  wire w1,w3;
  Q1_NAND uut1(a,b,w1);
  Q3_NAND uut3(a,b,w3);
  initial begin
    a=0;
    b=1;//01 w=1 delay1:10-0=10 delay3:8-0=7 difference=2
    #20 a=1;//01->11 w=1->0 delay1:28-20=8 delay3:27-20=7 difference=1
    #20 b=0;//11->10 w=0->1 delay1:45-40=5 delay3:48-20=8 difference=3
    #20 b=1;//10->11 w=1->0 delay1:67-60=7 delay3:67-60=7 difference=0
    #20 a=0;//11->01 w=0->1 delay1:90-80=10 delay3:88-80=8 difference=2
    #20 $stop;
  end
endmodule