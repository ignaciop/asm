    segment .data
a   db      0x01
b   dw      0x0010
c   dd      0x00000100
d   dq      0x0000000000001000
e   dq      0

    segment .text
    global main
main:
    movsx   rax, byte [a] ; move value of a to rax (sign extended)
    movsx   rbx, word [b] ; move value of b to rbx (sign extended)
    movsxd  rcx, dword [c] ; move value of c to rcx (sign extended dword)
    mov     rdx, [d] ; move value of d to rdx
    add     rax, rbx ; add rbx to rax, and put the result in rax
    add     rax, rcx ; add rcx to rax, and put the result in rax
    add     rax, rdx ; add rdx to rax, and put the result in rax
    mov     [e], rax ; store rax in e