`timescale 1ns/1ns
module tb;
reg[7:0]a;
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
    a=10;
    #5.34432 a=20;
    #5.87439 a=30;
    #50 $finish;
end
initial begin
    $printtimescale();
    $monitor("time=%0t,a=%d\n",$realtime,a);
end
endmodule