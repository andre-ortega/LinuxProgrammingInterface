/* Author: SanSantas
 * Date: 
 * Purpose: Experiementing with arg lists in C, while understanding TLPI's error codes. I have never used arg 
 *  lists in C.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h> // va_list, va_start, va_arg


int funk(int num, ...);


int main(){

    // The FIRST number in this arg list represents the amount of arguments being passed into this function,
    // similar to main(int argc, char * argv[])
    int avg = funk(3,  1,2,3);

    printf("Average: %d\n", avg);
    return 0;
}

int funk(int num, ...){

    // Initialize
    va_list valist;

    int sum = 0;

    // use int parameter and va_start macro to initialize the va_list variable to an arg list.
    va_start(valist, num);

    // Use va_arg macro and va_list variable to access each item in argument list
    for (int i = 0; i < num; i++){
        sum += va_arg(valist, int);
    }

    // clean up associated memory
    va_end(valist);

    return sum/num;
}
