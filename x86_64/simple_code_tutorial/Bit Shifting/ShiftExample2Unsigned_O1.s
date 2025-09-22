; commented 
# commented 
; A bad write nuked my previous comments and notes on this file. So chatgpt wrote some comments and i filled int he rest

.file   "ShiftExample2Unsigned.c"
.intel_syntax noprefix
.text
.globl  main
.type   main, @function
main:
    sub     rsp, 8              ; Allocate 8 bytes on the stack (shadow space for calling conventions)

	;arg1 of strtol. placed first cause memory read passthrough
    mov     rdi, QWORD PTR 8[rsi] 
                                ; Load first argument from argv[1] into rdi
                                ; rsi points to argv array, 8[rsi] = argv[1] pointer
                                ; rdi will be used as argument to strtol

	; arg3  of strtol. 
    mov     edx, 10             ; Load base 10 (decimal) into edx for strtol 
	
	;arg2 of strtol 
    mov     esi, 0              ; Load NULL pointer (endptr) into esi for strtol
	; strtol(number_str = argv[1], end = NULL, base = 10 ); the string is null terminated before the number ends. 
	; So doesn't need to say where the number ends within the string
    call    __isoc23_strtol@PLT ; Call strtol to convert string to integer
                                ; Return value (long) in eax

    sal     eax, 3              ; Shift left arithmetic (SAL) eax by 3 → multiply by 8
                                ; Since eax is unsigned here, SAL is equivalent to SHL. SAL is always equivalent to SHL due to 
								; intels deciding to put a zero in both "instruciton". Hence same opcode. 
								; GAS prefers sal, but its the same instruction (opcode) as shl. 
								; since it fits the bit on the right with 0. 
								; TODO: Make a proof that -n < 1 = -2n. 
								; Check the ./ShiftExample2Unsigned_O1.asm. It use shl eax, 3

    shr     eax, 4              ; Shift right logical eax by 4 → divide by 16
                                ; Unsigned division, zeros filled in on the left
								; a, b, c are unsigned ints 


    add     rsp, 8              ; Restore stack pointer
    ret                         ; Return, value left in eax is the result

.size   main, .-main
.ident  "GCC: (GNU) 15.2.1 20250813"
.section .note.GNU-stack,"",@progbits

