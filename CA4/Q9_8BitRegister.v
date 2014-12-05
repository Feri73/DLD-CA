module Q9_8BitRegister(input[7:0] D,input clk,R,output[7:0] Q);
  genvar i;
  generate
    for(i=0;i<8;i=i+1)begin:loop
      Q7_DFlipFlop flipflop(D[i],clk,R,Q[i]);
    end
    endgenerate
endmodule