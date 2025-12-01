module test;
reg t,clk,rst;
wire q,qbar;
t_flipflop dut(t,clk,rst,q,qbar);
always #5 clk=~clk;
initial begin
    clk=0;
    rst=0;
    #7 $display("reset::rst=%0h q=%0h qbar=%0h",rst,q,qbar);
    #17 rst=1;
    drive(0);
    drive(1);
    drive(1);
    drive(1);
    drive(0);
    #50 $finish;
end
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);
end 
task drive;
input a;
begin
@(posedge clk);
t=a;
#1 $display("t=0h,q=%0h qbar=%0h",t,q,qbar);
end
endtask
endmodule 