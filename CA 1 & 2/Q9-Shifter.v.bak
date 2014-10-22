module Q9_Shifter(input [3:0] D,input [3:0] N, output [3:0] W);
  wire [3:0] W0J;
  wire [2:0] W1J;
  wire [1:0] W2J;
  and (W0J[3],D[3],N[3]),(W0J[2],D[2],N[2]),(W0J[1],D[1],N[1]),(W0J[0],D[0],N[0]);
  and (W1J[2],D[2],N[3]),(W1J[1],D[1],N[2]),(W1J[0],D[0],N[1]);
  and (W2J[1],D[1],N[3]),(W2J[0],D[0],N[2]);
  and (W[0],D[0],N[3]);
  or (W[3],W0J[0],W0J[1],W0J[2],W0J[3]),(W[2],W1J[0],W1J[1],W1J[2]),(W[1],W2J[0],W2J[1]);
endmodule