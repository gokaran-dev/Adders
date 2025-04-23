`timescale 1ns / 1ps


module Half_subTB();
            
          wire bo,sub;
          reg a,b;
          
          Half_sub UUT(.a(a),.b(b),.sub(sub),.bo(bo));
          
          initial begin
             #5 a=0; b=0;
             #5 a=0; b=1;
             #5 a=1; b=0;
             #5 a=1; b=1;
             #5 a=0; b=0;
             #5 $finish;
           end
endmodule
