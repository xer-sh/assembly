section .data
    c1 db '1 - Somar', 0xA
    len1 equ $ - c1
    c2 db '2 - Subtrair', 0xA
    len2 equ $ - c2
    c3 db '3 - Multiplicar', 0xA
    len3 equ $ - c3
    c4 db '4 - Dividir', 0xA
    len4 equ $ - c4
    prompt db 'Escolha: '
    len_prompt equ $ - prompt

section .bss
    choice resb 64
    n1 resb 64
    n2 resb 64
    resultado resb 64 0xA

section .text
    global _start
    global somar

_start:
    ; out
    mov rax, 1
    mov rdi, 1
    mov rsi, c1
    mov rdx, len1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, c2
    mov rdx, len2
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, c3
    mov rdx, len3
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, c4
    mov rdx, len4
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, len_prompt
    syscall

    ; in
    mov rax, 0
    mov rdi, 0
    mov rsi, choice
    mov rdx, 64
    syscall 

    mov rax, [choice]
    cmp rax, '1'
    je somar


somar:
    mov rax, 0
    mov rdi, 0
    mov rsi, n1
    mov rdx, 64
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, n2
    mov rdx, 64
    syscall

    mov rax, [n1]
    sub rax, 48
    mov rbx, [n2]
    sub rbx, 48
    add rax, rbx
    add rax, 48
    mov [resultado], rax

    mov rax, 1
    mov rdi, 1
    mov rsi, resultado
    mov rdx, 64
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
