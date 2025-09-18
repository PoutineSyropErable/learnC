	.file	"singleLocalVariable.c"
	.intel_syntax noprefix

	.text


	.globl	func
	.type	func, @function
func:
	push	rbp
	mov	rbp, rsp

	; i = 0xca11ab1e
	mov	DWORD PTR [rbp - 4], 1554098974

	; return i
	mov	eax, DWORD PTR [rbp -4]
	pop	rbp
	ret
	.size	func, .-func


	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp


	call	func

	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
