#!/usr/bin/perl -w

while ( $line = <STDIN> )
{
	#Making sure that nucleotide bases in lowercase or blanks don't return an error
	$line =~ tr/atgc/ATGC/;
	$line  =~ s/ //g;
		
	#Return an error for invalid (non-ATGC nucleotide) bases
	 if ( $line =~ /[^ATGC\n]/ ) 
		{ print ("Invalid sequence: Sequence should only contain A,T,C,G \n"); 
		  next; 
		}

	#Search for the shortest ORF sequence (so that there are no stop codons between the sequence)
	elsif ( $line =~ /(ATG(...)*?(TAA|TAG|TGA))/ )
                 { print ("Found the ORF sequence $1 in $line \n"); }
	else
		 { print ("Could not find an ORF sequence \n");
	           next;	
		 }

	#Search if there are more ORF sequences after the previous match
  	$line = $';
	while ( $line =~ /(ATG(...)*?(TAA|TAG|TGA))/ )
	{
		print ("Found the ORF sequence $1 in $line \n");
		$line = $';
	}
	
}
