	.file	"TooManyParameters.c"
	.intel_syntax noprefix
	.text
	.globl	func
	.type	func, @function
func:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -48[rbp], rcx
	mov	QWORD PTR -56[rbp], r8
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, eax
	mov	rax, QWORD PTR -32[rbp]
	add	eax, edx
	mov	rdx, QWORD PTR -40[rbp]
	sub	eax, edx
	mov	rdx, QWORD PTR -48[rbp]
	add	eax, edx
	mov	rdx, QWORD PTR -56[rbp]
	sub	eax, edx
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	mov	r8d, 85
	mov	ecx, 68
	mov	edx, 51
	mov	esi, 34
	mov	edi, 17
	call	func
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
