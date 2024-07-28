module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );

    int i;
  
    always @*
    i = sel[7:0];   

    assign    out = in[i];

    
endmodule
