`timescale 1ns / 1ps

module FullAdder_HA_tb;
    
    reg a,b,c;
    wire sum,cout;
    
    FullAdder_HA UUT(.a(a),.b(b),.cin(c),.sum(sum),.cout(cout));
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
