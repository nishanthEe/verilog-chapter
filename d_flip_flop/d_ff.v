`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2026 19:17:54
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
 reg clk;
 reg d;
 wire q;
d_ff uut(.clk(clk),.d(d),.q(q));
always #5 clk=~clk;
initial begin
$monitor ("Time=%0t clk=%b d=%b q=%b" ,$time, clk,d,q);
clk = 0;
d = 0;
#10 d= 1;
#10 d= 0;
#10 d =1;

$finish;
end
endmodule
