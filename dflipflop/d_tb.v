module test;
reg d,clk,rst;
wire q,qbar;

d_flipflop dut (d,clk,rst,q,qbar);

// clock generation
always #2 clk = ~clk;

initial begin
    // initialize
    clk = 0;
    rst = 0;
    d = 0;

    // small delay then check
    #5 $display("reset::rst=%0d d=%0d q=%0d qbar=%0d",d,rst,q,qbar);

    // assert reset
    #4 rst = 1;

    // first set of random inputs
    repeat(5) begin
        @(posedge clk);
        d = $urandom_range(0,1); // or d = $random % 2;
        #1 $display("d=%0h,q=%0h qbar=%0h",d,q,qbar);
        rst = 0;
        #5 $display("reset::rst=%0d d=%0d q=%0d qbar=%0d",d,rst,q,qbar);
    end

    // assert reset again
    #4 rst = 1;

    // second set of random inputs
    repeat(5) begin
        @(posedge clk);
        d = $urandom_range(0,1); // or $random % 2
        #1 $display("d=%0h,q=%0h qbar=%0h",d,q,qbar);
    end

    #100 $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
end

endmodule
