`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:37 10/27/2011
// Design Name:   ALU
// Module Name:   
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg CLK;
	reg [2:0] OP;
	reg [15:0] INPUTA;
	reg [15:0] INPUTB;

	// Outputs
	wire [15:0] OUT;
	wire ZERO;
	wire EQUAL;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.CLK(CLK), 
		.OP(OP), 
		.INPUTA(INPUTA), 
		.INPUTB(INPUTB), 
		.OUT(OUT), 
		.ZERO(ZERO), 
		.EQUAL(EQUAL)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		OP = 0;
		INPUTA = 0;
		INPUTB = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		INPUTA = 16'h0004;
		INPUTB = 16'h0004;
		#15;
		
		OP=0;
		#15
		OP=4;
		#15
		OP=5;
		INPUTA = 6;
		#15
		INPUTA = 5;
		#15
		OP=6;
		#15
		OP = 2;
		INPUTA = 16'b0000000000001100;
		INPUTB = 16'b0000000000000000;
		#15
		INPUTA = 16'b0000000000001110;

	end

always
#10 CLK = ~CLK;


endmodule

