To move small values (from small registers) into big register, and what kind of sign extension you want. 


# Moving Smaller Values into Larger Registers

When moving a smaller value (8-bit, 16-bit) into a larger register (16-bit, 32-bit, 64-bit), you must decide **how the upper bits are filled**:

- **Zero-extend (`movzx`)** → Fill upper bits with `0`. Use when treating the value as **unsigned**.
- **Sign-extend (`movsx`)** → Copy the sign bit (most significant bit of source). Use when treating the value as **signed**.
- Signed extended: Will fill with 1 if negative (sign =1), will fill with 0 if positive (sign = 0)



---
# `movzx` — Move with Zero-Extend

Move a smaller operand into a larger register, filling the upper bits with `0`.  
Unsigned-friendly (never propagates sign).


## Forms and Examples
movzx reg16/32/64, r/m8/16


###`movzx reg16, r/m8`  
Zero-extend an **8-bit** source into a **16-bit** register.  

```asm
    mov al, 0xFF        ; AL = 255 (unsigned)
    movzx bx, al        ; BX = 0x00FF = 255
                        ; upper bits cleared
    ; BX = 255

```

###`movzx reg32, r/m8`

Zero-extend an 8-bit source into a 32-bit register.

```asm
    mov al, 0xFF        ; AL = 255
    movzx ecx, al       ; ECX = 0x000000FF = 255
    ; ECX = 255

```


###`movzx reg64, r/m8`
Zero-extend an 8-bit source into a 64-bit register.

```asm
    mov al, 0xFF        ; AL = 255
    movzx rdx, al       ; RDX = 0x00000000000000FF
    ; RDX = 255
```


###`movzx reg64, r/m16`
Zero-extend a 16-bit source into a 32-bit register.

```asm
    mov ax, 0xFFFF      ; AX = 65535
    movzx ebx, ax       ; EBX = 0x0000FFFF = 65535
    ; EBX = 65535
```

### There is no movzx reg64, r/m32 
- because, simply doing mov ebx eax 
- and that will automatically 0 extend it for rax. 
- equiv to: `movzx rbx eax`


---

# `movsx` — Move with Sign-Extend

`movsx` copies a smaller **signed** operand into a larger register, extending the most significant **sign bit** into the upper bits.  
This preserves the signed value correctly when increasing register size.

---

## Forms and Examples

### `movsx reg16, r/m8`  
Sign-extend an **8-bit** signed value into a **16-bit** register.  

```asm
    mov al, -1          ; AL = 0xFF = -1
    movsx bx, al        ; BX = 0xFFFF = -1
```


### `movsx reg32, r/m8`  
Sign-extend an 8-bit signed value into a 32-bit register.
```asm
    mov al, -5          ; AL = 0xFB = -5
    movsx ecx, al       ; ECX = 0xFFFFFFFB = -5
```


### `movsx reg64, r/m8`  
Sign-extend an 8-bit signed value into a 64-bit register.
```asm 
    mov al, -128        ; AL = 0x80 = -128
    movsx rdx, al       ; RDX = 0xFFFFFFFFFFFFFF80 = -128

```


### `movsx reg32, r/m16`  
Sign-extend a 16-bit signed value into a 32-bit register.
```asm 
    mov ax, -1          ; AX = 0xFFFF = -1
    movsx ebx, ax       ; EBX = 0xFFFFFFFF = -1

```


### `movsx reg64, r/m16`  
Sign-extend a 16-bit signed value into a 64-bit register.
```asm
    mov ax, -32768      ; AX = 0x8000 = -32768
    movsx rcx, ax       ; RCX = 0xFFFFFFFFFFFF8000 = -32768
```





### `movsx reg64, r/m32`  
Sign-extend a 32-bit signed value into a 64-bit register.
```asm 
    mov eax, -5         ; EAX = 0xFFFFFFFB = -5
    movsx rdx, eax      ; RDX = 0xFFFFFFFFFFFFFFFB = -5
```

- Note that there is a movsx reg64, r/m32. 









































