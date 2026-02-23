section .data
    msg db 'oi mundo', 0xA
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1 ; rax vai ser igual a 1.
    ; Igual a 1 pq é o número da syscall write (escrever)
    mov rdi, 1 ; rdi vai ser igual a 1 (1 = ecrã) | (onde escrever = ecrã)    
    mov rsi, msg ; rsi = msg | msg = 'oi mundo' | RSI é o registrador que guarda operações com strings e memória.
    mov rdx, len ; rdx = len | len = length da mensagem | O syscall precisa saber quantos bytes vai ler!
    syscall ; syscall write(1, msg, len)

    ; syscall exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
