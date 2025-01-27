`timescale 1ns / 1ps

//half adder
module half_adder (input a, input b, output s, output cout);
    assign cout = a&b;
    assign s = a^b;
endmodule

//full adder
module full_adder(input a, input b, input cin, output s, output cout);
    
    wire [1:0] tempsum;
    
    assign tempsum = a^b; 
    
    assign s = tempsum^cin;
    assign cout = (a&b | tempsum&cin);
     
    
endmodule



//5 bit adder using half adder and full adder modules.
module fivebit_adder (input a0, input b0, output s0, input a1, input a2, input a3, input a4, input b1, input b2, input b3, input b4, output s1, output s2, output s3, output s4, output cout, output leda0, output leda1, output leda2, output leda3, output leda4, output ledb0, output ledb1, output ledb2, output ledb3, output ledb4);
    wire c0, c1, c2, c3;
    
    
    assign leda0 = a0;
    assign leda1 = a1;
    assign leda2 = a2;
    assign leda3 = a3;
    assign leda4 = a4;
    
    assign ledb0 = b0;
    assign ledb1 = b1;
    assign ledb2 = b2;
    assign ledb3 = b3;
    assign ledb4 = b4;
    
    
    half_adder ha0 (
        .a(a0),
        .b(b0),
        .s(s0),
        .cout(c0));
       
       
    full_adder fa0 (
        .a(a1),
        .b(b1),
        .cin(c0),
        .s(s1),
        .cout(c1));
      
    full_adder fa1 (
        .a(a2),
        .b(b2),
        .cin(c1),
        .s(s2),
        .cout(c2));
      
    full_adder fa2 (
        .a(a3),
        .b(b3),
        .cin(c2),
        .s(s3),
        .cout(c3));
      
    full_adder fa3 (
        .a(a4),
        .b(b4),
        .cin(c3),
        .s(s4),
        .cout(cout));
      
        
        
    
    
endmodule




