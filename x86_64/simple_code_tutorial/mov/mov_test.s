.intel_syntax noprefix

# this number is accessible here, but it is defined in another asm file. 
# put other .extern here
# the other files must have .global this symbol in .data, .rodata, .bss  
# or (.text ?). 
# can't have two different file define a symbol, and one or both of them .global it. 
# if it's .global, it can only be defined there. 
# so the master .global the symbol 
# and the slaves just use it. optionally, they can add .extern if the assembler is strict
# it might help the programmer too, for visibility to know this is in another file

# ==========================================
# Section: Writable initialized data (.data)
# ==========================================
.section .data
.align 8


# ==========================================
# Section: Read-only initialized data (.rodata)
# ==========================================
.section .rodata
.align 8


# ==========================================
# Section: Uninitialized data (.bss)
# ==========================================
.section .bss
.align 8

# ==========================================
# Section: Code (.text)
# ==========================================
.section .text
.global _start # discoverable by the linker

_start:
    # ----- argc / argv demonstration -----

	# mov al, 0xff
	#check rax value
	#  mov al, 0x05
	#check rax value

	mov rax, 0x8C3F47BF4A90CDD5
	mov cl, 0x07
	mul cl

	mov bl, 0xff


    # ----- Exit -----
    mov     rax, 60          # syscall: exit
    xor     rdi, rdi         # exit code 0
    syscall








