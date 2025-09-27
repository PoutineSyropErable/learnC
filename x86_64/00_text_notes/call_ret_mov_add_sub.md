This seems to have been deleted. Must rewrite it? 


--- 
# call: Call a function. 
fisrt, it pushes the address of the next instruction onto the stack. (used by ret)
Then change RIP to the address given in the instruction


The destination address for the target function can be specified in multiple ways. 
- Absolute address 
- Relative address (Relative to the end of the instruction, or some other register)
- Important for assembly instruction


# CALL Instruction Examples

The `call` instruction pushes the return address (next instruction) on the stack and then jumps to the target.  
Targets can be specified in multiple ways:

---

## 1. Absolute Address

```asm intel
call 0x401000        ; call function at absolute address 0x401000
```

```asm gas
call *0x401000       # * means "contents of" → absolute address
```

---

## 2. Relative Address

```asm intel
call my_function     ; assembler encodes as relative displacement
```

```asm gas
call my_function     # assembler handles relative encoding
```

---

## 3. Register Indirect

```asm intel
call rax             ; call address stored in rax
```

```asm gas
call *%rax           # note the * and % prefix
```

---

## 4. Memory Indirect

```asm intel
call [rax]           ; call address pointed to by rax
call qword ptr [rbx] ; explicit 64-bit pointer
```

```asm gas
call *(%rax)         # call address stored at [rax]
call *0x10(%rbx)     # call address stored at [rbx+0x10]
```

---

## 5. RIP-relative (x86-64 only)

```asm intel
call [rip+0x1234]    ; useful for position-independent code
```

```asm gas
call *0x1234(%rip)   # same effect
```


--- 
# Ret - Return from procedure (a function)
- Pop the top of the stack into RIP 
    - (REmember, pop implicitely increments the stack pointer, RSP. ) {Since stack grows downward. Removing from stack increase RSP}


- Pop the top of the stack into RIP and also add a constant number of bytes to RSP. 
    - In this form, the instruction is written as `ret 0x08` or `ret 0x20`, etc. 
