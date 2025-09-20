	.file	"hello.c"
	.intel_syntax noprefix


; .text here is just an assembly/compiler bug. Manually, you'd remove it. 
	.text
	.section	.rodata
.LC0:
	.string	"Hello world!"
	.text


	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT


	mov	eax, 4660
	pop	rbp
	ret


	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
