.intel_syntax noprefix


.section .text
.global _start # discoverable by the linker

_start:
    # ----- argc / argv demonstration -----

	# mov al, 0xff
	#check rax value
	#  mov al, 0x05
	#check rax value


	mov ecx, 0xC0000080
	rdmsr  
	# Should get an execption: Priviledged instruction


    # ----- Exit -----
    mov     rax, 60          # syscall: exit
    xor     rdi, rdi         # exit code 0
    syscall

