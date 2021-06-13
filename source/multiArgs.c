/* Author: SanSantas
 * Date: 6/13/2021
 * Purpose: Demonstrating usage of variable-length arguments for main() and nested functions
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <limits.h>

int findMin(int arg_count, ...);

int main(int argc, char * argv[])
{
    if(argc < 2){
        printf("Usage: %s [num] [...]\n" , argv[0]);
        exit(1);
    }

    int min = INT_MAX; 
    int a;

    for(int i = 1; i < argc; i++)
        if(atoi(argv[i]) < min)
            min = atoi(argv[i]);


    printf("min: %d\n", min);

    int count = 5;
    printf("min: %d\n", findMin(count, 12, 67, 4, 7, 100));

    return 0;
}

int findMin(int arg_count, ...){
    int i;
    int min, a;

    va_list ap;

    va_start(ap, arg_count);

    min = va_arg(ap, int);

    for (i = 2; i <= arg_count; i++)
        if ((a = va_arg(ap, int)) < min)
            min =a;

    va_end(ap);

    return min;
}
