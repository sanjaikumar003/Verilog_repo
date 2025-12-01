module test;
reg a ,b;
wire z;
or_gate dut(.a(a), .b(b) , .z(z));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    a=0 ; b=0;
    #20 a=0 ; b=1;
    #20 a=1 ; b=0;
    #20 a=1 ; b=1;
    #20 $finish;
end
endmodule
