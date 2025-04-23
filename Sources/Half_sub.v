`timescale 1ns / 1ps

module Half_sub(
    input a,b,
    output sub, bo
    );
    wire temp;
    xor g1(sub,a,b);
    not(temp,a);
    and g2(bo,temp,b);
endmodule
