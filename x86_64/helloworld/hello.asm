; hello.asm
global _start        ; entry point for the linker

section .data
msg db "Hello, World!", 10  ; string with newline
<<<<<<< HEAD
; db is for declare byte
; 10 is for the newline.
len equ $ - msg              ; length of the string
; equ = equate. it's like #declare. 

my_array8 db 2, 4, 6, 8, 10    ; 5 integers, 1 byte each
my_array16 dw 2, 4, 6, 8, 10   ; 5 integers, 2 bytes each
my_array32 dd 2, 4, 6, 8, 10   ; 5 integers, 4 bytes each
my_array64 dq 2, 4, 6, 8, 10   ; 5 integers, 8 bytes each



section .text
_start:
=======
len equ $ - msg              ; length of the string

section .text
_start:
	mov rax, 1
    ; write(1, msg, len)
>>>>>>> 217bcf8c3f95e9c6be40772d339326056bc92f9d
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

