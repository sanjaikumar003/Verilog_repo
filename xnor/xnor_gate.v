module xnor_gate(input b,c,
output y);
assign y=~(b^c);
endmodule