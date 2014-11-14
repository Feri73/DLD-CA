module Q1_Barrel_Shifter(input[7:0] D,input[7:0]C,input SBarR,output[7:0] S);
  genvar i;
  wire[72:0] temp;
  generate
    for(i=0;i<8;i=i+1)begin:for1
      genvar j;
      assign temp[i*9]=1'b0;
      for(j=0;j<8;j=j+1)begin:for2
        assign temp[i*9+j+1]=D[(7-i+j)%8]&C[j]&(j>i ? SBarR : 1)|temp[i*9+j];
      end
      assign S[7-i]=temp[i*9+8];
    end
  endgenerate
endmodule