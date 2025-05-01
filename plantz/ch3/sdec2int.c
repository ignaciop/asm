#include "udec2int.h"
#include "sdec2int.h"

int sdec2int(char *decString) {
    int x;
    int negative = 0;

    if (*decString == '-') {
        negative = 1;
        decString++;
    } else {
        if (*decString == '+') {
            decString++;
        }
    }
    
    x = udec2int(decString);

    if (negative) {
        x *= -1;
    }
    
    return x;
}