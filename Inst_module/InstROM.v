`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date:    15:50:22 11/02/2007 
// Design Name: 
// Module Name:    InstROM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: This is a basic verilog module to behave as an instruction ROM
// 				 template.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

	 module InstROM(InstAddress, InstOut);
    input [7:0] InstAddress;
    output [9:0] InstOut;
	 
	 // Instructions have [4bit opcode][3bit rs or rt][3bit rt, immediate, or branch target]
	 
	 reg[9:0] InstOut;
	 always @ (InstAddress)
		begin
		case (InstAddress)
			// set r5, 001				# set r5 to equal 1
		0 : InstOut = 10'b0100101001;  // load from address at reg 0 to reg 1  
			
			// set r2, 000				# set r2 to equal 0
		1 : InstOut = 10'b0100010000;  // addi reg 1 and 1
		
		// set r1, 010				# initialize index to first address (32)
		2 : InstOut = 10'b0100001010;  // sw reg 1 to address in reg 0
		
		// set r4, 100				# initialize index to first address (32)
      3 : InstOut = 10'b0100100100;  // beqz reg1 to absolute address 1
		
		//beq r1, r4				# loop from the index to the bounds of the loop
		4 : InstOut = 10'b1000001100;
		
		//jump 100001				# if equal, jump to end of loop
		5 : InstOut = 10'b1001100001;
		
//	set r3, 000	    	# set temp counter of evens to 1 at beginning or loop		
		6 : InstOut = 10'b0100011000;
		
		//	load r0, r1         # get half word into r0
		7 : InstOut = 10'b0110000001;
		
		//	evenorodd r0, 000   # test first four for even or odd and put result into r0 (0 = even, 1 = odd)
		8 : InstOut = 10'b0010000000;
		
		//	beq r0, r5	  		# if r0 = 1 (if first four have odd #), branch
		9 : InstOut = 10'b1000000101;
		
		//	jump 001100	   		# jump to line 12 (end of first if)
		10 : InstOut = 10'b1001001100;
		
		//		incr r3, 001	# increment temp counter of evens
		11 : InstOut = 10'b1011011001;
		
		//	load r0, r1         # get half word into r0
		12 : InstOut = 10'b0110000001;
		
		//	evenorodd r0, 001   # test second four for even or odd and put result into r0 (0 = even, 1 = odd)
		13 : InstOut = 10'b0010000001;
		
		//	beq r0, r5	   		# if r0 = 1 (if second four have odd #), branch
		14 : InstOut = 10'b1000000101;
		
		//	jump 010001	   		# jump to line 17 (end of second if)
		15 : InstOut = 10'b1001010001;
		
		//		incr r3, 001	# increment temp counter of evens
		16 : InstOut = 10'b1011011001;
		
		//	load r0, r1         # get half word into r0
		17 : InstOut = 10'b0110000001;
		
		//	evenorodd r0, 010   # test third four for even or odd and put result into r0 (0 = even, 1 = odd)
		18 : InstOut = 10'b0010000010;
		 
		 //	beq r0, r5	   		# if r0 = 1 (if third four have odd #), branch
		19 : InstOut = 10'b1000000101;
		
		//	jump 010110	  		# jump to line 22 (end of third if)	   
		20 : InstOut = 10'b1001010110;
		
		//		incr r3, 001	# increment temp counter of evens
		21 : InstOut = 10'b1011011001;
		
		//	load r0, r1         # get half word into r0
		22 : InstOut = 10'b0110000001;
		
		//	evenorodd r0, 011   # test fourth four for even or odd and put result into r0 (0 = even, 1 = odd)
		23 : InstOut = 10'b0010000011;
		
		//	beq r0, r5	   		# if r0 = 1 (if fourth four have odd #), branch
		24 : InstOut = 10'b1000000101;
		
		//	jump 011010	  		# jump to line 27 ( end of fourth if)
		25 : InstOut = 10'b1001011011; //Change to 27888888888888888888888888888888888888888888
		 
		 //		incr r3, 001	# increment temp counter of evens
		26 : InstOut = 10'b1011011001;
		
		//	mod2 r3, r3         # mod2 temp counter of evens
		27 : InstOut = 10'b1010011011;
		
		//	beq r3, r5	  		# if r3 = 1 (if counter of evens is odd), branch
		28 : InstOut = 10'b1000011101;
		
		//	jump 011111	  		# jump to line 31 (end of fifth if)
		29 : InstOut = 10'b1001011111;
		
		//		incr r2, 001	# increment total counter of evens
		30 : InstOut = 10'b1011010001;
		
		//	incr r1, 001		# increment index
		31 : InstOut = 10'b1011001001;
		
		//	jump 000100			# jump to line 4 (beginning of loop)
		32 : InstOut = 10'b1001000100;
		
		//incr r5, 001			# increment 1 --> 2 for new address
		33 : InstOut = 10'b1011101001;
		
		//store r2, r5			# put total # of evens into address 2
		34 : InstOut = 10'b0111010101;
		
		//incr r5, 001			# increment 2 --> 3 for new address
		35 : InstOut = 10'b1011101001;
		
		//set r4, 011				# put 64 into r4
		36 : InstOut = 10'b0100100011;
		
		//sub r4, r2				# get total # of odds by doing 64-#ofevens
		37 : InstOut = 10'b0011100010;
		
		//store r4, r5			# put total # of evens into address 3
		38 : InstOut = 10'b0111100101;
		 
		// halt					# end
		39 : InstOut = 10'b0000100101;  // halt
		default : InstOut = 10'b0000000000;
    endcase
  end

endmodule
