	.file	"MulDivExample.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	mov	eax,  0xdefec7ed ; uint64. a = defected
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]


	movabs	rdx, 0xde7ec7ab1e ; b = delectable
	imul	rax, rdx; a*= b
	mov	QWORD PTR -8[rbp], rax ; store it
	mov	rax, QWORD PTR -8[rbp] ; not needed
	movabs	rdx, 0xbb8f02e136fb90a9; note negative
	; rdx = c;
	mul	rdx ; _rdx: _rax = rdx * _rax   (_ are hardcoded. ) 
	; rax = c*a*b
	mov	rax, rdx ; 
	shr	rax, 33
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
