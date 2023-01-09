#include <stdio.h> 
#include <math.h> 

int main()
{

    int     a;
    int	    x;
    float   y;

    printf("Please enter an integer and a float:\n");

    a = scanf("%d %f", &x , &y);

    printf("The value from scanf was %d\n", a);

    printf("The value of x is %d\n", x);
    printf("The value of y is %f\n", y);
}

