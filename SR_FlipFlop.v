`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 09:06:50
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(

    input clk,reset,
    input s,r,
    output reg q, 
    output q_bar
    );
    
    always @ (posedge clk)begin  // For Synchronous Reset always positive edge of clk
    if(reset)
        q <= 0;
    else begin
        case({s,r})
            2'b00:
                q <= q;
            2'b01:
                q <= 0;
            2'b10:
                q <= 1;
            2'b11:
                q <= 1'bx;
            default:
                q <= q;
        endcase
    end
end
      assign q_bar = ~q; 
      
endmodule
