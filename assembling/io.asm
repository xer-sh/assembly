section .bss
    buffer resb 64
    len equ $ - buffer

section .text
    global _start

_start:
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, buffer
    mov rdx, 64
    syscall 

    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, len
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall 
