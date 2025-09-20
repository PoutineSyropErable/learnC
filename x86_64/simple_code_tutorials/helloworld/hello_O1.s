	.file	"hello.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello world!"
	.text
	.globl	main
	.type	main, @function
main:
	sub	rsp, 8
	lea	rdi, .LC0[rip]
	call	puts@PLT
	mov	eax, 4660
	add	rsp, 8
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
