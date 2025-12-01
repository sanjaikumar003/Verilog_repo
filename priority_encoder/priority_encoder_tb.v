module test;
reg[3:0]d;
wire[1:0]y;
priority_encoder dut(.d(d),.y(y));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
    #2 d=4'b0001;
    #2 d=4'b001x;
    #2 d=4'b01xx;
    #2 d=4'b1xxx;
    #10 $finish;
end
    always @(d)
    $display("time=%0t INPUT=%b OUTPUT=%b",$time,d,y);
    endmodule