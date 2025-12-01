module test;
reg i0,i1,i2,i3,s0,s1;
wire z;
mux4x1 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.z(z));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(i0,i1,i2,i3,s0,s1,z);
    i0=1; i1=0; i2=1; i3=0;
    s0=0; s1=0;
    #10 s0=0; s1=1;
    #10 s0=1; s1=0;
    #10 s0=1; s1=1;
    #50 $finish;
end
always@(s0 or s1)
$display("time=%0t INPUT: i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b OUTPUT:z=%b",$time,i0,i1,i2,i3,s0,s1,z);
endmodule