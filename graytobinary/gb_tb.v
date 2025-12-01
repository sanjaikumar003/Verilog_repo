module test;
reg [3:0]g;
wire[3:0]b;
binarytogray dut(.g(g),.b(b));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    g=4'b0000;
    #1 g=4'b0010;
    #1 g=4'b1010;
    #1 g=4'b0111;
    #1 g=4'b0100;
#10 $finish;
end
always @(g)
$monitor("time=%0t input:g=%b output:b=%b",$time,g,b);
endmodule