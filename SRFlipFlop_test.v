`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 09:16:41
// Design Name: 
// Module Name: SRFlipFlop_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SRFlipFlop_test();

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in nanoseconds

    // Signals
    reg clk;
    reg reset;
    reg S, R;
    wire q, q_bar;

    // Instantiate the module under test
    SR_FlipFlop uut (
        .clk(clk),
        .reset(reset),
        .s(S),
        .r(R),
        .q(q),
        .q_bar(q_bar)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Initial values
    initial begin
        clk = 0;
        reset = 1;
        S = 0;
        R = 0;
        #20 reset = 0; // Release reset after 20 ns
    end

    // Stimulus
    initial begin
        #30 S = 1; R = 0; // Set S input to 1
        #10 S = 0; R = 0; // Set S input to 0
        #10 S = 0; R = 1; // Set R input to 1
        #10 R = 0; R = 0; // Set R input to 0
        #10 S = 1; R = 1; // Invalid state
        #10 R = 0; R = 0; // Set inputs back to 0
    end

    // Display output
    always @ (posedge clk) begin
        $monitor($time," S = %b, R = %b, q = %b, q_bar = %b", S, R, q, q_bar);
        #100 $finish; 
    end
        
endmodule
