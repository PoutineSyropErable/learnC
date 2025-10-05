	.file	"TooManyParameters2.c"
	.intel_syntax noprefix
	.text
	.globl	func
	.type	func, @function
func:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	DWORD PTR -28[rbp], edx
	mov	DWORD PTR -32[rbp], ecx
	mov	DWORD PTR -36[rbp], r8d
	mov	DWORD PTR -40[rbp], r9d
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -32[rbp]
	add	eax, edx
	sub	eax, DWORD PTR -36[rbp]
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
	push	119
	mov	r9d, 102
	mov	r8d, 85
	mov	ecx, 68
	mov	edx, 51 # arg
	mov	esi, 34 # arg2 
	mov	edi, 17 # arg1 
	call	func
	add	rsp, 8
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
