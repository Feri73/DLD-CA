module Q1_NAND(input a,b,output w);//worst case delay (8,10)
  supply0 Gnd;
  supply1 Vdd;
  wire jn;
  nmos #(3,4,5) (jn,Gnd,a),(w,jn,b);
  pmos #(5,6,7) (w,Vdd,a),(w,Vdd,b);
endmodule