`timescale 1ns / 1ps

module karatsuba_mult_tb;

    // Inputs
    reg [15:0] x, y;

    // Output
    wire [31:0] out;

    // Instantiate the module under test (UUT)
    karatsuba_mult_16 uut (
        .x(x),
        .y(y),
        .out(out)
    );

    initial begin
        // Apply test cases
        x='d10; y='d20; #10;
        x = 16'b00000000; y = 16'b00000000; #10; 
        x = 16'b01111001; y = 16'b10000001; #10; 
        x = 16'b00000010; y = 16'b01010001; #10; 
        x = 16'b00110000; y = 16'b00001011; #10; 
        x = 16'b00001000; y = 16'b00000010; #10; 
        x = 16'b10000000; y = 16'b10000000; #10;
        x = 'd65535; y = 'd65535; #10;
        // End simulation
        $stop;
    end

endmodule

