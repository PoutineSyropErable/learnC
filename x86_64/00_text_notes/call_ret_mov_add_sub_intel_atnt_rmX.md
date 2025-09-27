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



```


---
---
# rm/X
means 

rm/8, r/m16, r/m32, r/m64. 

r/mX: a register of size X, or read X bits at an address. 
Memory to memory operations aren't allowed! 


Immediate aren't part of r/mX!
The total is: (r/mX or Immediate). = {Registers} + {Memory Address} + {Immediate}


```asm 

GAS: 
disp(base, index, scale)

INTEL: 
[ base + index*scale + disp ]

; scale can be 1,2,4,8 
; disp can be 1byte value: (0-255), or a 4byte value: (0-2^32)


```

**Immediate to memory**:
```asm
; Intel syntax
mov [rbx], imm32 ;  *rbx = imm32
mov [rbx + rcx*X], imm32      ; X can be 1,2,4,8 
*(rbx + rcx*X) = imm32
mov [rbx + rcx*X + Y], imm32  ; Y can be whatever. (max 32 bits immediate)
*(rbx + rcx*X + Y) = imm32

; Both X and Y aren't variables. They must be hardcoded. 
; Y would be useful to access struct_list[5].banana_count
; Though it would only work for a struct of 64 bits max size (scale = 8)




```

**Immediate to register**: 
```asm
; Intel syntax
mov rbx, imm64 
mov ebx, imm32 
mov bx,  imm16
mov bl, imm8  ; every register has an accessible *l (bl here) (low)
mov bh, imm8 ; rbx has an accessible *h (bh here) (high)

; obviously, an imm8 can be put into bx. And smaller immediate can be put into bigger registers. It will just extend the value. 

; The mov extension doesn't care about sign. It does 0 extension. 
mov bl, 0xff 
; rax = 0x000(bunchs of zeros)ff 

; There is a movesx, and movezx for sign and 0 extension. 
; But these don't allow immediates

```

**Register to memory**: 
```asm 
mov [rbx], rax 
mov [rbx + rcx*X], rax 
mov [rbx + rcx*X + Y], rax 

```



**Memory to register**: 
```asm 
mov rax, [rbx],  
mov rax, [rbx + rcx*X] 
mov rax, [rbx + rcx*X + Y]

```

Note: There's nothing special about the registers chosen above


----
Note: It's dumb to say r/mX or a register
----
# Add and SUB 
Add and substract, as espected. 
    - Destination can be an r/mX 
    - Source can be an r/mX or an immediate

## **Again, can't have memory to memory**


```asm 
.intel_syntax noprefix

add rsp, 8 ; -> rsp = rsp + 8;
sub rax, [rbx*2] ; -> rax -= *(rbx *2);
; Note the sub rax, [rbx*2] is not the proper form. It wouldn't work




```


---- 
# When using memory address, in Intel, you must have a Xword/byte ptr, and in AT&T, the instruction name changes

```asm 


; Comments on ptr forms. POINTER forms. Pointer forms. 
; Xword ptr. xword ptr. (<leader>fg search points) 
; Here are the proper forms
sub rax, qword ptr [rbx*2]   ; 64-bit subtraction
sub eax, dword ptr [rbx*2]   ; 32-bit subtraction, zero-extends to rax
sub ax, word ptr [rbx*2]     ; 16-bit subtraction
sub al, byte ptr [rbx*2]     ; 8-bit subtraction



sub rax, word ptr [rbx*2]   ; 64-bit subtraction
; Is acceptable. It will sub rax with a 16bits number at rbx*2, and 0 extend it to 64 bits
; Like masked substraction

```


