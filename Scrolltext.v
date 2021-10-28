   module seven_segment(input clk, input reset, output reg [3:0] digit, output [6:0] sseg, output dp);
		// Write your logic here
      assign dp = 1;
      reg [6:0] v = 7'b1100011;
      reg [6:0] a = 7'b0000010;
      reg [6:0] r = 7'b0001000;
      reg [6:0] u = 7'b1100011;
      reg [6:0] n = 7'b1101010;
      integer v_counter =1;
      integer a_counter =2;
      integer r_counter =3;
      integer u_counter =4;
      integer n_counter =5;
      //assign sseg = a;
      integer counter_val =0;
      always@ (posedge clk) 
         begin
            if(counter_val == 0)
               assign digit = 4'b0111;
            else if (counter_val == 1)
               assign digit = 4'b1011;
            else if (counter_val == 2)
               assign digit = 4'b1101;
            else if (counter_val == 3)
               assign digit = 4'b1110;
         end
      always@ (posedge clk)
         begin
            if(counter_val == v_counter)
               assign sseg = v;
            else if(counter_val == a_counter)
               assign sseg = a;
            else if(counter_val == r_counter)
               assign sseg = r;
            else if(counter_val == u_counter)
               assign sseg = u;
            else if(counter_val == n_counter)
               assign sseg = n;
            else 
               assign sseg = 7'b1111111;
             
            
         end
       always@ (posedge clk) 
         begin
            if(counter_val == 3)
               begin
               counter_val =0;
               v_counter = v_counter-1;
               a_counter = a_counter-1;
               r_counter = r_counter-1;
               u_counter = u_counter-1;
               n_counter = n_counter-1;
               end
            else
               counter_val = counter_val +1;
         end
   endmodule
