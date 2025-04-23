`timescale 1ns / 1ps

module Full_subTB();
    reg a,b,c;
    wire sub,bo;
    
    Full_sub UUT(.a(a),.b(b),.c(c),.sub(sub),.bo(bo));
    initial begin
        #5 a=0; b=0; c=0;
        #5 a=0; b=0; c=1;
        #5 a=0; b=1; c=0;
        #5 a=0; b=1; c=1;
        #5 a=1; b=0; c=0;
        #5 a=1; b=0; c=1;
        #5 a=1; b=1; c=0;
        #5 a=1; b=1; c=1;
        #5 $finish;
        end
    
endmodule
