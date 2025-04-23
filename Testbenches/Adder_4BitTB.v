`timescale 1ns / 1ps



module Adder_4BitTB();
    reg [3:0]a,b;
    reg c;
    wire [3:0]s;
    wire cout;
    
    Adder_4Bit UUT(.a(a),.b(b),.c(c),.sum(s),.cout(cout));
    
    initial begin
        #5 a=4'b0000; b=4'b0000; c=0;
        #5 a=4'b0010; b=4'b0001; c=0;
        #5 a=4'b0101; b=4'b0011; c=0;
        #5 a=4'b0011; b=4'b0100; c=0;
        #5 a=4'b0111; b=4'b1111; c=0;
        #5 a=4'b0110; b=4'b0010; c=0;
        #5 a=4'b0000; b=4'b0000; c=1;
        #5 a=4'b0010; b=4'b0001; c=1;
        #5 a=4'b0101; b=4'b0011; c=1;
        #5 a=4'b0011; b=4'b0100; c=1;
        #5 a=4'b0110; b=4'b0010; c=1;
        #5 a=4'b1111; b=4'b0111; c=1;
        #5 $finish;
     end
        
    
endmodule
