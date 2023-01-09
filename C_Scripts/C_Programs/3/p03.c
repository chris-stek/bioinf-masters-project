#include <stdio.h> 
#include <math.h> 
#include <string.h>

int main()
{
    char    seq[5000];
    int     i, length;
    float   total;

    scanf( "%s", seq );
    length = strlen( seq );

    for ( i = 0 ; i < length ; i++ )
        {
            if ( seq[i] == 'G' || seq[i] == 'C' || seq[i] == 'g' || seq[i] == 'c' )
                {
                    total++;
                }
        }

	printf( "GC content is %f\n", 100*total/length );
}
