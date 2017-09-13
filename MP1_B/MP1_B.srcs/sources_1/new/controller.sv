`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 03:33:00 PM
// Design Name: 
// Module Name: controller
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


module controller(
    input clk,
    input logic up,
    input logic right,
    input logic left,
    input logic down,
    input logic center,
    input logic [7:0] sw,
    output logic [7:0] led
    );
    
enum int unsigned {
    reset,
    mode0,
    mode1,
    mode2,
    mode3
} state, next_state;

always @(posedge clk)
begin
    state <= next_state;
end

always_comb
begin
    if(up)
        next_state = mode0;
    else if(down)
        next_state = mode1;   
    else if(left)
        next_state = mode2;
    else if(right)
        next_state = mode3;
    else if(center)
        next_state = reset;
    else
        next_state = state;
end

always @(posedge clk)
begin
    case(state)
        mode0 :
            led <= sw;
        mode1 :
            led <= sw >> 2;
        mode2 :
            led <= {sw[4],sw[3],sw[2],sw[1],sw[0],sw[7],sw[6],sw[5]};
        mode3 :
            led <= ~sw;
        reset :
            led <= 8'b0;
    endcase
end


endmodule