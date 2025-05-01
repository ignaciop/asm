#include "bin2int.h"

unsigned int bin2int(char *binString) {
    unsigned int x;
    unsigned char aChar;

    x = 0; // initialize result
    
    while (*binString != '\0') { // end of string?
        x = x << 1; // make room for next bit
        aChar = *binString;
        x |= (0x1 & aChar); // sift out the bit
        binString++;
    }

    return x;
}