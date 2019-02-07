`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2019 07:54:22 PM
// Design Name: 
// Module Name: sim_top
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

module sim_top(

    );

`FWORD a, b, c, out;
logic clk;
logic mode;
    
I_FMA io(clk, mode, a, b, c, out); 

FMA_sim sim(
    io
);
    
initial begin
    clk <= 0;
    a <= 2.0;
    b <= 3.0;
    c <= 1.1;
    
    mode <= 0;
end

always #5 clk <= ~clk;

always @ (posedge clk) begin
    c <= c + 1.0;
    mode <= ~mode;
end


    
endmodule
