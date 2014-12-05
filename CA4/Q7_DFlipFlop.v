module Q7_DFlipFlop(input D,E,R,output Q);
  Q6_DFlipFlop dff(D&~R,E,Q);
endmodule