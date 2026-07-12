`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 11:16:03
// Design Name: 
// Module Name: tb_toggle_led
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


module tb_button_toggle_led;

reg clk;
reg btn;
wire led;

// Instantiate DUT
button_toggle_led uut (
    .clk(clk),
    .btn(btn),
    .led(led)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    btn = 0;

    // Wait
    #20;

    // First Press
    btn = 1;
    #20;
    btn = 0;
    #50;
    // Second Press
    btn = 1;
    #20;
    btn = 0;
    #50;
    // Third Press
    btn = 1;
    #20;
    btn = 0;
    #50;
    // Fourth Press
    btn = 1;
    #20;
    btn = 0;
    #50;
    $finish;

end

endmodule
