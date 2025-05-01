#include <stdio.h>

int main(void) {
    int x;
    int leftShift, rightShift;

    printf("Enter an integer: ");
    scanf("%i", &x);

    printf("Multiply by two raised to the power: ");
    scanf("%i", &leftShift);
    printf("%i x %i = %i\n", x, 1 << leftShift, x << leftShift);

    printf("Divide by two raised to the power: ");
    scanf("%i", &rightShift);
    printf("%i / %i = %i\n", x, 1 << rightShift, x >> rightShift);

    return 0;
}

/*
 * Enter an integer: 1
 * Multiply by two raised to the power: 31
 * 1 x -2147483648 = -2147483648
 *
 * Divide by two raised to the power: 31
 * 1 / -2147483648 = 0
 */
 
 /*
  * Enter an integer: 1
  * Multiply by two raised to the power: 32
  * 1 x 1 = 1
  *
  * Divide by two raised to the power: 32
  * 1 / 1 = 1
  */
  
/*
 * Case 1: 1 × 2^31
 *
 * Let’s say:
 *
 * x = 1
 * leftShift = 31
 * 
 * Then:
 *
 * x << leftShift = 1 << 31 = 2^31 = 2,147,483,648
 *
 * But 2,147,483,648 exceeds the maximum value representable by a 32-bit signed int (2,147,483,647),
 * so this causes an integer overflow. On most systems, this will wrap around and result in a negative
 * number, specifically:
 *
 * 1 << 31 = -2,147,483,648; due to two's complement representation
 * 
 * This is the most negative value a signed 32-bit integer can represent.
 */

/*
 * Case 2: 1 × 2^32
 * 
 * Now:
 *
 * x = 1
 * leftShift = 32
 * 
 * Then:
 * 
 * x << leftShift = 1 << 32
 * 
 * But this is undefined behavior in C, because shifting an int by 32 bits (or more) is not valid when the
 * type is only 32 bits wide. The C standard (specifically for signed integers) does not define behavior 
 * for shift counts equal to or greater than the width of the type (i.e. >= 32 for int).
 *
 * In practice, you might get:
 *
 *  0 (on compilers that take shift % 32)
 *
 *  The same result as 1 << 0 = 1 (if modulo applied)
 *
 *  Random/garbage value
 *
 *  Or your program may crash or behave unexpectedly
 */