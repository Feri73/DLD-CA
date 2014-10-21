module Q7_Shifter_1(input A,B,C,D,i,j,k,l, output W,X,Y,Z);
  wire WL2,WL3,WL4;
  Q1_AO ao1(A,i,WL2,W),ao2(B,j,WL3,WL2),ao3(C,k,WL4,WL3),ao4(D,l,1'b0,WL4);
  wire XL2,XL3;
  Q1_AO ao5(B,i,XL2,X),ao6(C,j,XL3,XL2),ao7(D,k,1'b0,XL3);
  wire YL2;
  Q1_AO ao8(C,i,YL2,Y),ao9(D,j,1'b0,YL2);
  Q1_AO ao10(D,i,1'b0,Z);
endmodule