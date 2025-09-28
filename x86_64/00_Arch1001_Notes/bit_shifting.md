

Search headers:
<!-- LOGICAL two meaning. 2 meaning. assembly vs c. assembly vs high level. logical vs arithmetic   -->
### LOGICAL (In assembly): It's a pure logic operation. Only bits. Doesn't care about signs. Bitwise
### LOGICAL (In C and high level programming language): Only single true or false. So 0 = false, true = anything else

### Arithmetic: Cares about sign. It's more about math operations. Bitshift here is for multiply by 2 / divide by 2. 
### It must work for signed numbers

----

# SHL, SHR: Logical Shift Left/Right. 
Unsigned. Adds zeros

## SHL - Shift Logical Left : 
For unsigned values. Or just pure litteal bit shifting
\<\< in C. 

- Note that this is equal to SAL: Shift arithmetic right. It's just a different mnemonic for the same opcode. 
- That's because both put a 0 on the right bit that are now unset. 

First operand: Source and destination. Is an r/mX

second operand is either cl (lowest byte of rcx), or a 1 byte immediate. 
The second operand is the number of places to shift


It multiplies the register by 2 for each place the value is shifted. More efficient then a multiplication instruction.
Bits shifted off the left hand are shifted into (set) the carry flag (CF)

```asm


mov eax, 1101_1010b
shl eax, 2
<--
eax = eax << 2 

the last bit which got shifted off.  
Carry flag is set to that.
      | 
      v 
eax = 11  01_1010b 
eax =   0100_1010b
cf = 1 (Carry flag. )
(would be 11, but it's a one byte only)


mov eax, 1101_1010b
mov cl, 2
shl eax, cl
; ONLY CL CAN BE USED for varialbe shift. It's the only allowed register
; cl is the lower bit of rcx: rcx, ecx, cx, cl

```




## SHR: Shift Logical Right 
For unsigned values. Or just pure litteral bit shifting
\>\> in C. 


First operand: Source and destination. Is an r/mX

second operand is either cl (lowest byte of rcx), or a 1 byte immediate. 
The second operand is the number of places to shift


It divide the register by 2 for each place the value is shifted. More efficient then a division instruction.
Bits shifted off the right hand are shifted into (set) the carry flag (CF)

Note that C have numbers rounded toward 0. So smallest absolute values

```asm


mov eax, 1101_1010b
shr eax, 2
-->
eax = eax >> 2 

eax = 001101_10b  10
eax = 0011_0110b
cf = 1 (Carry flag. )
(would be 11, but it's a one byte only)


mov eax, 1101_1010b
mov cl, 2
shr eax, cl
; ONLY CL CAN BE USED for varialbe shift. It's the only allowed register
; cl is the lower bit of rcx: rcx, ecx, cx, cl

```

---
# SAL - Shift Arithmetic Left
For signed values  (Multiplication)
\<\< in C

- Note that this is equal to SHL: Shift arithmetic right. It's just a different mnemonic for the same opcode. 
- That's because both put a 0 on the right bit that are now unset. 

GAS Prefers to use SAL over SHL. 
AKA: 
The gcc -s partial compiling (or just regular compiling, not compile + assemble)  will use SAL. 

However, 
The object files dissassembly (object dump/objdump) will use SHL. 

-----
------
---
# SAR - Shift Arithmetic Right  
For signed values (Division toward -infinity. )
\>\> in C    

- SAR shifts right while preserving the sign bit (most significant bit) for signed numbers.  
- Negative numbers remain negative; positive numbers remain positive.  
- Used for signed division by powers of 2.  

First operand: Source and destination. Is an r/mX  

Second operand: cl (lowest byte of rcx) or a 1 byte immediate.  

- Divides by 2 for each shift.  
- Bits shifted in from the left are copies of the original sign bit. (the unset left bits are set to SF)  
- Bits shifted out on the right set the carry flag (CF).  


Note that this divide toward -infinity. 
Positive numbers are rounded down (smaller abs value)
Negative numbers are rounded down/"up" (higher abs value)  {Officially, it rounds down. "up" is a dumb me thing. hence the ""}

```asm

mov eax, -32  
sar eax, 2  
; eax = -32 >> 2 (arithmetic)  
; eax = -8  
; preserves sign  

mov eax, 16  
sar eax, 2  
; eax = 16 >> 2  
; eax = 4  

mov eax, -32  
mov cl, 2  
sar eax, cl  
; variable shift using CL  

```  



--- 
# Rounding tables / 16 

- Note: 15 = 16 - 1. 
- So remove 1 to whatever you divide by



# Division by 16: Negative Numbers, Pre-Rounding and Rounding Illustration

| Value (`x`) | x /16 | x /16 (round -∞) | x + 15 | (x+15)/16 | (x+15)/16 round -∞ | x /16 round toward 0 | -x /16 round toward 0 |
|-------------|-------|-----------------|---------|-----------|-------------------|-------------------|--------------------|
| -32         | -2.0  | -2              | -17     | -1.0625   | -2                | -2                | 2                  |
| -33         | -2.0625 | -3            | -18     | -1.125    | -2                | -2                | 2                  |
| -34         | -2.125 | -3             | -19     | -1.1875   | -2                | -2                | 2                  |
| -35         | -2.1875 | -3            | -20     | -1.25     | -2                | -2                | 2                  |
| -36         | -2.25  | -3              | -21     | -1.3125   | -2                | -2                | 2                  |
| -37         | -2.3125 | -3            | -22     | -1.375    | -2                | -2                | 2                  |
| -38         | -2.375 | -3             | -23     | -1.4375   | -2                | -2                | 2                  |
| -39         | -2.4375 | -3            | -24     | -1.5      | -2                | -2                | 2                  |
| -40         | -2.5   | -3              | -25     | -1.5625   | -2                | -2                | 2                  |
| -41         | -2.5625 | -3            | -26     | -1.625    | -2                | -2                | 2                  |
| -42         | -2.625 | -3             | -27     | -1.6875   | -2                | -2                | 2                  |
| -43         | -2.6875 | -3            | -28     | -1.75     | -2                | -2                | 2                  |
| -44         | -2.75  | -3              | -29     | -1.8125   | -2                | -2                | 2                  |
| -45         | -2.8125 | -3            | -30     | -1.875    | -2                | -2                | 2                  |
| -46         | -2.875 | -3             | -31     | -1.9375   | -2                | -2                | 2                  |
| -47         | -2.9375 | -3            | -32     | -2.0      | -2                | -2                | 2                  |
| -48         | -3.0   | -3              | -33     | -2.0625   | -3                | -3                | 3                  |

## Notes:

1. **x / 16:** Exact division (floating point).  
2. **x /16 (round -∞):** Arithmetic right shift (SAR) result; negative numbers rounded down.  
3. **x + 15:** Pre-rounding trick applied conditionally using `CMOVNS`. Only adds 15 for **non-negative numbers**, leaving negatives untouched.  
4. **(x+15)/16:** Exact division after pre-rounding.  
5. **(x+15)/16 round -∞:** Result of SAR after pre-rounding; this matches **truncation toward zero**.  
6. **x /16 round toward 0:** The intended result for signed integer division truncating toward 0, achieved by `CMOVNS + SAR` in assembly.  
7. **-x /16 round toward 0:** Take the absolute value of `x` and divide by 16 truncating toward 0; 
   useful for symmetry checks or code that operates on negative magnitudes.  


16 isn't special. This is just an example. 

doing sar (shift arithmetic right) does a divide by 2^n, rounded toward -infinity. 
So, to get rounding toward 0 behavior like in c: 

```asm 

// Abuse of labels lol
C: 
int b = some_number;
edx = b;

ASM:
; this is all for doing division toward 0, not infinity.  
lea	eax, [rdx + 15] ; rdx + 15
; eax = edx + 15;  (We'll be dividing by 16, so add 15)
test	edx, edx ; is the rightmost bit of edx 0; 
; check if it's negative

cmovns	eax, edx ; 	
; if it's negative, eax = edx (b) + 15; 
; if it's positive, eax = edx (b); 
; vv the actual division code vv 
sar	eax, 4 ;(divide by 16)


```


---
# Extra 

Microsoft Visual C++
the CDQ instruction is a VS-ism. (msvc cl.exe, windows). Won't see it myself

convert dword to qword. Just to make the math work out. 




## # Carry Flag behavior: 

The LAST BIT which gets shifted off, is the one who the carry flag is set to. 
- IT is NOT, IT doesn't work following a (if at least one bit who got shifted off was a 1, then it's one). 
- It's like an update loop. every loop itteration takes the (to be removed bit), set the carry flag to it. 
    - and then shift that bit off. Repeat untill we hit the itteration number. 
    - We can only read the final state. Aka, the value of the final "killed" bit


Using loops
```asm
; Example 1: SHL (Shift Logical Left)
; eax = 8-bit value 0b1011_0101
mov al, 0b10110101
; shift left by 3
shl al, 3
; Result after each shift (showing CF as the shifted out bit):
; Step 1: 0b01101010 , CF=1 (leftmost bit of original: 1)
; Step 2: 0b11010100 , CF=0 (next leftmost bit: 0)
; Step 3: 0b10101000 , CF=1 (last bit shifted out: 1)
; Final AL = 0b10101000
; CF = 1

; Example 2: SHR (Shift Logical Right)
; eax = 8-bit value 0b10110101
mov al, 0b10110101b
; shift right by 3
shr al, 3
; Step 1: 0b01011010 , CF=1 (rightmost bit of original: 1)
; Step 2: 0b00101101 , CF=0 (next rightmost bit: 0)
; Step 3: 0b00010110 , CF=1 (last bit shifted out: 1)
; Final AL = 0b00010110
; CF = 1
```

- Note: Chatgpt is using al because it's an 8bit value. A 1 byte value. So it makes sense. 
- This way, it properly gets shifted out (out of al). 
- Though for right shift >>, it wouldn't matter. 
- This happens because the cpu it's the same instruction, but the instruction wiring check the size 
- To know where to track the overflow value. 

Showing final result
```asm
; Example 1: SHL by 3
mov al, 0b10110101b
shl al, 3
;          0b10110101  ; original
; 101  0b10101000      ; bits shifted off | result
;   ^- last bit shifted out -> CF = 1

; Example 2: SHL by 2
mov al, 0b01101110b
shl al, 2
;          0b01101110
; 01   0b10111000
;    ^- last bit shifted out -> CF = 1

; Example 3: SHR by 3
mov al, 0b10110101b
shr al, 3
;          0b10110101
; 101  0b00010110
;   ^- last bit shifted out -> CF = 1

; Example 4: SHR by 2
mov al, 0b01101110b
shr al, 2
;          0b01101110
; 10   0b00011011
;    ^- last bit shifted out -> CF = 0

; Example 5: SHL by 1
mov al, 0b10000001b
shl al, 1
;          0b10000001
; 1   0b00000010
; ^- last bit shifted out -> CF = 1

; Example 6: SHR by 1
mov al, 0b00000011b
shr al, 1
;          0b00000011
; 1   0b00000001
; ^- last bit shifted out -> CF = 1



```

***
