module Q2_ALU(input signed[7:0] A,input signed[7:0] B,input[4:0] S,input si,ci,output[7:0] R,output N,Z,O,E,Co);
  //reg[7:0]rotate;
  reg[8:0]temp;
  reg[8:0]temp2;
  reg tof;
  reg of;
  //reg[7:0]count;
  //Q1_Barrel_Shifter uut(A,count,1,rotate);
  assign R=temp[7:0];
  assign Co=temp[8];
  assign N=(R<0?1'b1:1'b0);
  assign Z=(R==0?1'b1:1'b0);
  assign E=(A==B?1'b1:1'b0);
  assign O=of;
  always @(A,B,S,ci,si) begin
    temp=9'b0;
    of=1'b0;
    case(S)
      5'd0:temp=A;
      5'd1:temp={si,A[7:1]};
      5'd2:temp={{2{si}},A[7:2]};
      5'd3:temp={{3{si}},A[7:3]};
      5'd4:temp={{4{si}},A[7:4]};
      5'd5:temp={{5{si}},A[7:5]};
      5'd6:temp={{6{si}},A[7:6]};
      5'd7:temp={{7{si}},A[7]};
      5'd8:temp=A;
      5'd9:temp={A[0],A[7:1]};
      5'd10:temp={A[1:0],A[7:2]};
      5'd11:temp={A[2:0],A[7:3]};
      5'd12:temp={A[3:0],A[7:4]};
      5'd13:temp={A[4:0],A[7:5]};
      5'd14:temp={A[5:0],A[7:6]};
      5'd15:temp={A[6:0],A[7]};
      5'd16:begin
        temp=A+B+ci;
        of=~temp[7]&A[7]&B[7]|temp[7]&~A[7]&~B[7];
      end
      5'd17:temp=(A>B?A:B);
      5'd18:temp=(A>B?B:A);
      5'd19:begin
        temp=A+({A[7],A[7:1]})+({{2{A[7]}},A[7:2]});
        of=(temp[7]!=A[7]);
      end
      5'd20:begin
        temp2=A+B;
        tof=~temp2[7]&A[7]&B[7]|temp2[7]&~A[7]&~B[7];
        temp=temp2+B;
        of=tof|(~temp[7]&temp2[7]&B[7]|temp[7]&~temp2[7]&~B[7]);
      end
      5'd21:begin
        temp=A-B;
        of=~temp[7]&A[7]&~B[7]|temp[7]&~A[7]&B[7];
      end
      5'd22:temp=(A>0?A:-A);
      5'd23:temp=A&B;
      5'd24:temp=A|B;
      5'd25:temp=A^B;
      5'd26:temp=~A;
      5'd27:begin
        temp={B[0]&A[3],B[0]&A[2],B[0]&A[1],B[0]&A[0]}+{B[1]&A[3],B[1]&A[2],B[1]&A[1],B[1]&A[0],1'b0}+{B[2]&A[3],B[2]&A[2],B[2]&A[1],B[2]&A[0],{2{1'b0}}}+{B[3]&A[3],B[3]&A[2],B[3]&A[1],B[3]&A[0],{3{1'b0}}};
      end
      default:begin
        temp=9'b0;
        of=1'b0;
      end
    endcase
  end
endmodule
  //how to shift (sign extend or ...?)
  //is A+B+ci overflow OK?
  //is A-B overflow OK?
  //is AxB overflow OK?
  //ouput flags are for R or A?
  //where to consider ci??