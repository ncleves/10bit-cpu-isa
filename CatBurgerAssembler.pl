#!/usr/bin/perl

$count = 0;
@file;

open (MYFILE, 'problem18.txt');

open (OUTFILE, '>outfile.txt');
 
 while (<MYFILE>) 
 {
 	chomp;
 	$file[$count] = $_;
 	$count++;
 	
 	#print "$_\n";
 }
 
 close (MYFILE); 

$count = 0;
$curOp;
$curReg1;
$curReg2;
$curImm;
$jImm;
$opType; 		# Either "Reg" or "Imm" or "Jump"

for ($count = 0; $count < scalar @file; $count++)
{
	
	&lex($count);
	&toBinary();
	unless ($count == (scalar @file) - 1)
	{
		print OUTFILE "\n";
	}	
}

sub lex
{
	$temp = $file[$_[0]];
	if ($temp =~ m/^\s*(halt|tbd|setneg1|evenorodd|sub|set|split|load|store|beq|jump|mod2|incr|bne)/)
	{
		$curOp = $1;
		$temp = $';
	}
	else
	{
		&error("Expected an operation, instead saw \"$temp\"");
	}
	if ($temp =~ m/^\s+(r(0|1|2|3|4|5|6|7))\,/)
	{
		$curReg1 = $1;
		$temp = $';
		$opType = "Reg";
	}
	elsif ($temp =~ m/^\s+((0|1)(0|1)(0|1)(0|1)(0|1)(0|1))/)
	{
		$jImm = $1;
		$temp = $';
		$opType = "Jump";
	}
	elsif ($curOp == "halt")
	{}
	else
	{
		&error("Expected a register, instead saw \"$temp\"");
	}
	if ($opType eq "Jump")
	{}
	elsif ($temp =~ m/^\s+(r(0|1|2|3|4|5|6|7))/)
	{
		$curReg2 = $1;
		$temp = $';
		$opType = "Reg";
	}
	elsif ($curOp eq "halt")
	{}
	elsif ($temp =~ m/^\s+((0|1)(0|1)(0|1))/)
	{
		
		$curImm = $1;
		$temp = $';
		$opType = "Imm";
	}
	else
	{
		&error("Expected a register or an immediate, instead saw \"$temp\"");
	}
	if ($temp =~ m/^\s*(\s*|\s*\#.*)$/)
	{}
	else
	{
		&error("There was excess code at the end: \"$temp\"");
	}
}

sub toBinary
{
	if ($curOp eq "halt")
	{
		print OUTFILE "0000";
	}
	elsif ($curOp eq "tbd")
	{
		print OUTFILE "0001";
	}
	elsif ($curOp eq "evenorodd")
	{
		print OUTFILE "0010";
	}
	elsif ($curOp eq "sub")
	{
		print OUTFILE "0011";
	}
	elsif ($curOp eq "set")
	{
		print OUTFILE "0100";
	}
	elsif ($curOp eq "split")
	{
		print OUTFILE "0101";
	}
	elsif ($curOp eq "load")
	{
		print OUTFILE "0110";
	}
	elsif ($curOp eq "store")
	{
		print OUTFILE "0111";
	}
	elsif ($curOp eq "beq")
	{
		print OUTFILE "1000";
	}
	elsif ($curOp eq "jump")
	{
		print OUTFILE "1001";
	}
	elsif ($curOp eq "mod2")
	{
		print OUTFILE "1010";
	}
	elsif ($curOp eq "incr")
	{
		print OUTFILE "1011";
	}
	elsif ($curOp eq "bne")
	{
		print OUTFILE "1100"
	}
	elsif ($curOp eq "setneg1")
	{
		print OUTFILE "1101"
	}
	else
	{
		&error("Expected a valid operation, instead saw: \"$curOp\"");
	}
	
	if ($opType eq "Jump")
	{
		print OUTFILE $jImm;
	}
	else
	{
		if ($curReg1 eq "r0")
		{
			print OUTFILE "000";
		}
		elsif ($curReg1 eq "r1")
		{
			print OUTFILE "001";
		}
		elsif ($curReg1 eq "r2")
		{
			print OUTFILE "010";
		}
		elsif ($curReg1 eq "r3")
		{
			print OUTFILE "011";
		}
		elsif ($curReg1 eq "r4")
		{
			print OUTFILE "100";
		}
		elsif ($curReg1 eq "r5")
		{
			print OUTFILE "101";
		}
		elsif ($curReg1 eq "r6")
		{
			print OUTFILE "110";
		}
		elsif ($curReg1 eq "r7")
		{
			print OUTFILE "111";
		}
		else
		{
			&error("Expected a valid register, instead saw: \"$curReg1\"");
		}
	
		if ($opType eq "Imm")
		{
			print OUTFILE $curImm;
		}
		elsif ($opType eq "Reg")
		{
			if ($curReg2 eq "r0")
			{
				print OUTFILE "000";
			}
			elsif ($curReg2 eq "r1")
			{
				print OUTFILE "001";
			}
			elsif ($curReg2 eq "r2")
			{
				print OUTFILE "010";
			}
			elsif ($curReg2 eq "r3")
			{
				print OUTFILE "011";
			}
			elsif ($curReg2 eq "r4")
			{
				print OUTFILE "100";
			}
			elsif ($curReg2 eq "r5")
			{
				print OUTFILE "101";
			}
			elsif ($curReg2 eq "r6")
			{
				print OUTFILE "110";
			}
			elsif ($curReg2 eq "r7")
			{
				print OUTFILE "111";
			}
			else
			{
				&error("Expected a valid register, instead saw: \"$curReg2\"");
			}
		}
	}
}

sub error
{
	print "Error: $_[0]\n";
}

close(OUTFILE);
