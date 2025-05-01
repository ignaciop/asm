#include "hex2int.h"

unsigned int hex2int(char *hexString) {
    unsigned int x;
    unsigned char aChar;

    x = 0; // initialize result

    while (*hexString != '\0') { // end of string?
        x = x << 4; // make room for next four bits
        aChar = *hexString;

        if (aChar <= '9') {
            x = x + (aChar & 0x0f);
        } else {
            aChar = aChar & 0x0f;
            aChar = aChar + 9;
            x = x + aChar;
        }

        hexString++;
    }

    return x;
}