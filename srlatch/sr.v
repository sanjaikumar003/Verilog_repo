module SR_flipflop(
    input s, r,           // Set and Reset inputs
    output reg q,         // Output Q
    output reg qbar       // Complement Q̅
);

// initialize to known state
initial begin
    q    = 0;
    qbar = 1;
end

always @(*) begin
    // Case 1: Hold state
    if (s == 0 && r == 0) begin
        q    = q;        // Hold previous
        qbar = qbar;
    end
    // Case 2: Reset
    else if (s == 0 && r == 1) begin
        q    = 0;
        qbar = 1;
    end
    // Case 3: Set
    else if (s == 1 && r == 0) begin
        q    = 1;
        qbar = 0;
    end
    // Case 4: Invalid condition
    else begin
        q    = 1'bx;
        qbar = 1'bx;
    end
end

endmodule
