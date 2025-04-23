`timescale 1ns / 1ps



module Half_adder_tb;

reg a,b;
wire sum,carry;
Half_adder UUT(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    #5 a=0; b=0;
    #5 a=0; b=1;
    #5 a=1; b=0;
    #5 a=1; b=1;
    #10
    $stop;
   end
endmodule
