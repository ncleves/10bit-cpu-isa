`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:58 02/16/2012 
// Design Name: 
// Module Name:    TopLevel 
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
module TopLevel(
    input start,
	 input CLK,
    output halt,
    output [15:0] regWriteValue,
    output REG_WRITE,
    output [15:0] memWriteValue,
    output MEM_WRITE,
    output [7:0] PC,
    output reg [15:0] InstCounter,
	 output wire [9:0] Instruction
    );

	// control signals not defined as outputs
	 wire Mem_OR_ALU,REG_OR_IM,SET_ON,BEQ,BNE,HALT,JUMP;
	 wire [2:0] ALU_OP;

	 // ALU outputs
	 wire ZERO, EQUAL;
	 wire [15:0] ALUOut;
	 
	 
	 // Data mem wires
	 wire [15:0] MemOut;
	 
	 // IF module inputs
	 wire [15:0] Target;
	 wire [7:0] PCIN;
	 
	 // Register File
	 
	 wire [15:0] ReadA;
	 wire [15:0] ReadB;
	 
	 // Imm wires
	 
	 wire [15:0] IMOUT;
	 wire [15:0] USEDIM;
	 	 
	 // ALU wires
	 wire [15:0] ALUInputB;
	 
	 //Branching, Jumping and PC
	 wire AndResultBNE; 
	 wire AndResultBEQ;
	 wire OrResultBranch;
	 wire [5:0] JumpMuxResult;
	 wire [5:0] InToPCAdd;
	 wire [7:0] PCAddResult;
	 
	 // MEMorALU Mux
	 assign regWriteValue = (Mem_OR_ALU == 1) ? MemOut : ALUOut;
	 
	 //  input to memory
	 assign memWriteValue = ReadA;
	 
	 //choosing created im or given im
	 assign USEDIM = (SET_ON == 1) ? IMOUT : Instruction[2:0];

	 //choosing reg or im to ALU
	 assign ALUInputB = (REG_OR_IM == 1) ? ReadB : USEDIM;
	 
	 //branching logic
	 assign AndResultBNE = BNE & ZERO;
	 assign AndResultBEQ = BEQ & (!ZERO);
	 assign OrResultBranch = AndResultBNE | AndResultBEQ;
	 assign PCIN = (JUMP == 1) ? {8'b0,Instruction[5:0]} : PCAddResult;
	 assign InToPCAdd = (OrResultBranch == 0) ? 1 : 2;
	 assign PCAddResult = PC + {8'b0,InToPCAdd};
	 

	 // Fetch Module (really just PC, we could have incorporated InstRom here as well)
	 IF if_module (
		.PCIN(PCIN),
		.Init(start), 
		.Halt(halt), 
		.CLK(CLK), 
		.PC(PC)
	);

	// instruction ROM program 17
	//InstROM inst_module(
	//.InstAddress(PC), 
	//.InstOut(Instruction)
	//);
	
// instruction ROM program 18
	inst_module_problem18 inst_module_problem18(
	.InstAddress(PC),
	.InstOut(Instruction)
	);
	
	// Control module
	Control control_module (
		.OPCODE(Instruction[9:6]), 
		.ALU_OP(ALU_OP), 
		.REG_WRITE(REG_WRITE),  
		.MEM_WRITE(MEM_WRITE), 
		.BEQ(BEQ),
		.BNE(BNE),
		.MEM_OR_ALU(Mem_OR_ALU), 
		.JUMP(JUMP),
		.REG_OR_IM(REG_OR_IM),
		.SET_ON(SET_ON),
		.HALT(halt)
	);


	reg_file register_module (
		.CLK(CLK), 
		.RegWrite(REG_WRITE), 
		.srcA(Instruction[5:3]), 
		.srcB(Instruction[2:0]), 
		.writeValue(regWriteValue),     
		.ReadA(ReadA), 
		.ReadB(ReadB)
	);
	
	immidiate_module immidiate_module(
		.IMIN(Instruction[2:0]),
		.IMOUT(IMOUT)
	);
	
		ALU ALU_Module (
		.CLK(CLK), 
		.OP(ALU_OP), 
		.INPUTA(ReadA), 
		.INPUTB(ALUInputB), 
		.OUT(ALUOut), 
		.ZERO(ZERO) 

	);

	DataRAM Data_Module(
		.DataAddress(ReadB), 
		.MemWrite(MEM_WRITE), 
		.DataIn(ReadA), 
		.DataOut(MemOut), 
		.CLK(CLK)
	);
	
	// might help debug
	/*
	always@(SE_Immediate)
	begin
	$display("SE Immediate = %d",SE_Immediate);
	end
	*/
	
	always@(posedge CLK)
	begin
	if (start == 1)
		InstCounter = 0;
	else if(halt == 0)
	begin
		InstCounter = InstCounter+1;
		//$display ("Current PC: ",PC);
		//$display ("");
		//$display("Read A: ",ReadA );
		//$display("PreviousPC:", PC);
		//$display("InToPCAdd:  ",InToPCAdd);
		//$display("PCIN", PCIN);
		//$display("MEM OR ALU: ",Mem_OR_ALU);
			$display("MemOut: ", MemOut);		
	end
	else if (halt == 1)
		$display ("Instruction Count: ",InstCounter);
	end
endmodule
