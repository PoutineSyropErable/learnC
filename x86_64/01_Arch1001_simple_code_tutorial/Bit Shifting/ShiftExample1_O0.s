; commented 
# commented
	.file	"ShiftExample1.c"
	.intel_syntax noprefix

	.text


	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 5 ; int a  = 5; 
	mov	eax, DWORD PTR -4[rbp] ; eax = a
	
	sal	eax, 4 ; arithmetic shift left.  
	; a << 4; 
	mov	DWORD PTR -8[rbp], eax ; b = a << 4; 
	mov	eax, DWORD PTR -8[rbp] ; eax = b; 
	shr	eax, 3 ; logical shift right    ; eax = b >> 3; 
	mov	DWORD PTR -12[rbp], eax         ; c =  b >> 3;

	mov	eax, DWORD PTR -12[rbp]         ; eax = c (redundant, already c)
	pop	rbp 				; return c ( c = b >> 3; = a << 4 >> 3)
	ret
	.size	main, .-main


	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
