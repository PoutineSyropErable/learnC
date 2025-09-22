	.file	"switch.c"

	.intel_syntax noprefix


	.text



	.globl	main
	.type	main, @function
main:
	sub	rsp, 8

	; rdi = argv[1]
	mov	rdi, QWORD PTR [rsi + 8] (arg1)
	mov	esi, 0  ; Null    (arg2)
	mov	edx, 10 ; base 10  (arg3)
	call	__isoc23_strtol@PLT ;  strtol(argv[1], NULL, 10)
	; eax = strtol(argv[1], NULL, 10); 
	; eax = atoi(argv[1]); (type: int)

	cmp	eax, 2 ; case 2
	sbb	eax, eax ; substract with borrow. 
	; set eax = 0 if CF=0, else -1
	# GCC uses sbb to generate a bitmask for conditional value
	
	and	eax, -2                     # mask eax with 0xFFFFFFFE
	add	eax, 3                     # add 3, now eax holds correct return value
	# This sequence replaces:
	# if (val == 0 || val == 1) return 1; else return 3;
	# GCC turned it into arithmetic instead of explicit branches.


	add	rsp, 8
	ret

	.size	main, .-main



	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits


; 0->0 : 0 : 0  
; 1->1: 1 :  1 
; 2->2: 2  : 10 
; 3 -> 11 
; 4 -> 100 
; 16 -> 1 0000 
; 15 -> 1111 : F 
;
; 7 ->		0111 
; 8 ->	 	1000 
; a -> 10:	1010 
; b -> 11: 	1011 
; c -> 12: 	1100 	 


; If the first (left most hex) is >=8, then it's a negative number
; And in binary, negative number gets toward -infinity when the other bits goes to 0. 
; So negative and negative comparaison is the same as positive and positive. 
