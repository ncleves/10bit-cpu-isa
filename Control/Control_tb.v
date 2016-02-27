`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:42:06 02/16/2012
// Design Name:   Control
// Module Name:   
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_tb;

	// Inputs
	reg [3:0] OPCODE;

	// Outputs
	wire [2:0] ALU_OP;
	wire REG_WRITE;
	wire JUMP;
	wire MEM_OR_ALU;
	wire REG_OR_IM;
	wire MEM_WRITE;
	wire SET_ON;
	wire BNE;
	wire BEQ;
	wire HALT;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.OPCODE(OPCODE), 
		.ALU_OP(ALU_OP),  
		.REG_WRITE(REG_WRITE),
		.JUMP(JUMP),
		.MEM_OR_ALU(MEM_OR_ALU),
		.REG_OR_IM(REG_OR_IM),
		.MEM_WRITE(MEM_WRITE),  
		.SET_ON(SET_ON), 
		.BNE(BNE),
		.BEQ(BEQ),
		.HALT(HALT)
	);

	initial begin
		// Initialize Inputs
		OPCODE = 0;

		// Wait 100 ns for global reset to finish
		#100;
      OPCODE = 4'b0010;
		#50
		OPCODE = 4'b0011;
		#50
		OPCODE = 4'b0100;
		#50
		OPCODE = 4'b0101;
		#50
		OPCODE = 4'b0110;
		#50
		OPCODE = 4'b0111;
		#50
		OPCODE = 4'b1000;
		#50
		OPCODE = 4'b1001;
		#50
		OPCODE = 4'b1010;
		#50
		OPCODE = 4'b1011;
		#50
		OPCODE = 4'b1100;
		#50
		OPCODE = 4'b0;
		// Add stimulus here

	end
      
endmodule

