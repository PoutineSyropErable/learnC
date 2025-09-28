	.file	"BitmaskExample.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp

	mov	DWORD PTR -4[rbp],  0x1301 # int a = 0x1301; 
	mov	DWORD PTR -8[rbp],  0x100  # int b = 0x0100; 
	mov	eax, DWORD PTR -4[rbp]     # eax = a; 
	and	eax, DWORD PTR -8[rbp]     # eax = a & b ; 
	test	eax, eax               # check if eax is 0 (-O0 stupid artefact)
	je	.L2                        # jump l2 if (a&b) = 0 { ! (a & b) }
    # ^ else case 
	mov	eax, 0x70dd1e              # if a & b
	jmp	.L3                        # return 0x7ddle
.L2:
	mov	eax, 0x707                 # else case. (with .L3, return 0x707)
.L3:
	pop	rbp
	ret

	.size	main, .-main




	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
