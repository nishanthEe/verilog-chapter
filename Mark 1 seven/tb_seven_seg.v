`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 20:22:05
// Design Name: 
// Module Name: tb_seven_segment
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


module tb_seven_segment(

    );

reg [3:0] num;
wire [6:0] seg;

seven_segment uut(
    .num(num),
    .seg(seg)
);

initial begin

    num = 4'b0000; #10;
    num = 4'b0001; #10;
    num = 4'b0010; #10;
    num = 4'b0011; #10;
    num = 4'b0100; #10;
    num = 4'b0101; #10;
    num = 4'b0110; #10;
    num = 4'b0111; #10;
    num = 4'b1000; #10;
    num = 4'b1001; #10;

    $finish;

end

endmodule
