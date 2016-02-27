`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:31:49 10/27/2011
// Design Name:   reg_file
// Module Name:   
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_tb;

	// Inputs
	reg CLK;
	reg RegWrite;
	reg [2:0] srcA;
	reg [2:0] srcB;
	//reg [2:0] writeReg;
	reg [15:0] writeValue;

	// Outputs
	wire [15:0] ReadA;
	wire [15:0] ReadB;

	// Instantiate the Unit Under Test (UUT)
	reg_file uut (
		.CLK(CLK), 
		.RegWrite(RegWrite), 
		.srcA(srcA), 
		.srcB(srcB), 
		//.writeReg(writeReg), 
		.writeValue(writeValue), 
		.ReadA(ReadA), 
		.ReadB(ReadB)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RegWrite = 0;
		srcA = 0;
		srcB = 0;
		//writeReg = 0;
		writeValue = 0;

		// Wait 100 ns for global reset to finish
		#90;
        
		// Add stimulus here
		// check if writing works
		//srcA = 3'b001;
		//writeReg = 3'b001;
		//writeValue = 16'hABCD;
		RegWrite = 1;
		
		#20;
		// Fill the registers with values...even the zero register
		srcA=3'b000;
		writeValue = 16'h0;
		
		#20;
		
		srcA=3'b001;
		writeValue = 16'h0001;
		
		#20;
		srcA=3'b010;
		writeValue = 16'h0002;
		
		#20;
		srcA=3'b011;
		writeValue = 16'h0003;
		
		#20;
		srcA=3'b100;
		writeValue = 16'h0004;
		
		#20;
		srcA=3'b101;
		writeValue = 16'h0005;
		
		#20;
		srcA=3'b110;
		writeValue = 16'h0006;
		
		#20;
		srcA=3'b111;
		writeValue = 16'h0007;
		
		#20;
		
		//verify that outputs are correct according to the srcA and srcB to ReadA and ReadB respectively
		srcA = 3'b000; 
		srcB = 3'b001;
		
		#20;
		srcA = 3'b010; 
		srcB = 3'b011;
		
		#20;
		srcA = 3'b100; 
		srcB = 3'b101;
		
		#20;
		srcA = 3'b110; 
		srcB = 3'b111;
		
		#20;
		//verify writing without RegWrite has no impact
		RegWrite = 0;
		//writeReg = 4'b0010;
		writeValue = 16'hABCD;
		srcA = 4'b0010;
		
	end
always
#10 CLK = ~CLK;
      
endmodule

