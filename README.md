# 10bit-cpu-isa
A 10 bit Single Cycle CPU written primarily in Verilog that solves two "simple" problems. The instruction set architecture was created for this CPU as well.

#####Problem 1 - Instructions:
```
set r5, 001				# set r5 to equal 1
set r2, 000				# set r2 to equal 0
set r1, 010				# initialize index to first address (32)
set r4, 101				# set the bounds of the loop (160)
beq r1, r4				# loop from the index to the bounds of the loop
jump 100001				# if equal, jump to end of loop
	set r3, 000	    	# set temp counter of evens to 1 at beginning or loop
	load r0, r1         # get half word into r0
	evenorodd r0, 000   # test first four for even or odd and put result into r0 (0 = even, 1 = odd)
	beq r0, r5	  		# if r0 = 1 (if first four have odd #), branch
	jump 001100	   		# jump to line 12 (end of first if)
		incr r3, 001	# increment temp counter of evens
	load r0, r1         # get half word into r0
	evenorodd r0, 001   # test second four for even or odd and put result into r0 (0 = even, 1 = odd)
	beq r0, r5	   		# if r0 = 1 (if second four have odd #), branch
	jump 010001	   		# jump to line 17 (end of second if)
		incr r3, 001	# increment temp counter of evens
	load r0, r1         # get half word into r0
	evenorodd r0, 010   # test third four for even or odd and put result into r0 (0 = even, 1 = odd)
	beq r0, r5	   		# if r0 = 1 (if third four have odd #), branch
	jump 010110	  		# jump to line 22 (end of third if)	   
		incr r3, 001	# increment temp counter of evens
	load r0, r1         # get half word into r0
	evenorodd r0, 011   # test fourth four for even or odd and put result into r0 (0 = even, 1 = odd)
	beq r0, r5	   		# if r0 = 1 (if fourth four have odd #), branch
	jump 011010	  		# jump to line 27 ( end of fourth if)
		incr r3, 001	# increment temp counter of evens
	mod2 r3, r3         # mod2 temp counter of evens
	beq r3, r5	  		# if r3 = 1 (if counter of evens is odd), branch
	jump 011111	  		# jump to line 31 (end of fifth if)
		incr r2, 001	# increment total counter of evens
	incr r1, 010		# increment index
	jump 000100			# jump to line 4 (beginning of loop)
incr r5, 001			# increment 1 --> 2 for new address
store r2, r5			# put total # of evens into address 2
incr r5, 010			# increment 1 --> 3 for new address
set r4, 011				# put 64 into r4
sub r4, r2				# get total # of odds by doing 64-#ofevens
store r4, r5			# put total # of evens into address 3
halt					# end
```

#####Problem 2 - Instructions:
```
set r7, 111		 				# sets r7 equal to 9
load r0, r7				    	# loads what is in address 9 into r0
split r0, 000					# replaces r0 with the first half of what is in r0
load r1, r7						# loads what is in address 9 into r1
split r1, 001					# replaces r1 with the second half of what is in r1
set r2, 100						# initialize index of first address (96)
set r3, 110						# puts 192 into r3
beq r2, r3						# compares the values in r2 and r3 (for loop begins)
jump 010110  					# the condition to exit the loop (end is at the end of the loop)
	load r4, r2					# loads what is in address (i) in memory
	split r4, 000				# overwrites what is in r4 with the first (left) half of r4
	bne r0, r4					# compares the first half of the test halfword to the first half in memory
	jump 010100 				# jumps out of this if
		load r4, r2				# loads what is in address (i) in memory
		split r4, 001			# overwrites what is in r4 with the second (right) half of r4
		bne r1, r4				# compares the second half of the test halfword to the second half in memory
		jump 010100		    	# jumps out of this if
			incr r7, 001		# increments r7 (9) to (10)
			store r2, r7		# stores what's in the index into address 10 in memory
			halt				# stops this part of the program
	incr r2, 010				# increments the index by 2 to get to the next halfword
	jump 000111	      			# jumps back to the start of the loop
setneg1 r2, 000					# sets r2 to -1
incr r7, 001					# increments r7 (9) by 1 to make it 10
store r2, r7					# -1 is put at address 10
halt							# ends the program
```

#####The supported memory addresses:

| Register|Memory Address|
|---|---|
|  r0 |    000|
|  r1 |    001|
|  r2 |    010|
|  r3 |    011|
|  r4 |    100|
|  r5 |    101|
|  r6 |    110|
|  r7 |    111|

#####Immediates ("Important" integers harded coded in memory):
|Immediate Address|Number|
|---|---|
|001| 0|
|010| 1|
|011| 32|
|100| 64|
|100| 96|
|101| 160|
|110| 192|
|111| 9|

#####The supported operations:

Operation|Address|Instruction Type|
|---|---|---|
|HALT| 0000| N/A|
|TBD| 0001| N/A|
|EVENORODD| 0010| Immediate|
|SUB| 0011| Register|
|SET| 0100| Immediate|
|SPLIT| 0101| Immediate|
|LOAD| 0110| Register|
|STORE| 0111| Register|
|BEQ| 1000| Register|
|JUMP| 1001| Jump|
|MOD2| 1010| Register|
|INCR| 1011| Immediate|
|BNE| 1100| Register|
 
#####Operations handled by the ALU
|OPS|Description|
|---|---|
|ADD|The output is equal to inputA + inputB|
|SUB|The output is equal to inputA - inputB|
|EVENORODD|Based on the immediate, calculate if a quarter of a word contains an even or odd number of 1s|
|SPLIT|Takes a full word and based on the immediate, converts it into either the high-order half-word, or the low-order half-word.|
|MOD2|The output is equal to inputB % 2|
|PASS|The output is equal to inputB (inputB is passed through)|





