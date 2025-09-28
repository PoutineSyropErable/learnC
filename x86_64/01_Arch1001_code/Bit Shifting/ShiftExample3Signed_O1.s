	.file	"ShiftExample3Signed.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	sub	rsp, 8

	mov	rdi, QWORD PTR 8[rsi]
	; argv[1]; 
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	; strtol(str=argv[1], end= NULL, base = 10)
	; int_val = strtol(... )
	; returned a long, wrote to rdx 


	lea	edx, 0[0+rax*8] ; lea    edx,[rax*8+0x0]
	; edx = eax * 8
	; edx = int_val * 8
	; edx = b = a * 8;


	; this is all for doing division toward 0, not infinity.  
	lea	eax, 15[rdx] ; rdx + 15
	; eax = edx + 15;  (We'll be dividing by 16, so add 15)
	test	edx, edx ; is the rightmost bit of edx 0; 

	cmovns	eax, edx ; 	
	; if it's negative, eax = edx (b) + 15; 
	; if it's positive, eax = edx (b); 
	; vv the actual division code vv 
	sar	eax, 4 ;(divide by 16)

	add	rsp, 8
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits


