module Q10_Shifter(input[7:0]D,input[7:0]N, output[7:0]W);//worst case delay (152,136)
  wire[7:0] W1;
  Q1_AO ao1(D[7],N[7],W1[0],W[7]),ao2(D[6],N[6],W1[1],W1[0]),ao3(D[5],N[5],W1[2],W1[1]),ao4(D[4],N[4],W1[3],W1[2]),ao5(D[3],N[3],W1[4],W1[3]),ao6(D[2],N[2],W1[5],W1[4]),ao7(D[1],N[1],W1[6],W1[5]),ao8(D[0],N[0],1'b0,W1[6]);
  wire[6:0] W2;
  Q1_AO a09(D[6],N[7],W2[0],W[6]),ao10(D[5],N[6],W2[1],W2[0]),ao11(D[4],N[5],W2[2],W2[1]),ao12(D[3],N[4],W2[3],W2[2]),ao13(D[2],N[3],W2[4],W2[3]),ao14(D[1],N[2],W2[5],W2[4]),ao15(D[0],N[1],1'b0,W2[5]);
  wire[5:0] W3;
  Q1_AO a016(D[5],N[7],W3[0],W[5]),ao17(D[4],N[6],W3[1],W3[0]),ao18(D[3],N[5],W3[2],W3[1]),ao19(D[2],N[4],W3[3],W3[2]),ao20(D[1],N[3],W3[4],W3[3]),ao21(D[0],N[2],1'b0,W3[4]);
  wire[4:0] W4;
  Q1_AO a022(D[4],N[7],W4[0],W[4]),ao23(D[3],N[6],W4[1],W4[0]),ao24(D[2],N[5],W4[2],W4[1]),ao25(D[1],N[4],W4[3],W4[2]),ao26(D[0],N[3],1'b0,W4[3]);
  wire[3:0] W5;
  Q1_AO a027(D[3],N[7],W5[0],W[3]),ao28(D[2],N[6],W5[1],W5[0]),ao29(D[1],N[5],W5[2],W5[1]),ao30(D[0],N[4],1'b0,W5[2]);
  wire[2:0] W6;
  Q1_AO a031(D[2],N[7],W6[0],W[2]),ao32(D[1],N[6],W6[1],W6[0]),ao33(D[0],N[5],1'b0,W6[1]);
  wire[1:0] W7;
  Q1_AO a034(D[1],N[7],W7[0],W[1]),ao35(D[0],N[6],1'b0,W7[0]);
  Q1_AO ao36(D[0],N[7],1'b0,W[0]);
endmodule