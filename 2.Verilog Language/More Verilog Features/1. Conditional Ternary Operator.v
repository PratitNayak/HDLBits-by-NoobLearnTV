module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] minab;
    wire [7:0] minabc;
    
    assign  minab = (a<b) ? a : b;
    assign  minabc = (c<minab) ? c : minab;
    assign  min = (d<minabc) ? d : minabc;
        
    
    // assign intermediate_result1 = compare? true: false;

endmodule
