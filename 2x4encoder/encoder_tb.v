module test;
reg [1:0]d;
reg e;
wire [3:0]y;
encoder dut(.d(d),.e(e),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    e=0;   d=2'b11;#2 //enable low
    e=1;  //enable high
    d=2'b00;#2
    d=2'b01;#2
    d=2'b10;#2
    d=2'b11;#2
    #20 $finish;
end
always @(*)begin
$monitor("time =%0t INPUT:d=%b e=%b OUTPUT:y=%b",$time,d,e,y);
end
endmodule
