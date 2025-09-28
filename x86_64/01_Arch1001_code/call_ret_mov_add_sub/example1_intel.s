.file "example1.c"

.intel_syntax noprefix

.text

# --- func symbol ---
.globl func
.type func, @function
func:
    push rbp
    mov rbp, rsp
    mov eax, 48879
    pop rbp
    ret
.size func, .-func

# --- main symbol ---
.globl main
.type main, @function
main:
    push rbp
    mov rbp, rsp
    call func
    mov eax, 61453
    pop rbp
    ret
.size main, .-main

# --- _start symbol ---
.globl _start
.type _start, @function
_start:
    push rbp
    mov rbp, rsp
    push rbx
    sub rsp, 16
    call main
    mov DWORD PTR -12[rbp], eax
    mov edx, DWORD PTR -12[rbp]

#APP
# 14 "example1.c" 1
    movl edx, %ebx
    movl $1, %eax
    int $0x80
# 0 "" 2
#NO_APP

    nop
    mov rbx, QWORD PTR -8[rbp]
    leave
    ret
.size _start, .-_start

.ident "GCC: (GNU) 15.2.1 20250813"

.section .note.GNU-stack,"",@progbits

