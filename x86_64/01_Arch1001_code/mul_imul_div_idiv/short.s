.intel_syntax noprefix


.section .text
.global _start # discoverable by the linker

_start:
    # ----- argc / argv demonstration -----

	# mov al, 0xff
	#check rax value
	#  mov al, 0x05
	#check rax value

	mov r8, 0xA98E4D28D55179B5
	mov r11b, 0xD7
	imul r11b, r8b

    # ----- Exit -----
    mov     rax, 60          # syscall: exit
    xor     rdi, rdi         # exit code 0
    syscall

