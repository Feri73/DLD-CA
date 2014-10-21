module Q5_AO(input a,b,c, output w);//worst case delay (18,18)
  wire abB,cB;
  Q1_NAND n1(a,b,abB),n2(c,c,cB),n3(abB,cB,w);
endmodule