#include "int2bin.h"

void int2bin(char *binString, unsigned int number) {
    int i;

    binString[32] = '\0'; // install string terminator

    for (i = 31; i >= 0; i--) {
        if (number & 0x01) {
            binString[i] = '1';
        } else {
            binString[i] = '0';
        }
        
        number = number >> 1;
    }
}