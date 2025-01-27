`timescale 1ns / 1ps

//Five Bit Adder on the Basys - 3 fpga development board.
//Date Started - 2025 - 01 - 25


/*
HARDWARE defined in fivebitadding.xdc 
This 5 bit adder uses the following hardware on the fpga development board.

2 5 bit values:
 = 10 input switches
 = 10 input led's 

1 5 bit output value:
 = 6 outut led's, 5 for the sum value, 1 for the cout
*/


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//half adder module
module half_adder (input a, input b, output s, output cout);
    //Inputs: a, b
    //outputs: s, cout
    //Description: Half adder of input bits a, b. They are nor'd together for sum, and and'd together for cout.


    //outputs
    assign cout = a&b; //cout
    assign s = a^b;    //sum
    
endmodule


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//full adder module
module full_adder(input a, input b, input cin, output s, output cout);
    //Inputs: a, b, cin
    //Outputs: s, cout
    //Description: Two half adders, once betteen bits a,b and then the result of the nor, is then a bit input with the cin from previous bit, into another half adder.
    //the and outputs are or'd to see if there was a carry out, and the sum comes from the second nor'ing. 


    //wire from the output of the first nor gate
    wire [1:0] tempsum;
    
    // a,b enter a nor gate and output tempsum
    assign tempsum = a^b; 

    // tempsum, and cin enter a nor gate and output the bit sum.
    assign s = tempsum^cin;

    // the carry out is calculted by taking a,b into an and gate, and tempsum and cin, then or the two outputs from the and gates.
    assign cout = (a&b | tempsum&cin);
endmodule

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//5 bit adder using half adder and full adder modules.
module fivebit_adder (input a0, 
                      input b0, 
                      output s0, 
                      input a1, 
                      input a2, 
                      input a3, 
                      input a4, 
                      input b1, 
                      input b2, 
                      input b3, 
                      input b4, 
                      output s1, 
                      output s2, 
                      output s3, 
                      output s4, 
                      output cout, 
                      output leda0, 
                      output leda1, 
                      output leda2, 
                      output leda3, 
                      output leda4, 
                      output ledb0, 
                      output ledb1, 
                      output ledb2, 
                      output ledb3, 
                      output ledb4);
    //Inputs: a0 - a4, b0 - b4, these are the two 5 bit binary values as switch inputs, 
    //Outputs: inputs are represented with led's on outputs: leda0-leda4 and ledb0-ledb4
             //the output 5 bit binary value is represented with: s0-s4, 
             //Final carry out is represented with: cout
    //Description: Uses one half adder and four full adder modules to create a full 5 bit adder circuit. These half adder and full adder circuits are defined in modules above in the code.
    //warning: a0 is the least significant bit. 

    
    //c0 to c3 will be the carry out from each full adder,
    wire c0, c1, c2, c3;


    //Assigning LED representations for 5bit numbers A and B. 
    //Each Led is tied to switch inputs a0-a4 and b0-b4
        //ex. if switch a1 = 1, leda1 is active representing that bit as 1. 
    
    //first binary number switches tied to led's
    assign leda0 = a0;
    assign leda1 = a1;
    assign leda2 = a2;
    assign leda3 = a3;
    assign leda4 = a4;

    //Second binary number switches tied to led's
    assign ledb0 = b0;
    assign ledb1 = b1;
    assign ledb2 = b2;
    assign ledb3 = b3;
    assign ledb4 = b4;
    

    //First half adder (ha0)
    half_adder ha0 (
        //input: least bits a0, b0
        //output:  s0-least bit of sum, c0-cout
        .a(a0),
        .b(b0),
        .s(s0),
        .cout(c0));
       

    //First full adder (fa0)
    full_adder fa0 (
        //input: c0-cout from ha0, a1,b1
        //output: s1-bit of sum, c1 - carry
        .a(a1),
        .b(b1),
        .cin(c0),
        .s(s1),
        .cout(c1));

    //Second full adder (fa1)
    full_adder fa1 (
        //input: c1-cout from fa0, a2,b2
        //output: s2-bit of sum, c2 - carry
        .a(a2),
        .b(b2),
        .cin(c1),
        .s(s2),
        .cout(c2));

    //Third full adder (fa2)
    full_adder fa2 (
        //input: c2-cout from fa1, a3,b3
        //output: s3-bit of sum, c3 - carry
        .a(a3),
        .b(b3),
        .cin(c2),
        .s(s3),
        .cout(c3));
    
    //Fourth full adder (fa3)
    full_adder fa3 (
        //input: c3-cout from fa2, a4,b4
        //output: s4-bit of sum, cout - carry
        .a(a4),
        .b(b4),
        .cin(c3),
        .s(s4),
        .cout(cout));


    //
    //At this point you should have a completed sum of bits s4,s3,s2,s1,s0 representing the added binary number and a final bit tied to a seperate led cout representing the carry. 
    //end of module.
endmodule




