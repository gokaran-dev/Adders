`timescale 1ns / 1ps

module Controlled_adder_sub(
        input [7:0]A,
        input [7:0]B,
        input mode,
        output [7:0] result
    );
        wire [7:0]xor_output;
        wire [7:0]carry;
        genvar i;

        
        generate
        for(i=0;i<8;i=i+1)
        begin
            xor g(xor_output[i],mode,B[i]);
        end
        endgenerate

        CLA_1bit mod1(.a(A[0]),.b(xor_output[0]),.cin(mode),.sum(result[0]),.cout(carry[0]));
        CLA_1bit mod2(.a(A[1]),.b(xor_output[1]),.cin(carry[0]),.sum(result[1]),.cout(carry[1]));
        CLA_1bit mod3(.a(A[2]),.b(xor_output[2]),.cin(carry[1]),.sum(result[2]),.cout(carry[2]));
        CLA_1bit mod4(.a(A[3]),.b(xor_output[3]),.cin(carry[2]),.sum(result[3]),.cout(carry[3]));
        CLA_1bit mod5(.a(A[4]),.b(xor_output[4]),.cin(carry[3]),.sum(result[4]),.cout(carry[4]));
        CLA_1bit mod6(.a(A[5]),.b(xor_output[5]),.cin(carry[4]),.sum(result[5]),.cout(carry[5]));
        CLA_1bit mod7(.a(A[6]),.b(xor_output[6]),.cin(carry[5]),.sum(result[6]),.cout(carry[6]));
        CLA_1bit mod8(.a(A[7]),.b(xor_output[7]),.cin(carry[6]),.sum(result[7]),.cout(carry[7]));
   
    
endmodule
