#include "readLn.h"
#include "writeStr.h"
#include "bin2int.h"
#include "int2bin.h"

int main(void) {

    char aString[33];

    unsigned int x;

    writeStr("Enter a binary number: ");
    readLn(aString, 33);
    
    x = bin2int(aString);
    x *= 10;
    int2bin(aString, x);
    
    writeStr("Multiplying by ten gives: ");
    writeStr(aString);
    writeStr("\n");
    
    return 0;
}