module flipflop_1_ar1_0_100_g(CLK, RST, D, Q);
    input CLK;
    input RST;
    input D;
    output reg Q;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Q <= 1'h0;
        end
        else begin
            Q <= D;
        end
    end
endmodule
