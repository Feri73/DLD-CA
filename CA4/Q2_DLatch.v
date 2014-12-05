module Q2_DLatch(input D,E,output Q);
  wire db;
  not (db,D);
  Q1_SRLatch latch(D,db,E,Q);
endmodule