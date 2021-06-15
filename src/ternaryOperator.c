/* Author: SanSantas
 * Date: 
 * Description: ternary operator tutorial
 *
 */

#include <stdio.h>
#include <stdlib.h>



int main(int argc, char * argv[]){

    // The operator takes 3 arguments
    // 1. Comparison arg
    // 2. Result upon a true comparison
    // 3. Result opon a false comparison
    
    int a = 10, b = 20, c;

    if (a > b){
        c = a;
    }
    else{
        c = b;
    }

    printf("Binary: %d\n",c);

    // That took many lines when we only need 3
    // Syntax: condition ? value_if_true : value_if_false

    c = (a > b) ? a : b;

    printf("Ternary: %d\n", c);

    return 0;
}
