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
    
    logic led_store0,led_store1,led_store2,led_store3,led_store4,led_store5,led_store6,led_store7;

    
    always @(posedge clk)
    begin
        if(rst)
        begin
            led_store0 <= 0;
            led_store1 <= 0;
            led_store2 <= 0;
            led_store3 <= 0;
            led_store4 <= 0;
            led_store5 <= 0;
            led_store6 <= 0;
            led_store7 <= 0;
        end
        else
        begin
            led_store0 <= sw0;
            led_store1 <= sw1;
            led_store2 <= sw2;
            led_store3 <= sw3;
            led_store4 <= sw4;
            led_store5 <= sw5;
            led_store6 <= sw6;
            led_store7 <= sw7;
        end
    end

delayer delayer0(
    .clk(clk),
    .in(led_store0),
    .out(led0)
);
             
delayer delayer1(
    .clk(clk),
    .in(led_store1),
    .out(led1)
);
           
delayer delayer2(
    .clk(clk),
    .in(led_store2),
    .out(led2)
);
                
delayer delayer3(
    .clk(clk),
    .in(led_store3),
    .out(led3)
);

delayer delayer4(
    .clk(clk),
    .in(led_store4),
    .out(led4)
);

delayer delayer5(
    .clk(clk),
    .in(led_store5),
    .out(led5)
);

delayer delayer6(
    .clk(clk),
    .in(led_store6),
    .out(led6)
);

delayer delayer7(
    .clk(clk),
    .in(led_store7),
    .out(led7)
);
    
    
endmodule
