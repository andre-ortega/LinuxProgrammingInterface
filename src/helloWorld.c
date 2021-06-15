
// This program is used to test the location of the GNU C library on this subsystem by running with
//  ldd a.out | grep libc

#include <stdlib.h>
#include <stdio.h>
#include <gnu/libc-version.h>

const char * gnu_get_libc_version(void);


int main(){

// Edit: this function returns a pointer to null-terminated, statically allocated string containing the
// GNU C library version number

    const char * version = gnu_get_libc_version();
    printf("Version: --%s\n", version);

    return 0;
}
