#include <stdio.h>

int main(void) {
    int x;
    register int y;

    printf("Enter an integer: ");
    scanf("%i", &x);

    y = x;
    printf("You entered %i\n", y);

    return 0;
}