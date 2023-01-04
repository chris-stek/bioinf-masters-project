#!/usr/bin/perl -w


while ( $line = <STDIN> )
{
	if ( $line =~ /(ATG(...)*?(TAA|TAG|TGA))/ )
                 { print("Found the ORF sequence $1 in $line \n"); }
	else
		 { print("Could not find an ORF sequence \n");
	           next;	
		 }

}
