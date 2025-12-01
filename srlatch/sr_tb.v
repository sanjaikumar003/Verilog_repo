module test;
reg s,r;
wire q,qbar;

SR_flipflop dut(.s(s),.r(r),.q(q),.qbar(qbar));

initial begin
    $dumpfile("wave.vcd");   
    $dumpvars(0,test);

    s=0; r=0;   // hold
    #2 s=0; r=1; // reset
    #2 s=1; r=0; // set
    #2 s=1; r=1; // invalid
    #20 $finish;
end

always @(s or r)
    $monitor("time=%0t S=%b R=%b | Q=%b Qbar=%b",$time,s,r,q,qbar);

endmodule
