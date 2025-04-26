#include <stdio.h>

int main(void) {
    int x;
    unsigned int y;
    
    while (1) {
        printf("Enter a decimal integer (0 to quit): ");
        scanf("%i", &x);
        if (x == 0) break;
        
        printf("Enter a bit pattern in hexadecimal (0 to quit): ");
        scanf("%x", &y);
        if (y == 0) break;
        
        printf("%i is stored as %#010x at address %#010x, and\n", x, x, &x);
        printf("%#010x represents the decimal integer %i stored at address %#010x\n\n", y, y, &y);
    }
    
    printf("End of program.\n");
    
    return 0;
}