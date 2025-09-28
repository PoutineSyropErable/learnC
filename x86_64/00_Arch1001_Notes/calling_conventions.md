

Calling conventions have 2 elements: 
- Register conventions for which register belong to the caller vs callee. 
- parameter passing conventions. 


both are compiler dependent. 


Microsoft x64 abi, and the System V "x86_64" abi (the only two talking about in the class)

----

# Caller Saved (In Main, before/after call)

- Visual Studio   : RAX, RCX, RDX, R8, R9, R10, R11 
### Microsoft parameters: rcx: arg1, rdx: arg2, R8: arg3, r9: arg4, r5+: Pushed to stack

- GCC             : RAX, RDI, RSI, RDX, RCX, R8, R9, R10, R11

 -                        1 ,  2 ,  3 ,  4 , 5 ,  6   vvv
 ### GCC Arg Input Registers: RDI, RSI, RDX, RCX, R8, R9, "pushed on stack"
 ### GCC Ouput Registers: RAX, (possibly RDX) RDX:RAX for HIGH:LOW, for an int128 for example. But can use it for return values of 
  ```int64[2]``` 
 ### like a struct

 #### So the caller must save and the argument registers (inverse of mips)


## Called "Volatile" registers: The caller should assume they will be changed by the callee. 
## These registers belong to the callee
## The caller is in charged of saving before call, and restoring after call

; for easy <leader>FG ;
ARG1: RDI: 1 
ARG2: RSI: 2 
ARG3: RDX: 3 
ARG4: RCS: 4 
ARG5: R8: 5 
ARG6: R9: 5 
ARG7: STACK 
ARG8+: STACK
; for easy <leader>FG ;

| ------------- |
| Item1 |
| Item2 |
| Item3 |
| Item4 |

#### RSP is special: It's both callee and caller saved.


# Callee Saved (Start/end of myfunc)

- Visual Studio: RBX, RBP, RDI, RSI, R12-R15
- GCC: RBX, RBP, R12-R15

## Called "Non-Volatile" registers: The caller should assume they will not be saved by the callee
## These registers belong to the caller
## If the callee needs more register then are saved by the caller, it needs to save these. 



```asm
myfunc:
    ; ---- Prologue ----
    push    rbp             ; save base pointer
    mov     rbp, rsp        ; set new stack frame
    push    rbx             ; save callee-saved register
    push    r12             ; save callee-saved register
    ;rbp stays on top, while every push moves rsp down. 
    ; rbp high address. 
    ; rsp low address

    ; ---- Function body ----
    ; Arguments: rdi = arg1, rsi = arg2, rdx = arg3
    ; Example: return arg1 + arg2 + arg3
    mov     rax, rdi        ; rax = arg1
    add     rax, rsi        ; rax += arg2
    add     rax, rdx        ; rax += arg3

    ; ---- Epilogue ----
    pop     r12             ; restore saved registers
    pop     rbx
    mov     rsp, rbp        ; restore stack pointer
    pop     rbp             ; restore base pointer
    ret                     ; return to caller



main:
    ; caller wants to preserve rdi and rsi
    push rdi       ; save current rdi . (push arg1)
    push rsi       ; save current rsi   (push arg2)
    # right to left. pushes (see ./32bit_calling_conventions.md)

    ; set arguments for function
    mov rdi, 1     ; arg1
    mov rsi, 2     ; arg2
    mov rdx, 3     ; arg3 (optional, if needed)
    call myfunc    ; rax = return value

    ; restore old values
    pop rsi
    pop rdi
    ; rax still holds the return value

    ; pseudo line of code
    exit 0 


```

----

<!-- For which are saved by what, in gcc, i can do like with mips.  -->

<!-- save rbp, and then the modified register in function start:  -->

```asm
myfunc:
    push rbp            ; optional, if you want a frame pointer
    mov rbp, rsp
    push r12            ; save callee-saved if you’ll change it
    push r13

    ; do stuff, use caller-saved freely

    pop r13
    pop r12
    pop rbp
    ret

main: 
    call myfunc

```

RAX, RDI, RSI, RDX, RCX, R8, R9, R10, R11. They are calleer saved. 
They are (NON VOLATILE) registers. 
The callee saves the registers (aka, myfunc). store start of functions, pop/restore end of function. 
Like the s0-s8 in MIPS.

callers saves r12–r15: Store before function, restore after the function. 
r12-r15 are the temporary saved registers. They are VOLATILE registers. 
If you want to preserve their value, you must save them before the function call, and restore them before call. 
Like the t0-t8 in MIPS




