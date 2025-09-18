; ======================== main.s ========================
BITS 64

section .text
global _start

_start:
    mov rdi, 5           ; example x = 5
    call math_op         ; rax = 5*3 + 7 = 22

    ; Convert rax to string (decimal)
    mov rbx, rax         ; store value to convert
    lea rsi, [buffer + 20] ; start at end of buffer
    mov rcx, 10          ; base 10

convert_loop:
    xor rdx, rdx
    div rcx              ; rax / 10, remainder in rdx
    add dl, '0'          ; convert remainder to ASCII
    dec rsi
    mov [rsi], dl
    test rax, rax
    jnz convert_loop

    ; Add newline
    dec rsi
    mov byte [rsi], 10

    ; Compute length = end of buffer - start
    lea rdx, [buffer + 21]
    sub rdx, rsi

    ; syscall write(stdout, rsi, rdx)
    mov rax, 1
    mov rdi, 1
    mov rsi, rsi
    syscall

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall

section .bss
buffer: resb 21

