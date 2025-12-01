module test;
    reg [1:0] a, b;
    wire a_grt_b, a_less_b, a_eql_b;

   
    bitcomparator dut(
        .a(a),
        .b(b),
        .a_grt_b(a_grt_b),
        .a_less_b(a_less_b),
        .a_eql_b(a_eql_b)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,test);

       
        a = 3; b = 2; #1;
       

        a = 5; b = 7; #1; 
        
        a = 4; b = 4; #1;
        

        #10 $finish;
    end
    always @ (a or b)
     $monitor("time=%0t input:a=%b b=%b output:a_grt_b=%b a_less_b=%b a_eql_b=%b",
                 $time, a, b, a_grt_b, a_less_b, a_eql_b);
endmodule

