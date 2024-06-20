
`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire int1;
    wire int2;
    wire int3;
   assign int1 = a & b;
    assign int2 = c & d;
    assign int3 = int1 | int2;
    assign out = int3;
    assign out_n = ~int3;
endmodule
