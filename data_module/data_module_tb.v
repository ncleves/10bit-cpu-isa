`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:32 04/13/2014
// Design Name:   DataRAM
// Module Name:   /students/home/ncleves/CatPU/data_module_tb.v
// Project Name:  CatPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataRAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_module_tb;

	// Inputs
	reg [15:0] DataAddress;
	//reg ReadMem;
	reg MemWrite;
	reg [15:0] DataIn;
	reg CLK;

	// Outputs
	wire [15:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	DataRAM uut (
		.DataAddress(DataAddress), 
		//.ReadMem(ReadMem), 
		.MemWrite(MemWrite), 
		.DataIn(DataIn), 
		.DataOut(DataOut), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		DataAddress = 0;
		//ReadMem = 0;
		MemWrite = 0;
		DataIn = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#90;
      DataAddress = 1;
		MemWrite = 1;
		DataIn = 16'hffff;
		#20
		
		DataAddress = 32;
		MemWrite = 0;
		DataIn = 16'hffff;
		
		#20;
		DataAddress = 1;
			
		// Add stimulus here

	end
	always
	#10 CLK = ~CLK;   
endmodule

