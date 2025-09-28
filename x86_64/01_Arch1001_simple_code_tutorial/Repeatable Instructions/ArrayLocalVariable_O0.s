	.file	"ArrayLocalVariable.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	mov	WORD PTR -2[rbp], -17730
	movabs	rax, 838145254671192077
	mov	QWORD PTR -16[rbp], rax
	movsx	eax, WORD PTR -2[rbp]
	mov	DWORD PTR -44[rbp], eax
	mov	eax, DWORD PTR -44[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -16[rbp]
	add	eax, edx
	mov	DWORD PTR -32[rbp], eax
	mov	eax, DWORD PTR -32[rbp]
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
