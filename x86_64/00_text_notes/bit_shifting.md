

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
Bits shifted off the right hand are shifted into (set) the carry flag (CF)

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
