`timescale 1ns / 1ps

module controlled_adder_sub_TB();
    reg [7:0]A;
    reg [7:0]B;
    reg mode0, mode1;
    wire [7:0] result;
    wire carry;
    
    Controlled_adder_sub UUT(
                .A(A),
                .B(B),
                .mode0(mode0),
                .mode1(mode1),
                .result(result),
                .cout(carry)
            );
            
            initial
                begin
                    A=8'b00000000;
                    B=8'b00000000;
                    mode0=0;
                    mode1=0;
                end
                
             initial
                begin
                    #40
                    #10 A=8'b00000010; B=8'b00000001; mode1=0; mode0=1;
                    #10 A=8'b00110001; B=8'b10010001; mode1=0; mode0=1;
                    #10 A=8'b01100010; B=8'b10000001; mode1=0; mode0=1;
                    #10 A=8'b10100010; B=8'b11000001; mode1=0; mode0=1; 
                    #10 A=8'b11010010; B=8'b10000001; mode1=0; mode0=1; 
                    
                    
                    #10 A=8'b00000010; B=8'b00000001; mode1=1; mode0=0;
                    #10 A=8'b11010010; B=8'b01010101; mode1=1; mode0=0;
                    #10 A=8'b00100010; B=8'b11010001; mode1=1; mode0=0;
                    #10 A=8'b11000010; B=8'b11101001; mode1=1; mode0=0; 
                    #10 A=8'b00011010; B=8'b11110001; mode1=1; mode0=0; 
                     
                     #10 $finish;
                end
endmodule
