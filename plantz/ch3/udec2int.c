#include "udec2int.h"

unsigned int udec2int(char *decString) {
    unsigned int x;
    unsigned char aChar;
    
    x = 0; // initialize result
    
    while (*decString != '\0') { // end of string?
        x *= 10;
        aChar = *decString;
        x += (0xf & aChar);
        decString++;
    }

    return x;
}