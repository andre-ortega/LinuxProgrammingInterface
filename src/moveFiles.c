/* Author: SanSantas
 * Date: 
 * Purpose: Consodilate my notefiles
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/types.h>


int main(int argc, char ** argv){

    struct dirent * dp;
    DIR * dir = opendir("/mnt/c/Users/orteg/desktop/coursework/TheLinuxProgrammingInterface/testCode/bin");
    if(dir == NULL)
    {
        fprintf(stderr, "Unable to read directory\n");
        exit(1);
    }
    
    printf("Directory is opened\n");

    return 0;
}
