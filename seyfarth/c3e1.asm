    segment .data
a   times   10 dq 0
b   db      "hello world", 0

    segment .bss
c   times   5 dw 0

    segment .text
    global main         ; let the linker know about main
main:
    push    rbp         ; set up a stack frame for main
    mov     rbp, rsp    ; set rbp to point to the stack frame
    sub     rsp, 16     ; leave some room for local variable
                        ; leave rsp on a 16 byte boundary
    xor     eax, eax    ; set rax to 0 for return value
    leave               ; undo the stack frame manipulations
    ret

; In gdb, to print the 8 byte integers in hexadecimal:
; x/10xh &a
;
; In gdb, to print the 2 byte integers as unsigned value:
; p/u &c
; x/5db &c
;
; In gdb, to print the string as a string:
; x/s &b