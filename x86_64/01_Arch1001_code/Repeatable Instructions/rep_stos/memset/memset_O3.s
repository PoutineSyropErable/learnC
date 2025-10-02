	.file	"memset.c"
	.intel_syntax noprefix
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	edx, 10
	mov	rbp, rsp
	push	r13
	push	r12
	mov	r12, rsi
	push	rbx
	sub	rsp, 8
	mov	rdi, QWORD PTR 8[rsi]
	xor	esi, esi
	call	__isoc23_strtol@PLT
	mov	rdi, QWORD PTR 16[r12]
	mov	edx, 10
	xor	esi, esi
	mov	r13, rax
	call	__isoc23_strtol@PLT
	mov	rdi, QWORD PTR 24[r12]
	mov	edx, 10
	xor	esi, esi
	mov	rbx, rax
	call	__isoc23_strtol@PLT
	movsx	rdx, ebx
	movzx	esi, r13b
	sal	rdx, 2
	movsx	r12, eax
	lea	rax, 23[rdx]
	and	rax, -16
	sub	rsp, rax
	lea	rcx, 15[rsp]
	and	rcx, -16
	mov	rdi, rcx
	call	memset@PLT
	lea	rax, [rax+r12*4]
	mov	eax, DWORD PTR [rax]
	lea	rsp, -24[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
