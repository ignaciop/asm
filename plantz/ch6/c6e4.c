#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(void) {
    char aString[200];
    
    char *stringPtr = aString;

    write(STDOUT_FILENO, "Enter a text string: ", strlen("Enter a text string: ")); // prompt user
    
    read(STDIN_FILENO, stringPtr, 1); // get first character

    while (*stringPtr != '\n') { // look for end of line
        stringPtr++; // move to next location
        read(STDIN_FILENO, stringPtr, 1); // get next character
    }

    *stringPtr = '\0';

    // now echo for user
    printf("You entered:\n%s\n", aString);

    return 0;
}