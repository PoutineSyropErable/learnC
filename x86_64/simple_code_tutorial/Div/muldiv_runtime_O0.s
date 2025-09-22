	.file	"muldiv_runtime.c"
	.intel_syntax noprefix



	.text



	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -8[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	add	rax, 24
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	imul	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	leave
	ret

	.size	main, .-main



	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
