	.file	"BooleanBecause.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	mov	DWORD PTR -4[rbp], 20698  	# unsigned int i = 0x50da;
	mov	DWORD PTR -8[rbp], 12648430	# unsigned int j = 0xc0ffee;


	#moveabs is for: reg = 64bit immediate. (since other wise it wouldn't fit)
	movabs	rax, 8703490789869 #	 uint64 k = 0x7ea707a11ed;
	mov	QWORD PTR -16[rbp], rax    



	mov	eax, DWORD PTR -4[rbp] # eax = i 
	and	eax, DWORD PTR -8[rbp] ; eax = i and j 
	not	eax ; eax = not (i and j)
	or	eax, 502528 ; eax = (not (i and j) ) or  0x7ab00;
	mov	eax, eax    ;  nop : compiler artefact
	xor	QWORD PTR -16[rbp], rax ; k ^= eax. 
	mov	rax, QWORD PTR -16[rbp] ; eax = k

	# not need for mov rsp, rbp. Since rsp wasn't changed
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
