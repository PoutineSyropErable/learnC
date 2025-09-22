	.file	"switch.c"

	.intel_syntax noprefix




	.text

	.globl	main
	.type	main, @function
main:
	push	rbp                    # save old base pointer
	mov	rbp, rsp                 # set new base pointer
	sub	rsp, 32                 # reserve 32 bytes for local variables

	mov	DWORD PTR -20[rbp], edi  # store argc (unused)
	mov	QWORD PTR -32[rbp], rsi  # store argv (char **)

	# --- Load argv[1] and convert to integer ---
	mov	rax, QWORD PTR -32[rbp]  # rax = argv
	add	rax, 8                    # rax = &argv[1] (skip argv[0])
	mov	rax, QWORD PTR [rax]      # rax = argv[1]
	mov	rdi, rax                 # argument for atoi
	call	atoi@PLT                 # call atoi(argv[1])
	mov	DWORD PTR -4[rbp], eax    # store result of atoi in local var

	# --- Switch logic ---
	cmp	DWORD PTR -4[rbp], 0      # compare val with 0
	je	.L2                        # if val == 0, jump to case 0
	cmp	DWORD PTR -4[rbp], 1      # compare val with 1
	je	.L3                        # if val == 1, jump to case 1
	jmp	.L6                        # else, jump to default case

.L2:                                # case 0:
	mov	eax, 1                     # return value = 1
	jmp	.L5                        # jump to function epilogue

.L3:                                # case 1:
	mov	eax, 1                     # return value = 1
	jmp	.L5                        # jump to function epilogue

.L6:                                # default case (val != 0 or 1)
	mov	eax, 3                     # return value = 3

.L5:                                # function epilogue
	leave                           # restore rsp and rbp
	ret                             # return, eax holds the return value

	.size	main, .-main




	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits

