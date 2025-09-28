	.file	"switch.c"
	.intel_syntax noprefix
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	sub	rsp, 8
	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	xor	esi, esi
	call	__isoc23_strtol@PLT
	cmp	eax, 2
	sbb	eax, eax
	add	rsp, 8
	and	eax, -2
	add	eax, 3
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
