module mux4x1(input i0,i1,i2,i3,s0,s1,output reg z);//behaviour modelling
always@(i0 or i1 or i2 or i3 or s0 or s1)
begin
    if(s1==0&s0==0)
    z=i0;
    else if(s1==0&s0==1)
    z=i1;
    else if(s1==1&s0==0)
    z=i2;
    else
    z=i3;
end
endmodule