module add_8x6_100(A, B, Z);
    input [7 : 0] A;
    input [5 : 0] B;
    output [7 : 0] Z;

    assign Z = A + B;
endmodule
