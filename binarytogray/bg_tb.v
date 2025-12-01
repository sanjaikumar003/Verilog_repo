module test;
reg [3:0]b;
wire[3:0]g;
binarytogray dut(.b(b),.g(g));
initial begin
    b=4'b0000;
    #1 b=4'b0101;
    #1 b=4'b0011;
    #1 b=4'b0100;
    #1 b=4'b1001;
#10 $finish;
end
always @(*)
$monitor("time=%0t input:b=%b output:g=%b",$time,b,g);
endmodule