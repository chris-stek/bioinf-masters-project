#include <stdio.h> 
#include <math.h> 

int main()
{
    char    k;
    float   total;
    float   seq;

    total=0;
    seq=0;

    while ( (scanf("%c", &k) == 1))
    {
        if ( k == 'C'|| k == 'G'|| k == 'c'|| k == 'g' )
            {
                total++;
            }

        seq++;
    }

    printf("The GC percentage is %f%%\n", 100*(total/seq) );
}
