module test;
    reg a;
    wire y;

    not_gate uut(.a(a), .y(y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,test);

        a = 0;
        #10 a = 1;
        #10 a = 0;
        #10 $finish;
    end
    //always @(*)
    //$display("time=%0t INPUT=%b OUTPUT=%b",$time,a,y);
endmodule
