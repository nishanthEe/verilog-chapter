`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 11:14:30
// Design Name: 
// Module Name: toggle_led
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



module button_toggle_led(
    input clk,
    input btn,
    output reg led
);
reg btn_prev;

initial begin
    led = 0;
    btn_prev = 0;
end
always @(posedge clk)
begin
    if(btn && !btn_prev)
        led <= ~led;
    btn_prev <= btn;
end

endmodule
