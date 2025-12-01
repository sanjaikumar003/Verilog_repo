module test;
reg[7:0]d;
wire[2:0]y;
oct_binary dut(.d(d),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    d=8'b0000_0001;  //8-8 bit input  3-3 bit output
    #2 d=8'b0000_0010;
    #2 d=8'b0000_0100;
    #2 d=8'b0000_1000;
    #2 d=8'b0001_0000;
    #2 d=8'b0010_0000;
    #2 d=8'b0100_0000;
    #2 d=8'b1000_0000;
    #30 $finish;
end
always @(d)
$display("time=%0t INPUT=%b OUTPUT=%b",$time,d,y);
endmodule
