module test;
reg[3:0]d;
wire[1:0]y;
encoder dut(.d(d),.y(y));
initial begin
     $dumpfile("wave.vcd");
    $dumpvars(0, test);
d[3]=0; d[2]=0; d[1]=0; d[0]=0;
#2 d[3]=0; d[2]=0; d[1]=0; d[0]=1;
#2 d[3]=0; d[2]=0; d[1]=1; d[0]=0;
#2 d[3]=0; d[2]=1; d[1]=0; d[0]=0;
#2 d[3]=1; d[2]=0; d[1]=0; d[0]=0;
#20 $finish;
end 
always @(d)
$display("time=%0t INPUT=%b OUTPUT=%b",$time,d, y);
endmodule

