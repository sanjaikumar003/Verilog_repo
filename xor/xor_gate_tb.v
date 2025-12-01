module test;
reg b,c;
wire y;
xor_gate uut(.b(b),.c(c),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
     b=0;c=0;
    #2 b=0;c=1;
    #2 b=1;c=0;
    #2 b=1;c=1;
    #20 $finish;
end 
endmodule