#include "readLn.h"
#include "writeStr.h"
#include "hex2int.h"
#include "int2hex.h"

int main(void) {
    char aString[9];
    unsigned int x;

    writeStr("Enter a hex number: ");
    readLn(aString, 9);
    
    x = hex2int(aString);
    x *= 10;
    int2hex(aString, x);
    
    writeStr("Multiplying by ten gives: ");
    writeStr(aString);
    writeStr("\n");

    return 0;
}