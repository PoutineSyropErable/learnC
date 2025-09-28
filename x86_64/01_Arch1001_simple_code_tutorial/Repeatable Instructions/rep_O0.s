	.file	"rep.c"
	.intel_syntax noprefix
	.text
	.globl	func
	.type	func, @function
func:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	func, .-func



	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	add	rsp, -128
	mov	DWORD PTR -116[rbp], edi
	mov	QWORD PTR -128[rbp], rsi
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	edx, 10
	mov	esi, 0
	mov	rdi, rax
	call	__isoc23_strtol@PLT
	mov	DWORD PTR -4[rbp], eax
	lea	rdx, -112[rbp]
	mov	eax, 0
	mov	ecx, 12
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	eax, DWORD PTR -4[rbp]
	mov	edi, eax
	call	func
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
