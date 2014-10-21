module Q3_NAND(input a,b, output w);//worst case delay (8,7)
  wire j1,j2,j3;
  nor #(3,2) (j1,a,a),(j2,b,b),(j3,j1,j2),(w,j3,j3);
endmodule