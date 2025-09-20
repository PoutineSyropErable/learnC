	.file	"GotoExample.c"


	.intel_syntax noprefix

	.text
	.section	.rodata
.LC0:
	.string	"goto ftw!"



	.text


	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	nop
.L2:
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, -1340212530
	pop	rbp
	ret

	.size	main, .-main

	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
