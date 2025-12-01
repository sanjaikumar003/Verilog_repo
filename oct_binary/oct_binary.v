module oct_binary(input[7:0]d,//behaviout modelling
output reg[2:0]y);
always @(*) begin
 case(d)
 8'b0000_0001:y=3'd0;  //8-8 bit input  3-3 bit output
 8'b0000_0010:y=3'd1;
 8'b0000_0100:y=3'd2;
 8'b0000_1000:y=3'd3;
 8'b0001_0000:y=3'd4;
 8'b0010_0000:y=3'd5;
 8'b0100_0000:y=3'd6;
 8'b1000_0000:y=3'd7;
 default:begin
    y=8'bxxx;
    $display("INVALID");
 end
 endcase
end
endmodule

