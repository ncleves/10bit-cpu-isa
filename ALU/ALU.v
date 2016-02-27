`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:22 10/27/2011 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input CLK,
    input [2:0] OP,
    input [15:0] INPUTA,
    input [15:0] INPUTB,
    output reg [15:0] OUT,
    output reg ZERO
    );
	 
	 reg [15:0] TEMP1 = 0;
	 reg [15:0] TEMP2 = 0;
	 reg [3:0] COUNTER = 3'b000;
	 
	always @(INPUTA, INPUTB, OP)
	begin
	//$display("The initial count is : %d", COUNTER);	

	case(OP)
		0 : OUT = INPUTA+INPUTB;//ADD
		1 : OUT = INPUTA-INPUTB;//SUB
		2 :  
			 // EVENORODD
			case(INPUTB)
				0 : 
					begin
					COUNTER = 3'b000;
						TEMP1 = INPUTA&16'b0000000000001111;
						TEMP2 = TEMP1&16'b0000000000000001;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
						//$display("The first count is : %d", COUNTER);	
						TEMP2 = TEMP1&16'b0000000000000010;
						TEMP2 = TEMP2 >> 1;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
						//$display("The second count is : %d", COUNTER);	
						TEMP2 = 	TEMP1&16'b0000000000000100;
						TEMP2 = TEMP2 >> 2;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
						//$display("The third count is : %d", COUNTER);
						TEMP2 = 	TEMP1&16'b0000000000001000;
						TEMP2 = TEMP2 >> 3;	
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
						//$display("The fourth count is : %d", COUNTER);
						OUT = COUNTER&16'b0000000000000001;							
					end
				1 :
					begin
						TEMP1 = INPUTA&16'b0000000011110000;
						TEMP2 = TEMP1&16'b0000000000010000;
						TEMP2 = TEMP2 >> 4;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = TEMP1&16'b0000000000100000;
						TEMP2 = TEMP2 >> 5;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b0000000001000000;
						TEMP2 = TEMP2 >> 6;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b0000000010000000;
						TEMP2 = TEMP2 >> 7;	
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						OUT = COUNTER&16'b000000000000001;							
					end
				2 :
					begin
						TEMP1 = INPUTA&16'b0000111100000000;
						TEMP2 = TEMP1&16'b0000000100000000;
						TEMP2 = TEMP2 >> 8;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = TEMP1&16'b0000001000000000;
						TEMP2 = TEMP2 >> 9;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b0000100000000000;
						TEMP2 = TEMP2 >> 10;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b0001000000000000;
						TEMP2 = TEMP2 >> 11;	
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						OUT = COUNTER&16'b000000000000001;							
					end
				3 :
					begin
						TEMP1 = INPUTA&16'b1111000000000000;
						TEMP2 = TEMP1&16'b0001000000000000;
						TEMP2 = TEMP2 >> 12;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = TEMP1&16'b0010000000000000;
						TEMP2 = TEMP2 >> 13;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b0100000000000000;
						TEMP2 = TEMP2 >> 14;
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						TEMP2 = 	TEMP1&16'b1000000000000000;
						TEMP2 = TEMP2 >> 15;	
						if(TEMP2 == 1)
							COUNTER = COUNTER + 1;
							
						OUT = COUNTER&16'b000000000000001;
					end
				default: OUT = 0;
			endcase
		3 : OUT = INPUTA^INPUTB;
		4 : 
			if(INPUTB == 0)
				begin // SPLIT
				
					OUT = INPUTA&16'b1111111100000000;
					//$display("called Split left!");
				end
				else
				begin
					OUT = INPUTA&16'b0000000011111111;
					//$display("called Split right!");
			end
		5 : OUT = INPUTA&16'b000000000000001;//MOD2
		6 : OUT = INPUTB;//PASS 
		default: OUT = 0;
	endcase
	 
	case(OUT)
		16'b0 : ZERO = 1'b1;
		default : ZERO = 1'b0;
	endcase
	//$display("ALU Out %d \n",OUT);
	end

endmodule
