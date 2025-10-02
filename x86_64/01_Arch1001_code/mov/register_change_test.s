.intel_syntax noprefix


.section .text


.global _start # discoverable by the linker
_start:

	mov rax, 0xFFEECCDDabcd1234
	mov eax, 0x7776611
	mov ax, 0xaaaa
	mov al, 0x99
	mov ah, 0x88



    # ----- Exit -----
    mov     rax, 60          # syscall: exit
    xor     rdi, rdi         # exit code 0
    syscall


