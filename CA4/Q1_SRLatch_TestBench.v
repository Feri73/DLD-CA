module Q1_SRLatch_TestBench();
  reg S,R,E;
  wire Q;
  Q1_SRLatch latch(S,R,E,Q);
  initial begin
    S=0;R=0;E=0;
    #200 S=1;E=1;
    #200 S=0;R=1;
    #200 S=1;
    #200 $stop;
  end
endmodule