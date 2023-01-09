#include <stdio.h> 
#include <math.h> 
#include <string.h>
int main()
{
    char    seq[5000];
    int     length;

    while (scanf( "%s", seq ) == 1)
    {
        length = strlen( seq );
        printf( "%s %d\n", seq, length );
    }
}
