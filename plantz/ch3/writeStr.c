#include <unistd.h>
#include "writeStr.h"

int writeStr(char *stringAddr) {
    int count = 0;

    while (*stringAddr != '\0') {
        write(STDOUT_FILENO, stringAddr, 1);

        count++;
        stringAddr++;
    }

    return count;
}