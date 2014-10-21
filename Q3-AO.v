module Q3_AO(input a,b,c, output w);//worst case delay (20,18)
  wire ja;
  and #(10,8) (ja,a,b);
  or #(10,10) (w,ja,c);
endmodule