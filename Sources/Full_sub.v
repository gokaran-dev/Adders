`timescale 1ns / 1ps

module Full_sub(
    input a,b,c,
    output sub,bo
    );
    
    wire bo1,bo2,sub1;
    Half_sub HS1(.a(a),.b(b),.sub(sub1),.bo(bo1));
    Half_sub HS2(.a(sub1),.b(c),.sub(sub),.bo(bo2));
    or g1(bo,bo1,bo2);
    
endmodule
