module test;
reg[7:0]d;
wire[2:0]y;
priority_encoder uut(.d(d),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);

    d=0;
    
      d=8'b0000_0001;#10
      d=8'b0000_0010;#10
      d=8'b0000_0100;#10
      d=8'b0000_1000;#10
      d=8'b0001_0000;#10
      d=8'b0010_0000;#10
      d=8'b0100_0000;#10
      d=8'b1000_0000;#10
    #10 $finish;
end
always @(d or y)
$monitor("time=%0t INPUT =%b OUTPUT =%b",$time,d,y);
endmodule