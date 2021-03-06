module Q1_AO(input a,b,c, output w);//worst case delay (19,17)
  supply0 Gnd;
  supply1 Vdd;
  wire jn,jp,jw;
  nmos #(3,4,5) (jn,Gnd,a),(jw,jn,b),(jw,Gnd,c),(w,Gnd,jw);
  pmos #(5,6,7) (jp,Vdd,a),(jp,Vdd,b),(jw,jp,c),(w,Vdd,jw);
endmodule