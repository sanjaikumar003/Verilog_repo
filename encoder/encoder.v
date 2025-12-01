module encoder(input[3:0]d,
               output[1:0]y);
or o1(y[0],d[3],d[1]);
or o2(y[1],d[3],d[2]);  
endmodule            