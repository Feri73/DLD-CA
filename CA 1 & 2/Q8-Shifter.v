module Q8_Shifter(input A,B,C,D,i,j,k,l, output W,X,Y,Z);
  assign #(76,68)  W=A&i|B&j|C&k|D&l;
  assign #(57,51)  X=B&i|C&j|D&k;
  assign #(38,26)  Y=C&i|D&j;
  assign #(19,17)  Z=D&i;
endmodule