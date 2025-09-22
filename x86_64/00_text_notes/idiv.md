# Division terminology: 

```latex

The division formula:

\[
\text{Dividend} \div \text{Divisor} = \text{Quotient} + \frac{\text{Remainder}}{\text{Divisor}}
\]

or using symbols:

\[
D \div d = q + \frac{r}{d}
\]

where:  
- \(D\) = Dividend  
- \(d\) = Divisor  
- \(q\) = Quotient  
- \(r\) = Remainder


```


$$
\frac{\text{Dividend}}{\text{Divisor}} = \text{Quotient} + \frac{\text{Remainder}}{\text{Divisor}}
$$

- Note this appear with proper above/bottom in a better previewer then neovim


The division formula is:  $$ \text{Dividend} / \text{Divisor} = \text{Quotient} + \text{Remainder} / \text{Divisor} $$.

Or written in another form ; Needs to add newlines for the web view cause its dumb and don't take my newlines litteraly

$$\text{Dividend} = \text{Quotient}*\text{Divisor} + \text{remainder}$$


Or: 
```python
Dividend = top
Divisor = bottom

quotient = result
reminder = reminder # duh/trivial to remember

```

---

# IDIV - Signed Divide

## Three forms 
- signed divide ax by r/m8, al = quotient, ah = remainder
- signed divide edx:eax by r/m32. eax = quotient. edx = remainder
- signed divide rdx:rax by r/m64, rax = quotient. rdx = remainder
    - Quotient goes in low, remainder goes in high

    - if the dividend is 32/64 bits, edx/rdx will be set to 0 by the compiler before the instruction. 
        - You must set it to 0 yourself if you aren't using 64bits / 32 bits. or 128 bits / 64 bits!

    - If the divisor is 0, a divide by 0 exception is raised

    - Note: The Div instruction doesn't support dividing by an immediate
    - So read properly. It's written an r/mX, not r/mX or immediate



```asm
; ===== Form 1: 8-bit divide =====
mov ax, 12345
div byte ptr [ecx]; (memory case)
; or 
div dl;  (register case)
al = result = ax / dl 
ah = reminder
; Note, while 12345 fits in 16 bits, 12345 / plenty of stuff, 
; Will not fit in 8 bits ! 
; al can fit 0-255 ( 8 bits). 
; so quotient overflow is possible here. 
; Same for the others. Using a "two register dividend (top)" 
; might make the result quotient overflow



; ======= Form 2: 32-bit divide =======
mov edx, 0          ; high 32 bits of dividend
mov eax, 100000000  ; low 32 bits of dividend
div ecx             ; divide edx:eax by ecx
eax = quotient      ; result of edx:eax / ecx
edx = remainder     ; remainder of edx:eax / ecx
; edx = high, eax = low (edx:eax)

; or using memory
div dword ptr [ebx] ; divide edx:eax by 32-bit memory operand
eax = quotient
edx = remainder


; ======= Form 3: 64-bit divide =======
mov rdx, 0          ; high 64 bits of dividend
mov rax, 5000000000 ; low 64 bits of dividend
div rcx             ; divide rdx:rax by rcx
rax = quotient      ; result of rdx:rax / rcx
rdx = remainder     ; remainder of rdx:rax / rcx

; or using memory
div qword ptr [rsi] ; divide rdx:rax by 64-bit memory operand
rax = quotient
rdx = remainder







```



---

# DIV - Unsigned Divide
Same forms as IDIV


## Three forms 
- unsigned divide ax by r/m8, al = quotient, ah = reminder
- unsigned divide edx:eax by r/m32. eax = quotient. edx = reminder
- unsigned divide rdx:rax by r/m64, rax = quotient. rdx = reminder

    - if the dividend is 32/64 bits, edx/rdx will be set to 0 by the compiler before the instruction. 
        - You must set it to 0 yourself if you aren't using 64bits / 32 bits. or 128 bits / 64 bits!

    - If the divisor is 0, a divide by 0 exception is raised

    - Note: The Div instruction doesn't support dividing by an immediate
    - So read properly. It's written an r/mX, not r/mX or immediate


You can just check the assembly above. same but with div, not idiv



---
# TODO: Exercise on imul, mul, div, idiv
