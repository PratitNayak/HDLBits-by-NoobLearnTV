module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire muxsel;
    wire [15:0] mux0;
    wire [15:0] mux1;
    add16 a1 ( .a(a[15:0]),  .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(muxsel) );
    add16 a2 ( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(mux0), .cout() );
    add16 a3 ( .a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(mux1), .cout() );
    
    assign sum[31:16] = muxsel ? mux1 : mux0; 
    
endmodule
