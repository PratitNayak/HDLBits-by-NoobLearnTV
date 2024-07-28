module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    int i,j,h;
  
    always @* begin
    i = sel[7:0]; 
    end
    
    assign    out[3] = in[(i*4)+3];
    assign    out[2] = in[(i*4)+2];
    assign    out[1] = in[(i*4)+1];
    assign    out[0] = in[i*4];

    
endmodule
