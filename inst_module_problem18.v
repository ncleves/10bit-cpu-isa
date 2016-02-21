`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:04:39 04/15/2014 
// Design Name: 
// Module Name:    inst_module_problem18 
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
module inst_module_problem18(InstAddress, InstOut);

input [7:0] InstAddress;
output [9:0] InstOut;
// Instructions have [4bit opcode][3bit rs or rt][3bit rt, immediate, or branch target]
reg[9:0] InstOut;

always @ (InstAddress)

  begin
  case (InstAddress)
	0 : InstOut = 10'b0100111111;  //  set r7 111
	
	1 : InstOut = 10'b0110000111;  // load r0 r7

	2 : InstOut = 10'b0101000000;  // split r0 000

	3 : InstOut = 10'b0110001111;  // load r1 r7

	4 : InstOut = 10'b0101001001;  // split r1 001

	5 : InstOut = 10'b0100010100;  // set r2 100

	6 : InstOut = 10'b0100011110;  // set r3 110

	7 : InstOut = 10'b1000010011;  // beq r2 r3

	8 : InstOut = 10'b1001010110;  // jump 010110

	9 : InstOut = 10'b0110100010;  // load r4 r2

	10 : InstOut = 10'b0101100000;  // split r4 000

	11 : InstOut = 10'b1100000100;  // bne r0 r4

	12 : InstOut = 10'b1001010100;  // jump 010100

	13 : InstOut = 10'b0110100010;  // load r4 r2

	14 : InstOut = 10'b0101100001;  // split r4 001

	15 : InstOut = 10'b1100001100;  // bne r1 r4

	16 : InstOut = 10'b1001010100;  // jump 010100

	17 : InstOut = 10'b1011111001;  // incr r7 001

	18 : InstOut = 10'b0111010111;  // store r2 r7

	19 : InstOut = 10'b0000010111;  // if you find it, get out

	20 : InstOut = 10'b1011010001;  // incr r2 001

	21 : InstOut = 10'b1001000111;  // jump 000111

	22 : InstOut = 10'b0100010101;  // set r2 101

	
	23 : InstOut = 10'b1011111001;  // incr r7 001

	
	24 : InstOut = 10'b0111010111;  // store r2 r7

	// opcode = 15 halt
	25 : InstOut = 10'b0000010111;  // halt
	default : InstOut = 10'b0000000000;

	endcase

end

 

endmodule

 

 

 

 

 

 

 

 

 

 
