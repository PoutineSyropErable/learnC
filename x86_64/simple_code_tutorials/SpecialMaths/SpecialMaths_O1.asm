	.file	"SpecialMaths.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbx
	mov	ebx, edi  # ebx = argc 
	mov	rdi, QWORD PTR [rsi + 8]  # rdi =  argv[1]. Still a char *. Still a memory address. Alls good
	mov	edx, 10 ; 10 in arg3? 
	mov	esi, 0  ; 0 in arg2
	; strtol(argv[1], 0, 10)
	; strtol(argv[1], NULL, 10)
	; man 3 strtol
	; nptr = number pointer. (A string which represent a number)
	; arg1 = nptr (the start of the number char)
	; arg2 = endptr : The end of the string (if a part of the string is not a number. Like "1234abc")
	; arg3 = the base (base 10), base ten here. 
	call	__isoc23_strtol@PLT
	lea	eax, [rax+rbx*2]
	pop	rbx
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
