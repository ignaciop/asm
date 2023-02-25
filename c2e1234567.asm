; 1a) 
; 37 / 2 = 18 => 37 % 2 = 1
; 18 / 2 = 9  => 18 % 2 = 0
;  9 / 2 = 4  =>  9 % 2 = 1    
;  4 / 2 = 2  =>  4 % 2 = 0
;  2 / 2 = 1  =>  2 % 2 = 0
;
;  Then 37 in binary is 100101
; ------------------------------------------------------------------------
;   
; 1b)
; 350 / 2 = 175 => 350 % 2 = 0
; 175 / 2 =  87 => 175 % 2 = 1 
;  87 / 2 =  43 =>  87 % 2 = 1  
;  43 / 2 =  21 =>  43 % 2 = 1
;  21 / 2 =  10 =>  21 % 2 = 1  
;  10 / 2 =   5 =>  10 % 2 = 0
;   5 / 2 =   2 =>   5 % 2 = 1
;   2 / 2 =   1 =>   2 % 2 = 0
;
; Then 350 in binary is 101011110  
; ------------------------------------------------------------------------
;   
; 1c)
; -65 is a negative number. First we convert the absolute value: 65   
;
; 65 / 2 = 32 => 65 % 2 = 1   
; 32 / 2 = 16 => 32 % 2 = 0
; 16 / 2 =  8 => 16 % 2 = 0   
;  8 / 2 =  4 =>  8 % 2 = 0
;  4 / 2 =  2 =>  4 % 2 = 0  
;  2 / 2 =  1 =>  2 % 2 = 0
;   
; Then 65 in binary is 1000001  
; Now, flipping the bits (excluding the first bit sign) we obtain 0111110   
; Last, we add 1 to 0111110 (2 complement): 0111111
; We put an extra leading bit for the sign, then 10111111 
; So, -65 in binary is 10111111  
; ------------------------------------------------------------------------
;   
; 1d)
; -427 is a negative number. First we convert the absolute value: 427   
;
; 427 / 2 = 213 => 427 % 2 = 1   
; 213 / 2 = 106 => 213 % 2 = 1
; 106 / 2 =  53 => 106 % 2 = 0   
;  53 / 2 =  26 =>  53 % 2 = 1
;  26 / 2 =  13 =>  26 % 2 = 0  
;  13 / 2 =   6 =>  13 % 2 = 1
;   6 / 2 =   3 =>   6 % 2 = 0
;   3 / 2 =   1 =>   3 % 2 = 1
;
; Then 427 in binary is 110101011   
; Now, flipping the bits (excluding the first bit sign) we obtain 001010100
; Last, we add 1 to 001010100 (2 complement): 001010101
; We put an extra leading bit for the sign, then 1001010101
; So, -427 in binary is 1001010101  
;
; ------------------------------------------------------------------------
;
; 2a)   
; We have a 16-bit sign integer in binary (the leading bit is the sign):
;   
; 0000 0010 1010 1010
;   
; So, the number is positive. To make it easier, we divided the number in
; nibbles (4 bits) and convert each one to hexadecimal, then:   
;
; 0000 0010 1010 1010 = 0x02AA   
;
; Then, the number in decimal is: 2 * 16^2 + 10 * 16^1 + 10 * 16^0 = 512 + 160 + 10  
; So 0000 0010 1010 1010 is 682
; ------------------------------------------------------------------------
;
; 2b) 1111111111101101   
;
; Now, we have the bit sign to 1, so the number is negative   
; Taking the other 15 bits: 111111111101101
; Flipping bits: 000000000010010   
; Add 1: 000000000010011, which in decimal is 19
; So, the number is -19  
; ------------------------------------------------------------------------
;   
; 2c) 0x0101 = 0000 0001 0000 0001
; The leading bit is 0, so it is a positive number  
; So, the number is 2^8 + 2^0 = 257
; ------------------------------------------------------------------------
;
; 2d) 0xffcc = 1111 1111 1100 1100   
;
; Leading bit is 1, so we have a negative number   
; Taking the other 15 bits: 111111111001100
; Flipping bits: 000000000110011  
; Add 1 (note the carrying bit when 1 + 1 = 0): 000000000110100
; This number is 2^5 + 2^4 + 2^2 = 32 + 16 + 4 = 52  
; So, the final number is -52
;   
; ------------------------------------------------------------------------
;   
; 3a) Now, we have 16 bit unsigned integers:
;   
; 0x015a = 0000 0001 0101 1010
; ------------------------------------------------------------------------
;
; 3b) 
; 0xfedc = 1111 1110 1101 1100 
; ------------------------------------------------------------------------
;
; 3c)
; 0x0101 = 0000 0001 0000 0001
; ------------------------------------------------------------------------
;
; 3d)
; 0xffcc = 1111 1111 1100 1100
;
; ------------------------------------------------------------------------
;
; 4a) In this exercise, the numbers are 32 bit floating point, so IEEE 754 gives:
;
; 31      sign bit
; 30-23   exponent (127 is the exponent bias)
; 22-0    value (implicit 1. leading the 22 bits)
;
; Back to the exercise:
; 1.375 is a positive number, so the first bit is 0
;
; Next. the integer portion is 1, so we have 1 in binary
;
; Now, 2 * 0.375 = 0.75; so we have a 0
; Then 2 * 0.75 = 1.5; so we have a 1
; Then 2 * 0.5 = 1; so the last bit is 1
;
; So our number 1.375 is 1.011 = 1.011 * 2^0 in binary
;
; Then, the sign bit is 0. 
; The fraction is 01100000000000000000000 (without the implied 1)
; The exponent field is 127 + 0 = 127, in binary is 01111111
;
; So, the number is 0 01111111 01100000000000000000000000
; ------------------------------------------------------------------------
;
; 4b) 0.041015625
;
; This is a positive number, so the first bit is 0
; 
; Next, the integer portion is 0, so we have 0 in binary
;
; Now 2 * 0.041015625 = 0.08203125; so we have a 0
; Then 2 * 0.08203125 = 0.1640625; so we have a 0
; Then 2 * 0.1640625 = 0.328125; so we have a 0
; Then 2 * 0.328125 = 0.65625; so we have a 0
; Then 2 * 0.65625 = 1.3125; so we have a 1
; Then 2 * 0.3125 = 0.625; so we have a 0
; Then 2 * 0.625 = 1.25; so we have a 1
; Then 2 * 0.25 = 0.50; so we have a 0
; Then 2 * 0.50 = 1; so the last bit is 1
;
; So our number 0.041015625 is 0.000010101. With implicit 1 is 1.0101 * 2^-5
;
; Then, the sign bit is 0
; The fraction is 01010000000000000000000
; The exponent field is 127 - 5 = 122, in binary is 01111010
;
; So, the number is 0 01111010 01010000000000000000000
; ------------------------------------------------------------------------
;
; 4c) -571.3125
; 
; This is a negative number, so the first bit is 1
;
; Next, the integer portion is 571, in binary is 1000111011
;
; The fraction part is 0.3125
; Now 2 * 0.3125 = 0.625; so we have a 0
; Then 2 * 0.625 = 1.25; so we have a 1
; Then 2 * 0.25 = 0.50; so we have a 0
; Then 2 * 0.50 = 1; so the last bit is 1
;
; So our number is -571.3125 = -1000111011.0101; with implicit 1 we have -1.0001110110101 * 2^9
;
; Then, the sign bit is 1
; The fraction is 00011101101010000000000
; The exponent field is 127 + 9 = 136, in binary is 10001000
;
; So, the number is 1 10001000 00011101101010000000000
; ------------------------------------------------------------------------
;
; 4d) 4091.125
;
; This is a positive number, so the first bit is 0
;
; Next, the integer portion is 4091, in binary is 111111111011
;
; The fraction part is 0.125
; Now 2 * 0.125 = 0.250; so we have a 0
; Then 2 * 0.250 = 0.5; so we have a 0
; Then 2 * 0.5 = 1; so the last bit is 1
;
; So our number 4091.125 = 111111111011.001; with implicit 1 we have 1.11111111011001 * 2^11
;
; The, the sign bit is 0
; The fraction is 11111111011001000000000
; The exponent field is 127 + 11 = 138, in binary is 10001010
;
; So, the number is 0 10001010 11111111011001000000000
;
; ------------------------------------------------------------------------
;
; 5a) 0x3F82000
;
; First, the number in 32-bit binary is:
;
; 0x3F82000 = 0011 1111 1000 0010 0000 0000 0000
;
; We regroup the bits according to IEEE 754, adding missing zeros so we complete 32 bits:
;
; 0 01111111 00000100000000000000000
;
; Then, the sign bit is 0 so we have a positive number
;
; The exponent field is 01111111, in decimal is 127. Then, we substract the offset
; so 127 - 127 = 0
;
; The fraction is 00000100000000000000000. With the implicit 1
; this is 1 + 1 * 2^-6 = 1 + 0.015625 = 1.015625
;
; So, the final number is 1.015625 * 2^0 = 1.015625
; ------------------------------------------------------------------------
;
; 5b) OxBF82000
;
; First, the number in 32-bit binary is:
;
; OxBF82000 = 1011 1111 1000 0010 0000 0000 0000
;
; We regroup the bits according to IEEE 754, adding missing zeros so we complete 32 bits:
; 
; 1 01111111 00000100000000000000000
;
; Then, the sign bit is 1, so we have a negative number
;
; The exponent field is 01111111, in decimal is 127. Then, we substract the offset
; so 127 - 127 = 0
;
; The fraction is 00000100000000000000000. With the implicit 1
; this is 1 + 1 * 2^-6 = 1 + 0.015625 = 1.015625
;
; So, the final number is -1.015625 * 2^0 = -1.015625
; ------------------------------------------------------------------------
;
; 5c) Ox4F84000
;
; First, the number in 32-bit binary is:
;
; Ox4F84000 = 0100 1111 1000 0100 0000 0000 0000
;
; We regroup the bits according to IEEE 754, adding missing zeros so we complete 32 bits:
;
; 0 10011111 00001000000000000000000
;
; Then, the sign bit is 0 so we have a positive number
;
; The exponent field is 10011111, in decimal is 159. Then, we substract the offset
; so 159 - 127 = 32
;
; The fraction is 00001000000000000000000. With the implicit 1
; this is 1 + 1 * 2^(-5) = 1 + 0.03125 = 1.03125
;
; So, the final number is 1.03125 * 2^32 = 4429185024
; ------------------------------------------------------------------------
;
; 5d) Ox3C86000
;
; First, the number in 32-bit binary is:
;
; Ox3C86000 = 0011 1100 1000 0110 0000 0000 0000
;
; We regroup the bits according to IEEE 754, adding missing zeros so we complete 32 bits:
;
; 0 01111001 00001100000000000000000
;
; Then, the sign bit is 0 so we have a positive number
;
; The exponent field is 01111001, in decimal is 121. Then, we substract the offset
; so 121 - 127 = -6
;
; The fraction is 00001100000000000000000. With the implicit 1
; this is 1 + 1 * 2^(-5) + 1 * 2^(-6) = 1 + 0.03125 + 0.015625 = 1.046875
;
; So, the final number is 1.046875 * 2^(-6) = 0.016357422
;
; ------------------------------------------------------------------------
;
; 6) Binary addition of 2 unsigned integers
;
;    111111111  1 11
;    0001001011001011
;  + 1110110111101011 
;  ------------------
;   10000000010110110
;
; ------------------------------------------------------------------------
;
; 7) Binary multiplication of 2 unsigned integers
;
;                         1011001011
;                 *          1101101 
;                 ------------------
;                 +       1011001011
;                 +     1011001011
;                 +    1011001011
;                 +  1011001011
;                 + 1011001011
;                 ------------------
;                  10011000001101111
;
; ------------------------------------------------------------------------
;
; 8) Write an assembly "program" (data only) defining data values using
;    dw and dd for all the numbers in exercises 1-4.
;
;   db (data byte, 1 byte), dw (data word, 2 bytes) 
;   dd (data double word, 4 bytes), dq (data quad-word, 8 bytes)
;
;
;   segment .data
;onea   dw  37
;oneb   dw  350
;onec   dw  -65
;oned   dw  -427
;twoa   dw  0000001010101010b
;twob   dw  1111111111101101b
;twoc   dw  Ox0101
;twod   dw  Oxffcc
;threea dw  Ox015a
;threeb dw  Oxfedc
;threec dw  Ox0101
;threed dw  Oxacdc
;foura  dd  1.375
;fourb  dd  0.041015625
;fourc  dd  -571.3125
;fourd  dd  4091.125
;
; ------------------------------------------------------------------------