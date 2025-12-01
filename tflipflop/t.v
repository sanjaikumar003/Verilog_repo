module t_flipflop(input t,clk,rst,
output reg q,
output qbar);
always @(posedge clk)begin
    if(!rst)
    q<=0;
    else begin
        if(t)
        q<=~q;
        else
        q<=~q;
    end 
end
assign qbar=~q;
endmodule