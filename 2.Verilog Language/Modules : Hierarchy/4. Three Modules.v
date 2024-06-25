module top_module ( input clk, input d, output q );

    wire q_0,q_1;
    my_dff df1 (
        .clk (clk),
        .d   (d),
        .q   (q_0)
    );
    
     my_dff df2 (
         .clk (clk),
         .d   (q_0),
         .q   (q_1)
    );
    
     my_dff df3 (
         .clk (clk),
         .d   (q_1),
         .q   (q)
    );
endmodule
