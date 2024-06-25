

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0]q_0, q_1,q_2;
    my_dff8 df1 (
        .clk (clk),
        .d   (d),
        .q   (q_0)
    );
    
     my_dff8 df2 (
         .clk (clk),
         .d   (q_0),
         .q   (q_1)
    );
    
     my_dff8 df3 (
         .clk (clk),
         .d   (q_1),
         .q   (q_2)
    );

//mux
//sel [1:0]
always @*
    
case (sel)
        2'b00 :  q = d;
        2'b01 :  q = q_0;
        2'b10 : q = q_1;
        2'b11 :  q = q_2;
        default :  q = 8'bx;    
endcase

   
endmodule