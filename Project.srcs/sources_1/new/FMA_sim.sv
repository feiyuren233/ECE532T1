`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2019 06:54:09 PM
// Design Name: 
// Module Name: FMA_sim
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

module FMA_sim(
    I_FMA fma
    );
parameter DELAY = 21;

real pipeline [DELAY - 1 : 0];

`FWORD mid;
assign mid = fma.a * fma.b;
`FWORD result;
assign result = fma.mode ? mid + fma.c : mid - fma.c;

always_ff @ (posedge fma.clk) begin
    
    pipeline[0] <= result;
    for(int i = 1; i < DELAY; i++) begin
        pipeline[i] <= pipeline[i - 1];
    end
end    

assign fma.out = pipeline[DELAY - 1];
    
endmodule
