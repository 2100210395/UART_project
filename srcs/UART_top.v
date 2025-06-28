`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2025 16:39:01
// Design Name: 
// Module Name: UART_top
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

/*
module UART_top
  
#(
parameter clk_freq = 1000000,
parameter baud_rate = 9600
)
(
  input clk,rst, 
  input rx,
  input [7:0] dintx,
  input newd,
  output tx, 
  output [7:0] doutrx,
  output donetx,
  output donerx
    );
    
UART_tx
#(clk_freq, baud_rate) 
utx   
(clk, rst, newd, dintx, tx, donetx);   
 
UART_rx
#(clk_freq, baud_rate)
rtx
(clk, rst, rx, donerx, doutrx);    
    
   
endmodule
*/
module UART_top
#(
    parameter clk_freq = 1000000,
    parameter baud_rate = 9600
)
(
    input clk, rst,
    input rx,
    input [7:0] dintx,
    input newd,
    output tx,
    output [7:0] doutrx,
    output donetx,
    output donerx
);

UART_tx #(.clk_freq(clk_freq), .baud_rate(baud_rate)) utx (
    .clk(clk), .rst(rst), .newd(newd), .tx_data(dintx), .tx(tx), .donetx(donetx)
);

UART_rx #(.clk_freq(clk_freq), .baud_rate(baud_rate)) urx (
    .clk(clk), .rst(rst), .rx(rx), .done(donerx), .rxdata(doutrx)
);

endmodule
