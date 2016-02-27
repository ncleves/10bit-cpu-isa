`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:46 02/16/2012 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [3:0] OPCODE,
    output reg [2:0] ALU_OP,
    output reg REG_WRITE,
    output reg BNE,
	 output reg BEQ,
    output reg MEM_WRITE,
    //output reg MEM_READ,
    //output reg REG_DST,
    output reg MEM_OR_ALU,
	 output reg JUMP,
	 output reg REG_OR_IM,
	 output reg SET_ON,
	 output reg HALT
    );
	always @(OPCODE)
	begin
		
		case(OPCODE)
			0 : //HALT
			begin
				 JUMP = 0;
				 MEM_OR_ALU	= 0; 
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 0;
				 HALT = 1;
				 
			end
			1 : //TBD
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 0;
				 HALT = 0;
			end
			2 : //EVENORODD
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b010;
				 HALT = 0;
			end
			3 : //SUB
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 1;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b001;
				 HALT = 0;
			end
			4 : //SET
			begin
				 JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 1;
				 SET_ON = 1;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b110;
				 HALT = 0;
			end
			5 : //SPLIT
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b100;
				 HALT = 0;
			end
			6 : //LOAD
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 1;
				 MEM_WRITE = 0;
				 REG_OR_IM = 1;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b110;
				 HALT = 0;
			end
			7 : //STORE
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 1;
				 REG_OR_IM = 1;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b110; 
				 HALT = 0;
			end
			8 : //BEQ
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 1;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 1;
				 BNE = 0;
				 ALU_OP = 3'b001;
				 HALT = 0;
			end
			9 : //JUMP
			begin
				JUMP = 1;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b110; 
				 HALT = 0;
			end
			10 : //MOD2
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 1;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b101; 
				 HALT = 0;
			end
			11 : //INCR
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 0;
				 REG_WRITE = 1;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 0;
				 ALU_OP = 3'b0; 
				 HALT = 0;
			end
			12 : //BNE
			begin
				JUMP = 0;
				 MEM_OR_ALU	= 0;
				 MEM_WRITE = 0;
				 REG_OR_IM = 1;
				 REG_WRITE = 0;
				 SET_ON = 0;
				 BEQ = 0;
				 BNE = 1;
				 ALU_OP = 3'b001;
				 HALT = 0;
			end 
			
			default: HALT = 1;
		endcase
	end

endmodule
