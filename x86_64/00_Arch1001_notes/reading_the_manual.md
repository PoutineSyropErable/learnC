
# Read The Fucking Manual 

- Volume 1 is a summary of everything about x86 

- Volume 2a-d explains all the instruction. 

- Volume 3a-d are all the gory details for stuff they've added over the years (Multimedia extension, virtual machines extensions, virtual memory, 16/64 bit modes, system management modem etc,) 

- Remember to use the pre downloaded Nov 2019 version, which the calss reference. This class is mostly about volume 2. 


---
# Interpreting the instruction reference page 
- The correct way to interpret these pages is given in the Intel Manual 2a, Section 2.1 & 2.2 

- the class will give yet another simplification for now and have a deeper dive be optional material. 


--- 
# Example with AND - Bitwise AND 

What the prof said. 

- C binary operator & (not &&, thats logical AND) 
- Destination Operand r/mX 
- Source Operand r/mX or immediate


## Opcode column. The litteral bytes that you would see in the dissassembler. 
"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/arch1001_x86-64_asm_slides_and_subtitles/14_RTFM/_Arch1001_14_RTFM.pdf"
Page 9


Depend on the processor modes. Each mode have a different DEFAULT operand size. 

For 64 bit mode, the default operand size is 32 bit and the default address size is 64 bit
This means the default interpretation will usually be ones with the r/m32, r32, and imm32


24 ib: 1 byte  | AND AL, imm8 
25 iw: 2 byte 
25 id: 4 byte 


## Operand Encoding collumn

Immediate: I . Not that useful


## 64 bit mode: 
Whether the instruction is valid in 64 bit mode. 
V: Supported 
I: Not supported. 
N.E: Not encodable 
N.P. The REX prefix does not affect the legacy instruction in 64 bit mode 
N.I. New instruction in 64 bit mode. 
N.S. Not supported, requires an address override prefix


##  Compatibility/Legacy mode. 
V  (Valid) - Supported 
I (Invalid) - Not supported. 
N.E - Not encodable 


Pretty much, if you have 64 bit mode set, and you run a 32 bit executable in compatibility mode, is that instruction valid

Like, windows can run 32 bit program. Windows is a 64 bit OS. It does so by using the compatibility mode. (A cpu mode)


## Description
Longer form description compared tot he Instruction Column, But much shorter then a human readable paragraph.


---
# 


/r 

22 /r 


ODA: Online disassembler .com 
Not working 

https://shell-storm.org/online/Online-Assembler-and-Disassembler/


20 01->
where the opcode will be 
22 (byte which specify a register)


so hex22 ?? 
and the values in ?_1 and ?_2 are for which registers. Most likely each hex specify which reg.


AND r/m8, r8 have the form: 20 /r 

And r8, r/m8 : have the form 22 /r . 


REX prefix is 40 (0x40)
41 is a rex byes too. 

The rex byte is to access the 64 bit registers


The manual can have bugs
When in doubt, disassemble like with the python thing


--- 

call ways for near jump (same for jump)

```asm 


; Method 1: Using label
call target_function

; Method 2: Using explicit offset  
call .+0x10        ; Call 0x10 bytes ahead

; Method 3: Using immediate (but this is tricky with RIP)
call 0x12345678    ; This is actually relative, but assembler calculates offset
; might be encoded as called indirect absolute address. Though. 
; As long as the address is less then 32 bit away from current rip, the assembler will figure it out

```
