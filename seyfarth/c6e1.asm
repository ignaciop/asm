    section .data
point1 dd 1, 2 ; coordinates of point 1
point2 dd 4, 6 ; coordinates of point 2

    section .text
    global main

main:
    ; Load coordinates of point 1 into registers
    mov eax, [point1]
    mov ebx, [point1+4]

    ; Load coordinates of point 2 into registers
    mov ecx, [point2]
    mov edx, [point2+4]

    ; Subtract x-coordinates
    sub eax, ecx

    ; Square x-coordinate difference
    imul eax, eax

    ; Subtract y-coordinates
    sub ebx, edx

    ; Square y-coordinate difference
    imul ebx, ebx

    ; Add squared x and y differences
    add eax, ebx

    ; Store result in memory at address result
    mov dword [result], eax

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

    section .bss
result resd 1 ; reserve space for result