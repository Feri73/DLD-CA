module Q13_Shifter(input [7:0] D,input [7:0] N, output [7:0] W);
  supply0 zero;
  nmos (W[7],D[7],N[0]),(W[7],D[6],N[1]),(W[7],D[5],N[2]),(W[7],D[4],N[3]),(W[7],D[3],N[4]),(W[7],D[2],N[5]),(W[7],D[1],N[6]),(W[7],D[0],N[7]);
  nmos (W[6],D[6],N[0]),(W[6],D[5],N[1]),(W[6],D[4],N[2]),(W[6],D[3],N[3]),(W[6],D[2],N[4]),(W[6],D[1],N[5]),(W[6],D[0],N[6]),(W[6],zero,N[7]);
  nmos (W[5],D[5],N[0]),(W[5],D[4],N[1]),(W[5],D[3],N[2]),(W[5],D[2],N[3]),(W[5],D[1],N[4]),(W[5],D[0],N[5]),(W[5],zero,N[6]),(W[5],zero,N[7]);
  nmos (W[4],D[4],N[0]),(W[4],D[3],N[1]),(W[4],D[2],N[2]),(W[4],D[1],N[3]),(W[4],D[0],N[4]),(W[4],zero,N[5]),(W[4],zero,N[6]),(W[4],zero,N[7]);
  nmos (W[3],D[3],N[0]),(W[3],D[2],N[1]),(W[3],D[1],N[2]),(W[3],D[0],N[3]),(W[3],zero,N[4]),(W[3],zero,N[5]),(W[3],zero,N[6]),(W[3],zero,N[7]);
  nmos (W[2],D[2],N[0]),(W[2],D[1],N[1]),(W[2],D[0],N[2]),(W[2],zero,N[3]),(W[2],zero,N[4]),(W[2],zero,N[5]),(W[2],zero,N[6]),(W[2],zero,N[7]);
  nmos (W[1],D[1],N[0]),(W[1],D[0],N[1]),(W[1],zero,N[2]),(W[1],zero,N[3]),(W[1],zero,N[4]),(W[1],zero,N[5]),(W[1],zero,N[6]),(W[1],zero,N[7]);
  nmos (W[0],D[0],N[0]),(W[0],zero,N[1]),(W[0],zero,N[2]),(W[0],zero,N[3]),(W[0],zero,N[4]),(W[0],zero,N[5]),(W[0],zero,N[6]),(W[0],zero,N[7]);
endmodule