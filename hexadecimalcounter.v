   module seven_segment(input clk, input reset, output [3:0] digit, output [6:0] sseg, output dp);
		// Write your logic here
      assign digit = 4'b0000;
      assign dp = 1;
      //assign sseg = 7'b1111101;
      reg [3:0 ] c = 4'b0000;
     // integer t=0;
      reg [6:0] x;
     always @ (posedge clk)
         begin
            //x <= 7'b0000000;
            case(c)
              4'b0000 : x <= ~(7'b1111110);//0
              4'b0001 : x <= ~(7'b0110000);//1
              4'b0010 : x <= ~(7'b1101101);//2
              4'b0011 : x <= ~(7'b1111001);//3
              4'b0100 : x <= ~(7'b0110011);//4
              4'b0101 : x <= ~(7'b1011011);//5
              4'b0110 : x <= ~(7'b1011111);//6
              4'b0111 : x <= ~(7'b1110000);//7
              4'b1000 : x <= ~(7'b1111111);//8
              4'b1001 : x <= ~(7'b1111011);//9
              4'b1010 : x <= ~(7'b1110111);//A
              4'b1011 : x <= ~(7'b0011111);//b
              4'b1100 : x <= ~(7'b1001110);//C
              4'b1101 : x <= ~(7'b0111101);//d
              4'b1110 : x <= ~(7'b1001111);//E
              4'b1111 : x <= ~(7'b1000111);//F
              default: begin
                 x <= ~(7'b0000000);
                 c = c/16;
                 end
            endcase
            end
      
            always @ (posedge clk)
               begin
                  //assign sseg <= 7'b0000000;
                  c = c+1;
                  //c = t ;
               end
            assign sseg = x;
      
            //c=t;
      
            
                  
   endmodule
