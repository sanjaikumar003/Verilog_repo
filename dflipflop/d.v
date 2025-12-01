module d_flipflop(input d,clk,rst,
output reg q,
output qbar);
assign qbar=~q;
always @ (posedge clk)begin
    if(!rst)
    q<=0;
    else 
    q<=d;
end 
endmodule