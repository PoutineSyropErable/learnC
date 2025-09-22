	.file	"muldiv_runtime.c"
	.intel_syntax noprefix

	.text

	.globl	main
	.type	main, @function
main:
	push	r12
	push	rbp
	push	rbx
	mov	rbp, rsi ; Weird but ok. 
	


	mov	rdi, QWORD PTR 8[rsi] # arg1
	mov	edx, 10 # arg3
	mov	esi, 0 # arg2
	call	__isoc23_strtol@PLT
	mov	r12, rax
	; r12 = strtol(argv[1], end=NULL, base=10) = atoi(argv[1]) = a;


	; rbp = rsi (due to "Weird but okay")
	mov	rdi, QWORD PTR 16[rbp] argv[2]
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	mov	rbx, rax
	; rbx = argv[2]


	
	mov	rdi, QWORD PTR 24[rbp]
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	mov	rcx, rax
	; rcx = argv[3]
	; r12 = a, rbx = b, rcx = c 

	mov	eax, ebx ; eax = b
	imul	eax, r12d ; eax = eax * r12d (with truncation)
	cdq  ; sign extand eax into edx: eax (cheap imperfect trick to avoid form1 of imul. imul ebx)
	idiv	ecx ;  eax = edx:eax / ecx ?
	; It's the reverse of div. Since it neeeds to be able to divide by/small to get small. 
	; So the input is the two registers (twice the bitlength, for overflow) and the output is one
	; eax = b / c
	
	pop	rbx
	pop	rbp
	pop	r12
	ret ; return a * b / c
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
