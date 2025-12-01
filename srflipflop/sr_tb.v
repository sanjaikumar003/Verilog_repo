module test;
reg s,r,clk,rst;
wire q,qbar;
SR_flipflop dut(s,r,clk,rst,q,qbar);
always #2 clk=~clk;

initial begin
    clk=0;
    rst=1;
    #4 rst=0;
    $display("reset=%0h q=%0h qbar=%0h",rst,q,qbar);
    drive(2'b00);
    drive(2'b01);
    drive(2'b10);
    drive(2'b11);
    #50 $finish;
end
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
end
task drive;
input[1:0]a;
begin
@(posedge clk);
{s,r}=a;
#1 $display("s=%0h,r=%0h q=%0h qbar=%0h",s,r,q,qbar);
end
endtask
endmodule