#include <stdio.h> 
#include <math.h> 

int main()
{
    char k;
    int total;

    total=0;
    while ( scanf("%c", &k) == 1 )
    {
        if ( k == 'C' )
            {
                total++;
            }
    }

    printf("The number of cytosines in the sequence is %d\n", total);
}
