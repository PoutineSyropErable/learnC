	.file	"switch.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	sub	rsp, 8
	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	cmp	eax, 2
	sbb	eax, eax
	and	eax, -2
	add	eax, 3
	add	rsp, 8
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
