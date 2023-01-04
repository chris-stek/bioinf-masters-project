#!/usr/bin/perl -w


while ( $line = <STDIN> )
{
	#Return an error for invalid (non-ATGC nucleotide) bases
	 if ( $line =~ /[^ATGC\n]/ ) 
		{ print ("Invalid sequence: Sequence should only contain A,T,C,G \n"); 
		  next; 
		}

	#Search for the shortest ORF sequence(so that there are no stop codons between the sequence)
	elsif ( $line =~ /(ATG(...)*?(TAA|TAG|TGA))/ )
                 { print ("Found the ORF sequence $1 in $line \n"); }
	else
		 { print ("Could not find an ORF sequence \n");
	           next;	
		 }
}
