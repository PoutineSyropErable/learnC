	.file	"nested_functions.c"
	.intel_syntax noprefix




	.text
############################
	.globl	add
	.type	add, @function
add:
	push	rbp
	mov	rbp, rsp

	# they are int32, so they take address 4. 
	# Save them on the stack to restore. But since add doesn't call something. 
#	# we could just make it a leaf function. So these two lines aren't necessary. 
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi

	
	# this does the addition and set the return value
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]
	add	eax, edx
	# the return value is eax. since it's an int

	# could do: 
	; mov eax, esi 
	; add eax, edi 



	pop	rbp
	ret

	.size	add, .-add

############################
	.globl	add_smart
	.type	add_smart, @function
add_smart: 
	push	rbp
	mov	rbp, rsp


	mov eax, esi 
	add eax, edi 
	pop	rbp
	ret

	.size	add_smart, .-add_smart


############################
	.globl	add_mega_smart
	.type	add_mega_smart, @function
add_mega_smart:
	mov eax, esi 
	add eax, edi 
	ret

	.size	add_mega_smart, .-add_mega_smart

#######
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16

	# These are from main argc, argv. Firt thing a function does is store
	# the arguments
	mov	DWORD PTR -4[rbp], edi
	mov	QWORD PTR -16[rbp], rsi

	mov	esi, 7
	mov	edi, 5
	call	add

	leave
	# leave is equiv to "
	; mov rsp, rbp 
	; pop rbp

	ret
	.size	main, .-main


#######
	.globl	main_smart
	.type	main_smart, @function
main_smart:
	push	rbp


	mov	esi, 7
	mov	edi, 5
	call	add_mega_smart

	
	mov eax, 0 # if i want to return 0
	pop rbp
	ret
	.size	main, .-main


############
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
