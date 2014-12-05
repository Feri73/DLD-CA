module Q1_SRLatch(input S,R,E,output Q);
  wire w1,w2,w3;
  nand #(8,6)(w1,E,S),(w2,E,R),(Q,w1,w3),(w3,w2,Q);
endmodule