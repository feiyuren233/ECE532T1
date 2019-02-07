`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2019 08:22:10 PM
// Design Name: 
// Module Name: RegFile
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

module RegFile
#(
    parameter lanes = 16,
    parameter depth = 128,
    parameter addrWidth = $clog2(depth)
)
(
    input clk,

    input [addrWidth - 1 : 0] ar0,   
    input [addrWidth - 1 : 0] ar1,
    
    input wire wen,
    input [addrWidth - 1 : 0] aw,
    input `FWORD dw [lanes - 1 : 0],
    
    output `FWORD dr0 [lanes - 1 : 0],
    output `FWORD dr1 [lanes - 1 : 0]
    );
    
    (* RAM_STYLE = "block" *) `FWORD ram [depth - 1 : 0][lanes - 1 : 0];
    
    always @ (posedge clk) begin
        if(wen) begin
            for (int i = 0; i < lanes; i++) begin
                ram[aw][i] <= dr0[i];
            end
        end
        for (int i = 0; i < lanes; i++) begin
            dr0[i] = ram[ar0][i];
            dr1[i] = ram[ar1][i];
        end
        
    end
    
endmodule
