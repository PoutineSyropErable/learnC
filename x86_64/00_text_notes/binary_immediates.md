```asm
; also written as 0b1101_1010 

0b1010: Used in C, and new gas intel
1010b : Used in NASM, MASM, FASM, etc. 
.byte: Old GAS: 


Gas AT&T: 
    movl   $8, %eax        # decimal
    movl   $010, %eax      # octal (010 = 8) # must start with leading 0
    movl   $0x8, %eax      # hex
    movl   $0b1000, %eax   # binary (GAS ≥ 2.35 supports this)
    # gas uses multiple instruction. But its not 1 to 1 with opcode. 



Intel syntax gas: 
    mov eax, 8
    mov eax, 08          # decimal 8 (not octal in Intel mode!)
    mov eax, 0x8         # hex
    mov eax, 0b1000      # binary (GAS ≥ 2.35)

```
