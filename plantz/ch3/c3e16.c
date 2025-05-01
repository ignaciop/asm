#include "readLn.h"
#include "writeStr.h"
#include "udec2int.h"
#include "int2bin.h"

int main(void) {

    char aString[33];

    unsigned int x;

    writeStr("Enter a decimal number: ");
    readLn(aString, 33);
    
    x = udec2int(aString);
    x *= 10;
    int2bin(aString, x);
    
    writeStr("Multiplying by ten gives (in binary): ");
    writeStr(aString);
    writeStr("\n");
    
    return 0;
}