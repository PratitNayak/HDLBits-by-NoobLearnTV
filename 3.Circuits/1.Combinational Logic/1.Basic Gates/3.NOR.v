module top_module (
    input in1,
    input in2,
    output out);

    assign out = ~(in1 | in2) ;
 //   NOR nor1 (out,in1,in2);
endmodule
