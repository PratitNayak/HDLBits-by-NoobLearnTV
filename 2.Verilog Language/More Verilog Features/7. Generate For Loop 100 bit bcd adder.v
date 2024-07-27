module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    
genvar i;
wire [99:0] c_int;

bcd_fadd bcd (.a (a[3:0]),  .b(b[3:0]), .cin(cin) , .sum(sum[3:0]), .cout(c_int[0])  );
    
generate
    for (i=1; i<100; i=i+1) begin : genbcd
        bcd_fadd bcd (.a (a[(4*i)+3:4*i]),  .b(b[(4*i)+3:4*i]), .cin(c_int[i-1]) , .sum(sum[(4*i)+3:4*i]), .cout(c_int[i]));
    end
endgenerate

    assign cout = c_int[99];
endmodule
