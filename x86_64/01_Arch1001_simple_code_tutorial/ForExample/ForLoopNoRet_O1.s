	.file	"ForLoopNoRet.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 8
	mov	ebx, 0
	lea	rbp, .LC0[rip]
.L2:
	mov	esi, ebx
	mov	rdi, rbp
	mov	eax, 0
	call	printf@PLT
	add	ebx, 1
	cmp	ebx, 10
	jne	.L2
	mov	eax, 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
