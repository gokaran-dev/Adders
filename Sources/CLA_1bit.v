`timescale 1ns / 1ps

module CLA_1bit(
        input a,b,cin,
        output sum,cout
    );
        wire temp1,temp2,temp3;
        
        xor g1(temp1,a,b);
        xor g2(sum,temp1,cin);
        and g3(temp2,cin,temp1);
        and g4(temp3,a,b);
        or g5(cout,temp2,temp3);
endmodule
