module Q6_DFlipFlop(input D,E,input Q);
  wire w,eb;
  not (eb,E);
  Q2_DLatch d1(D,E,w),d2(w,eb,Q);
endmodule