; hello3.asm

section .data
    msg     db      "hello, world", 10, 0

section .bss

section .text
    global main

main:
    mov     rax, 1      ; 1 = write
    mov     rdi, 1      ; 1 = to stdout
    mov     rsi, msg    ; string to display in rsi
    mov     rdx, 13     ; length of the string, without 0
    syscall
    mov     rax, 60     ; 60 = exit
    mov     rdi, 0      ; 0 = success exit code
    syscall             ; quit