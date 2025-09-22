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
	push	r14
	push	rbx
	sub	rsp, 120


	mov	rbx, rsi


	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	mov	r14, rax
	; r14 = argv[1]


	mov	rdi, QWORD PTR 16[rbx]
	mov	edx, 10
	mov	esi, 0
	call	__isoc23_strtol@PLT
	mov	rdx, rax
	; rdx = argv[2]


	; ==== GCC stack array zeroing and access conventions ====

	; The clear of first two and last two are just gcc conventions. I wouldn't need those
	; Clear first two ints (c[0] and c[1]) by writing a QWORD at rsp+4
	mov QWORD PTR 4[rsp], 0     ; zero 8 bytes starting at rsp+4
								; little-endian: lower 4 bytes = c[0], upper 4 bytes = c[1]

	; Clear last two ints (c[23] and c[24]) by writing a QWORD at rsp+92
	mov QWORD PTR 92[rsp], 0    ; zero 8 bytes starting at rsp+92
								; little-endian: lower 4 bytes = c[23], upper 4 bytes = c[24]

	jmp SkipExample[rip]
	; ====== Start of example access 
	; assume rsp points to the start of c[0]
	; rax = index n
	mov ecx, DWORD PTR [rsp + rax*4]  ; ecx = c[n]
	4n[rsp]

	rsp = &c[0]
	;======= End of example access
:SkipExample
	; Set destination pointer for REP STOSQ to zero middle of array (c[2]..c[22])
	lea rdi, 8[rsp]             ; rdi = &c[2], start of middle aligned block
	mov ecx, 11                  ; number of QWORD (8-byte) elements to write
	mov eax, 0                   ; value to write
	rep stosq                     ; zero 11 QWORDs (covers c[2]..c[22])
	; Faster to clear qwords n/2 times, then dwords n times
	; equivalent to: 
	rep stos qword ptr [rdi]  
	; rdi is the only acceptable value 

	; Store second input (argv[2]) into first int (c[0])
	mov DWORD PTR [rsp], edx     ; c[0] = b (second input)

	; Call function with first input (argv[1]) as argument
	mov edi, r14d                ; edi = a (first input)
	call func                     ; eax = func(a)
	; Convert return value to 64-bit for indexing
	cdqe                          ; rax = sign-extended eax
	; rax = offset. return c[rax]

	; Read value from array c using returned index
	mov eax, DWORD PTR [rsp+rax*4] ; eax = c[func(a)]
	; mov, not lea. So dereference (only lea doesn't dereference)

	; Notes:
	; - Stack layout (rsp offsets) for array c[25] (int = 4 bytes):
	;   c[0] -> rsp+0..3
	;   c[1] -> rsp+4..7 (also partially zeroed by first mov QWORD)
	;   c[2]..c[22] -> cleared by rep stosq
	;   c[23]..c[24] -> cleared by mov QWORD PTR 92[rsp],0
	; - Little-endian matters: writing a QWORD zero sets two consecutive ints at once



	add	rsp, 120
	pop	rbx
	pop	r14
	ret

	.size	main, .-main


	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
