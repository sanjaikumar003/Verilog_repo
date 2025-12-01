module bitcomparator(
    input [1:0] a, b,
    output reg a_grt_b, a_less_b, a_eql_b
);
    always @(*) begin
        a_grt_b  = 0;
        a_less_b = 0;
        a_eql_b  = 0;

        if (a > b)
            a_grt_b = 1;
        else if (a < b)
            a_less_b = 1;
        else
            a_eql_b = 1;
    end
endmodule
