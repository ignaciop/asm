#include "readLn.h"
#include "writeStr.h"

int main(void) {
    char aString[200]; // limited to 5 for testing readStr
    // change to 200 for use

    writeStr("Enter a text string: ");
    readLn(aString, 200);

    writeStr("You entered:\n");
    writeStr(aString);
    writeStr("\n");

    return 0;
}