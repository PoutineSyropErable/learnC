	.file	"IfExample2.c"
	.intel_syntax noprefix




; ======= .text section 
	.text


	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	mov	DWORD PTR -4[rbp], -1  ; a = -1 
	mov	DWORD PTR -8[rbp],  2  ; b = -2

	mov	eax, DWORD PTR -4[rbp] ; eax = a; 
	cmp	eax, DWORD PTR -8[rbp] ; comp a, b; 
	jne	.L2 ; jump if a != b  to L2; 
	mov	eax, 1 ; Else (if a == b), then eax = 1
	jmp	.L3 ; return 1. 
.L2: ; (if a!=b)
	mov	eax, DWORD PTR -4[rbp] ; eax = a 
	cmp	DWORD PTR -8[rbp], eax ; comp b, a
	jnb	.L4 ; jnb ( if not < (unsinged))
	; if b not < a 
	; if b >= a; if a<= b
	mov	eax, 2
	jmp	.L3 ; return 2
; ====== SINCE WE ALREADY DID AN EQUAL COMPARAISON, IT'S AN ACCEPTABLE 
; COMPILER 'BUG' to use <= and >= when the C code say < and >. 
.L4:
	mov	eax, DWORD PTR -4[rbp] ; eax = a 
	cmp	eax, DWORD PTR -8[rbp] ; comp a, b; 
	jnb	.L5 ; if a not < b ; if a >= b; 
	mov	eax, 3 ; return 3
	jmp	.L3
.L5:
	mov	eax, -553736211 ; 0xdefea7ed
; return section of the code
.L3:
	; no need for : mov rsp, rbp. (rsp wasn't changed)
	pop	rbp
	ret
	.size	main, .-main



	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
