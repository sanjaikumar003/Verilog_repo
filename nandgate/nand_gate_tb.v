module test;
reg a,b;
wire y;
nand_gate uut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    a=0;
    #2 a=0; b=0;
    #2 a=0; b=1;
    #2 a=1; b=0;
    #2 a=1; b=1;
    #10 $finish;
end
endmodule