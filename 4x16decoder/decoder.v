module decoder(input[3:0]d,
input e,
output [15:0]y);
assign y=e?1<<d:0;
endmodule