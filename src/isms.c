/* Author: SanSantas
 * Date: 
 * Purpose: I'm not really sure what I was doing here
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(int argc, char * argv[]){

    char string[32]; 
    char cat[12];
    memset(string, '\0', 32);
    memset(cat, '\0', 12);

    printf("Enter 'exit' to quit program\n");

    // strcpy(string, "Sooper");

    while(strcmp(string, "exit\n") != 0){

        printf("\n");

        printf("> ");

        fgets(string, 32, stdin);

    }
}
