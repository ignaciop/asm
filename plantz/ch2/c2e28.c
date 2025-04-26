#include <stdio.h>

int main(void) {
    char *stringPtr = "Hello world.\n";

    while (*stringPtr != '\0') {
        printf("%p: ", stringPtr);
        printf("0x%02x\n", *stringPtr);
        stringPtr++;
    }

    printf("%p: ", stringPtr);
    printf("0x%02x\n", *stringPtr);

    return 0;
}