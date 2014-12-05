module Q3_DLatch_TestBench();
  reg D,E;
  wire Q;
  Q2_DLatch latch(D,E,Q);
  initial begin
    D=0;E=0;
    #200 D=1;E=1;
    #200 E=0;
    #200 D=0;
    #200 E=1;
    #200 $stop;
  end
endmodule