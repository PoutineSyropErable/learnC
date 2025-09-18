; hello.asm
global _start        ; entry point for the linker

section .data
msg db "Hello, World!", 10  ; string with newline
len equ $ - msg              ; length of the string

section .text
_start:
	mov rax, 1
    ; write(1, msg, len)
    mov rax, 1      ; syscall number 1 = write
    mov rdi, 1      ; file descriptor 1 = stdout
    mov rsi, msg    ; pointer to string
    mov rdx, len    ; length of string
    syscall         ; invoke syscall

    ; exit(0)
    mov rax, 60     ; syscall number 60 = exit
	mov rdi, 0
    xor rdi, rdi    ; exit code 0, faster
    syscall

