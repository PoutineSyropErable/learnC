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

**Intel**
```asm 
call 0x401000        ; call function at absolute address 0x401000
```

**Gas**
```asm gas
call *0x401000       # * means "contents of" → absolute address
```

---

## 2. Relative Address

**Intel**
```asm intel
call my_function     ; assembler encodes as relative displacement
```

**Gas**
```asm gas
call my_function     # assembler handles relative encoding
```

---

## 3. Register Indirect

**Intel**
```asm intel
call rax             ; call address stored in rax
```

**Gas**
```asm gas
call *%rax           # note the * and % prefix
```

---

## 4. Memory Indirect

**Intel**
```asm intel
call [rax]           ; call address pointed to by rax
call qword ptr [rbx] ; explicit 64-bit pointer
```

**Gas**
```asm gas
call *(%rax)         # call address stored at [rax]
call *0x10(%rbx)     # call address stored at [rbx+0x10]
```

---

## 5. RIP-relative (x86-64 only)

**Intel**
```asm intel
call [rip+0x1234]    ; useful for position-independent code
```

**Gas**
```asm gas
call *0x1234(%rip)   # same effect
```


---
# dissassembly and Object Dumps

## Stdlib
In dissassembly, you might see stuff related to main for call like printf and other stdlib.so 
if position independant code (pie), which is default. 
The jump table might be near to main. 

So, `call printf`, might be 
```asm
call   main+0xf23    ; really a PLT entry that will jump to printf@plt
```

## Stub
or it might be a compiler helper stub, like: 

Modern compilers sometimes generate internal blocks of code (like __stack_chk_fail stubs, or tail calls) inside the same function.
The disassembler has no name for that address, so it prints it relative to the nearest symbol, which is main.


## Dissassembler Heuristic
Tools like objdump and gdb will print the closest known symbol + offset if no exact symbol matches.
So:

```asm 

call   0x401f23

; might be rended as 

call   main+0xf23

```


---
---
--- 
# Ret - Return from procedure (a function)
- Pop the top of the stack into RIP 
    - (REmember, pop implicitely increments the stack pointer, RSP. ) {Since stack grows downward. Removing from stack increase RSP}


- Pop the top of the stack into RIP and also add a constant number of bytes to RSP. 
    - In this form, the instruction is written as `ret 0x08` or `ret 0x20`, etc. 


---- 
---- 
# INTEL (Nasm) vs AT&T (GAS): 

## Intel: Destination <- Source 
Notes:
- Windows: Think algebra or C:    y = 2x + 1; 
- mov rbp, rsp  ; rbp := rsp (set rbp to rsp)
- add rsp, 0x14 ; (rsp += 0x14)

## AT&T: Source(s) -> Destination 

Notes:
- Unix/GNU. Think elementary school: 1 + 2 = 3 
- mov %rsp, %rbp .   rsp =: rbp. (Must read left to right, inverse, arabic)
- add $0x14 %rsp  
    - `comp %rsp, %rbp`
    - `jle ; (rsp =< rbp)`  {read, rbp <= rsp. Left to right}. 
    - Registers get a %prefix, and immediates get a $ 
    - Address get nothing in front of them 

```asm 
; GAS
mov %rsp, %rbp    # rbp := rsp
add $0x14, %rsp   # rsp := rsp + 0x14
cmp %rsp, %rbp    # compare rbp - rsp
jle .L1           # jump if (rbp <= rsp)


GAS: 
disp(base, index, scale)

INTEL: 
[ base + index*scale + disp ]


```


