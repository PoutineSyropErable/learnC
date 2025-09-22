

Search headers:
<!-- LOGICAL two meaning. 2 meaning. assembly vs c. assembly vs high level. logical vs arithmetic   -->
### LOGICAL (In assembly): It's a pure logic operation. Only bits. Doesn't care about signs. Bitwise
### LOGICAL (In C and high level programming language): Only single true or false. So 0 = false, true = anything else

### Arithmetic: Cares about sign. It's more about math operations. Bitshift here is for multiply by 2 / divide by 2. 
### It must work for signed numbers


# SHL, SHR: Logical Shift Left/Right. 
Unsigned. Adds zeros

## SHL - Shift Logical Left : 


<< in C. 
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



\>\> in C. 
First operand: Source and destination. Is an r/mX

second operand is either cl (lowest byte of rcx), or a 1 byte immediate. 
The second operand is the number of places to shift


It divide the register by 2 for each place the value is shifted. More efficient then a division instruction.
Note that this divide toward -infinity. 
Positive numbers are rounded down (smaller abs value)
Negative numbers are rounded down/"up" (higher abs value)  {Officially, it rounds down. "up" is a dumb me thing. hence the ""}
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

	; this is all for doing division toward 0, not infinity.  
	lea	eax, 15[rdx] ; rdx + 15
	; eax = edx + 15;  (We'll be dividing by 16, so add 15)
	test	edx, edx ; is the rightmost bit of edx 0; 

	cmovns	eax, edx ; 	
	; if it's negative, eax = edx (b) + 15; 
	; if it's positive, eax = edx (b); 
	; vv the actual division code vv 
	sar	eax, 4 ;(divide by 16)


```



