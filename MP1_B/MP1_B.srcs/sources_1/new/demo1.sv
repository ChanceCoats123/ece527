`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2017 03:35:34 PM
// Design Name: 
// Module Name: demo1
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


module demo1(
    input clk,
    input logic left,
    input logic right,
    input logic up,
    input logic down,
    input logic rst,
    input logic sw0,
    input logic sw1,
    input logic sw2,
    input logic sw3,
    input logic sw4,
    input logic sw5,
    input logic sw6,
    input logic sw7,
    output logic led0,
    output logic led1,
    output logic led2,
    output logic led3,
    output logic led4,
    output logic led5,
    output logic led6,
    output logic led7
    );
    
controller controller0(
    .clk(clk),
    .up(up),
    .right(right),
    .left(left),
    .down(down),
    .center(rst),
    .sw({sw7,sw6,sw5,sw4,sw3,sw2,sw1,sw0}),
    .led({led7,led6,led5,led4,led3,led2,led1,led0})
);
    
    
endmodule
