#include <unistd.h>
#include "readLn.h"

int readLn(char *stringAddr, int maxLength) {
    int count = 0;

    maxLength--; // allow space for NUL

    read(STDIN_FILENO, stringAddr, 1);

    while (*stringAddr != '\n') {
        if (count < maxLength) {
            count++;
            stringAddr++;
        }

        read(STDIN_FILENO, stringAddr, 1);
    }

    // terminate C string
    *stringAddr = '\0';

    return count;
}