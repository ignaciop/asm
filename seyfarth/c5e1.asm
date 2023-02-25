    segment .data
a   dq      0x00000001
b   dq      5
c   dq      -7
d   dq      -9

    segment .text
    global main
main:
    mov rax, [a] ; move value of a to rax
    mov rbx, [b] ; move value of b to rbx
    mov rcx, [c] ; move value of c to rcx
    mov rdx, [d] ; move value of d to rdx
    add rax, rbx ; add rbx to rax, and put the result in rax
    add rax, rcx ; add rcx to rax, and put the result in rax
    add rax, rdx ; add rdx to rax, and put the result in rax
    xor rax, rax