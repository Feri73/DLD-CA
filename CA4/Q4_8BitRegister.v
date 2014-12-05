module Q4_8BitRegister(input[7:0] D,input clk,output[7:0] Q);
  genvar i;
  generate
    for(i=0;i<8;i=i+1)begin:loop
      Q2_DLatch latch(D[i],clk,Q[i]);
    end
    endgenerate
endmodule