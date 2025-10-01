.intel_syntax noprefix

.extern my_number 
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

# Integer arrays
int_arr:       .long 1, 2, 3          # 3 x int32
short_arr:     .short 10, 20, 30     # 3 x int16
long_arr:      .quad 100, 200, 300   # 3 x int64

# Floating-point arrays
float16_arr:   .short 0x3C00, 0x4000, 0x4200  # FP16 values as 16-bit shorts
float32_arr:   .float 1.0, 2.0, 3.0
float64_arr:   .double 1.5, 2.5, 3.5

# Char/byte array
char_arr:      .byte 'H','e','l','l','o',0   # null-terminated string
len_char_arr:  .long 6                         # optional length

# ==========================================
# Section: Read-only initialized data (.rodata)
# ==========================================
.section .rodata
.align 8

# .string goes in read only
ro_str:        .string "Read-only string example"
int_arr_ro:    .long 11, 22, 33
float32_arr_ro:.float 1.1, 2.2, 3.3
float64_arr_ro:.double 4.4, 5.5, 6.6

# ==========================================
# Section: Uninitialized data (.bss)
# ==========================================
.section .bss
.align 8

int_arr_bss:      .skip 3*4       # 3 x int32
short_arr_bss:    .skip 3*2       # 3 x int16
long_arr_bss:     .skip 3*8       # 3 x int64
float16_arr_bss:  .skip 3*2       # 3 x FP16
float32_arr_bss:  .skip 3*4       # 3 x float32
float64_arr_bss:  .skip 3*8       # 3 x float64
char_arr_bss:     .skip 10        # 10-byte buffer for chars

# ==========================================
# Section: Code (.text)
# ==========================================
.section .text
.global _start # discoverable by the linker

_start:
    # ----- argc / argv demonstration -----
    mov     rax, [rsp]       # rax = argc
    mov     rbx, [rsp+8]     # rbx = argv[0]
    mov     rcx, [rsp+16]    # rcx = argv[1] (if present)

    # ----- Example: use a string from .data -----
    lea     rdi, [char_arr]  # rdi = address of string (arg1)
    mov     rsi, 6           # length                  (arg2)
    mov     rdx, 1           # file descriptor stdout  (arg3)
    mov     rax, 1           # syscall: write          (arg4)
    syscall
	; write(char_arr, 6, stdout)
	; write("Hello World", 6, stdout)

    # ----- Exit -----
    mov     rax, 60          # syscall: exit
    xor     rdi, rdi         # exit code 0
    syscall







