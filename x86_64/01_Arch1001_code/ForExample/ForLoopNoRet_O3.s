	.file	"ForLoopNoRet.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"i = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	push	rbx
	xor	ebx, ebx
	.p2align 4
	.p2align 3
.L2:
	mov	esi, ebx
	lea	rdi, .LC0[rip]
	
	xor	eax, eax ; eax = 0
	add	ebx, 1
	call	printf@PLT
	cmp	ebx, 10
	jne	.L2
	xor	eax, eax
	pop	rbx
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
