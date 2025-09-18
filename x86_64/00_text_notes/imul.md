

r/m8: 8 bit register or 8 bit [memory]. 
immediate : imm8 aren't part of an r/m8. 

full = r/m8 Union imm8

imul: For ints (signed) [And other signed integers representation of different types]
mul: for size_t (unsigned)


---
# First form of imul

-opb, opw, opd, opq are made up instruction which works on 

imul r/m8    | AX = AL * r/m8
```asm

    mov al, 5
    mov bl, 3
    imul bl         ; AX = AL * BL = 15
                    ; AH:AL = AL * BL = 15 ^^(equiv form with previous notation)
                    ; since AX = AH:AL
    opb al          ; use 8-bit Al (Low) (result lives here)
    opw ax          ; use 16-bit AX (result lives here)
    ; since x*y is a bigger number, need b(x) + b(y) bits.


```

imul r/m16   | DX:AX = AX * r/m16 
```asm
    mov ax, 5
    mov bx, 3
    imul bx         ; DX:AX = AX * BX = 15
    opw ax          ; lower 16 bits (AX = 15)
    opw dx          ; higher 16 bits (DX = 0)
    ; The result is stored accross two register. 
    ; DX: High word, AX: Low word

    ; to use both: 
    mov ecx, eax    ; move AX (implicitly zero-extends to 32-bit)
    shl edx, 16     ; shift DX left by 16 bits to occupy the high 16 bits
    or ecx, edx     ; combine them
    opd ecx         ; operate on full 32 bits result

    ; Or to put it in eax
    shl edx, 16 
    or eax, edx
    opd eax


    ; All in one
    mov ax, 5 
    mov bx, 3 
    imul bx 
    ; opw ax    ; if you want a quick 16 bit result

    shl edx, 16 
    or eax, edx
    opd eax 


```

imul r/m32   | EDX:EAX = EAX * r/m32
```asm
    mov eax, 5
    mov ebx, 3
    imul ebx       ; EDX:EAX = EAX * EBX = 15
    opd eax        ; 32-bit result in EAX


    ; to use both: 
    mov rcx, rax    ; move AX (implicitly zero-extends to 64-bit)
    shl rdx, 32     ; shift DX left by 32 bits to occupy the high 32 bits
    or rcx, rdx     ; combine them

    opq rcx

```

imul r/m64   | RDX:RAX = RAX * r/m64
```asm

    mov rax, 5
    mov rbx, 3
    imul rbx       ; RDX:RAX = RAX * RBX = 15
    opq rax        ; 64-bit result in RAX

    ; no 128 bit register exist, so can't use both
```




----
# Second form of imul
- this one will cause truncation
- remember, op is a madeup instruction. just to show where the output is written

imul r16, r/m16     | r16 = r16 * r/m16 
```asm
mov ax, 5        ; r16
mov bx, 3        ; r/m16
imul ax, bx      ; AX = AX * BX = 15 (truncated to 16 bits)
opw ax           ; use AX

```



imul r32, r/m32     | r32 = r32 * r/m32 
```asm
mov eax, 5       ; r32
mov ebx, 3       ; r/m32
imul eax, ebx    ; EAX = EAX * EBX = 15 (truncated to 32 bits)
opd eax          ; use EAX


```


imul r64, r/m64     | r64 = r64 * r/m64 
```asm
mov rax, 5       ; r64
mov rbx, 3       ; r/m64
imul rax, rbx    ; RAX = RAX * RBX = 15 (truncated to 64 bits)
opq rax          ; use RAX

```


---
# Third Form of imul 

- this one will cause truncation too
- remember, op is a madeup instruction. just to show where the output is written

imul r16, r/m16, imm8   |  r16 = r/m16 * sign extended imm8
```asm
mov bx, 3        ; r/m16
imul ax, bx, 5   ; AX = BX * 5 (sign-extended 8-bit immediate)
opw ax           ; use AX (result truncated to 16 bits)

```



imul r32, r/m32, imm8   |  r32 = r/m32 * sign extended imm8
```asm
mov ebx, 3       ; r/m32
imul eax, ebx, 5 ; EAX = EBX * 5 (sign-extended 8-bit immediate)
opd eax          ; use EAX (truncated to 32 bits)

```




imul r64, r/m64, imm8   |  r64 = r/m64 * sign extended imm8
```asm
mov rbx, 3       ; r/m64
imul rax, rbx, 5 ; RAX = RBX * 5 (sign-extended 8-bit immediate)
opq rax          ; use RAX (truncated to 64 bits)

```





---
# Fourth form of imul

- this one will cause truncation too
- remember, op is a madeup instruction. just to show where the output is written


only one version: 

imul r16, r/m16, imm16      | r16 = r/m16 * imm16
```asm
mov bx 3, 
imul ax, bx, 5 
opw ax

```

---
# Fifth form of imul


imul r32, r/m32, imm32   | r32 = r/m32 * imm32
```asm
mov ebx 3 
imul eax, ebx, 5 
opd eax 

```


imul r64, r/m64, imm64   | r64 = r/m64 * sign extented imm32
```asm

mov rbx 3 
imul rax, rbx, 5  ; rax = rbx * 5
opw rax 
```



---
---
# Difference between mul and imul

starting values:
```c
AX = -5  ; signed
BX = 3
```

imul:
```asm
mov ax, -5 
mov bx, 3
imul ax  ; DX:AX = AX * BX (signed)

ax = 0xFFF1 = -15
dx = 0xFFFF = -1  
```

mul:
```asm
mov ax, -5 
mov bx, 3
mul ax ; DX:AX = AX * BX (unsigned)

ax = 0x00F1 = 241 
dx = 0x0003 = 3

```


this is because the algorithm are different:

- Signed multiply (`imul`)
```python
# Treat AX and BX as signed numbers
signed_AX = sign_extend_16_to_32(AX)   # -5

signed_BX = sign_extend_16_to_32(BX)   # 3

# Multiply
result = signed_AX * signed_BX         # 32-bit signed result

# Store low 16 bits in AX
AX = result & 0xFFFF

# Store high 16 bits in DX (upper bits of signed result)
DX = (result >> 16) & 0xFFFF

```



- Unsigned multiply (`mul`)
```python
# Treat AX and BX as unsigned numbers
unsigned_AX = AX & 0xFFFF   # Mask to 16-bit unsigned
unsigned_BX = BX & 0xFFFF

# Multiply
result = unsigned_AX * unsigned_BX   # 32-bit result

# Store low 16 bits in AX
AX = result & 0xFFFF

# Store high 16 bits in DX
DX = (result >> 16) & 0xFFFF
```


The difference comes from
```python

signed_AX = sign_extend_16_to_32(AX)   # -5
# this will pad the left with 1s if the number is negative. 
# and with 0 if the number is positive


unsigned_AX= unsigned_extend_16_to_32(AX) 
unsigned_AX = AX & 0xFFFF   # Mask to 16-bit unsigned
# this always pad the left with just 0s

```
