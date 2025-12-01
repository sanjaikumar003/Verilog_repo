module test;
reg a,b,cin;
wire sum,carry;
full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,test);

    a=0; b=0 ;cin=0;
    #10 a=0; b=0 ;cin=1;
    #10 a=0; b=1 ;cin=0;
    #10 a=0; b=1 ;cin=1;
    #10 a=1; b=0 ;cin=0;
    #10 a=1; b=0 ;cin=1;
    #10 a=1; b=1 ;cin=0;
    #10 a=1; b=1 ;cin=1;
    #80 $finish;
 end
 always @(a or b or cin)
 $display("time=%0t INPUT:a=%b b=%b cin=%b OUTPUT:summ=%b carry=%b",$time,a,b,cin,sum,carry);
 endmodule
 
 

