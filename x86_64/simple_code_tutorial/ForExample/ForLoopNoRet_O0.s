	.file	"ForLoopNoRet.c"
	.intel_syntax noprefix


	.section	.rodata
.LC0:
	.string	"i = %d\n"



# ====== Text section ====== 
	.text



	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16

	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	lea	rdx, .LC0[rip] 
	; This just did 
	; moveabs rdx, .LCO
	; === Explanation ===
	; .rodata, .text. 
	; .rodata is usually* right before the .text. So to obtain .rodata, using relative is fine.
	; relative are faster then far absolute 64 bits addressing. And lea allows relative to registers. 
	; So, using a relative 32 bits from rip is faster. Otherwise you'd need moveabs, which is slower
	; Furthermore, the assembler is smart enough to "cheat" and do more then written. 
	; lea rdx .LABEL[rip]: does lea [rip + (.LABEL - rip)] 
	; where .LABEL - rip is hard coded by the assembler.  (Because it's in the same asm file. So same object file)
	; If it came from another file, then it's the linker's just to hardcode .LABEL - rip. 
	mov	esi, eax; arg2 = 0
	mov	rdi, rdx ; arg1 = "i = %d\n"
	mov	eax, 0
	; printf is a variadic function, it can take a variable number of argument. 
	; For variadic functions, the number of floating-point arguments passed in XMM registers must be indicated in AL (eax lower 8 bits).
	; The ABI requires: 
	; AL = number of SSE (floating-point) registers used for arguments
	; The format string tells it how many integers to consume. Count the number of %d. 
	; if it pass 6, then you can check the stack. 
	; BTW, on the stack, pass all extra ints first, then all extra float first
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -4[rbp], 9
	jle	.L3
	sub	DWORD PTR -4[rbp], 1

	# return 0
	mov	eax, 0
	leave
	ret

	.size	main, .-main



	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
