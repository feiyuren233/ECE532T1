`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2019 09:27:23 PM
// Design Name: 
// Module Name: IntU
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
`include "interfaces.svh"

module IntU(
    input wire [`D_WIDTH - 1 : 0] op1, op2,
    output wire [`D_WIDTH - 1 : 0] result,
    
    input wire [3:0] mode
    );
endmodule
