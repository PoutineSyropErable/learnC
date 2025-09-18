.intel_syntax noprefix
.text
.global _start
.type _start, @function

_start:
    mov rdi, 5
    call math_op           # rax = 5*3 + 7 = 22

    # Convert rax to string
    mov rbx, rax
    lea rsi, [buffer + 20]
    mov rcx, 10

convert_loop:
    xor rdx, rdx
    div rcx
    add dl, '0'
    dec rsi
    mov [rsi], dl
    test rax, rax
    jnz convert_loop

    # Add newline
    dec rsi
    mov byte ptr [rsi], 10

    # Compute length = buffer_end - rsi
    lea rdx, [buffer + 21]   # end of buffer
    sub rdx, rsi

    mov rax, 1               # syscall write
    mov rdi, 1               # stdout
    syscall

    # exit
    mov rax, 60
    xor rdi, rdi
    syscall

.size _start, .-_start

.section .bss
buffer: .space 21

