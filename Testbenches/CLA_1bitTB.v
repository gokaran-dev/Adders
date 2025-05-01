`timescale 1ns / 1ps

module CLA_1bitTB();
    reg a,b,c;
    wire sum,cout;
    
    CLA_1bit UUT(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));
    initial begin
        #5 a=0; b=0; c=0;
        #5 a=0; b=0; c=1;
        #5 a=0; b=1; c=0;
        #5 a=0; b=1; c=1;
        #5 a=1; b=0; c=0;
        #5 a=1; b=0; c=1;
        #5 a=1; b=1; c=0;
        #5 a=1; b=1; c=1;
        $finish;
        end

endmodule
