`timescale 1ns/1ns
module decoder_tb;

  reg [3:0] d;            // 4-bit input
  reg e;                  // enable
  wire [15:0] y;          // 16-bit one-hot output

  // Instantiate your 4x16 decoder module
  decoder dut (.d(d), .e(e), .y(y));

  integer i; // loop variable

  initial begin
    // dump waveform to view in GTKWave
    $dumpfile("wave.vcd");
    $dumpvars(0, decoder_tb);

    // Start with enable low
    e = 0; 
    d = 4'b0000;
    #1;

    // Enable low → output zero
    d = 4'b1011;
    #1;

    // Enable high
    e = 1;
    #1;

    // Loop through all input combinations
    for (i = 0; i < 16; i = i + 1) begin
      #1 d = i;
    end

    #10 $finish;
  end

  // Monitor signals on every change
  always @ (d or e or y)
    $display("time=%0t input:d=%b e=%b output:y=%b", $time, d, e, y);

endmodule
