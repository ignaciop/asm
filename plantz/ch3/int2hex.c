#include "int2hex.h"

void int2hex(char *hexString, unsigned int number) {
    unsigned char aChar;
    int i;

    hexString[8] = '\0'; // install string terminator

    for (i = 7; i >= 0; i--) {
        aChar = number & 0x0f; // get four bits

        if (aChar <= 9) {
            aChar += '0';
        } else {
            aChar = aChar - 10 + 'a';
        }

        hexString[i] = aChar;
        number = number >> 4;
    }
}