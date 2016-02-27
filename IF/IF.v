`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:49 02/16/2012 
// Design Name: 
// Module Name:    IF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IF(
    input [7:0] PCIN,
    input Init,
    input Halt,
	 input CLK,
    output reg[7:0] PC
    );
	 
	 always @(posedge CLK)
	 begin
		if(Init==1)
			PC = 0;
		else if(Halt==1)
			PC = PC;
		else
			PC = PCIN;
	 end


endmodule
