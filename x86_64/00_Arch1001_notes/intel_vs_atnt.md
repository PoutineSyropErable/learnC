# Intro
the class prefers intel syntax. 

You need to know both


History: Bell Labs -> Multics on mainfraimes -> Unix on PDP-11 asm -> UNIX on PDP-11 C -> Unix on 8086 C (with assembly syntax adapted from PDP-11) -> Ritchard Stallman flip the table

Bell Labs create multics, which runs on main frame
Multix became the inspiration for unix. Unix ran on machine names PDP-11  
Unix was primarily written in assembly. 

(The same people who create unix invented C (created the first version of C),  which was more portable, and then rewrote some of the unix stuff in C)
That made it much more portable to different architechtures, so UNIX got ported to 8086 using C (and some assembly, with a syntax adapted from PDP-11)

Finally, GNUs not unix with Ritchard Stallman flipped the table. 


---- 
# Differences 1 
repeat of
    ./call_ret_mov_add_sub_intel_atnt_rmX.md:155    (gf 155gg)


# INTEL (Nasm) vs AT&T (GAS): 

## Intel: Destination <- Source 
Notes:
- Windows: Think algebra or C:    y = 2x + 1; 
- Destination <- Sources(s)    {right to left}
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

# Differences 2 - Sizes of operand changes the mnemonic

Intel indicates sizes with things like: 

- mov rax, *qword ptr* \[rbx\] 
- ^ Xword ptr. 

- But it's not in the actual mnemonic of the instruction. (mnenomic: instruction name, or generalisation of Instruction name with synonyms and pseudo instructions)

In atnt, the size is from the last character of the instruction, only when there's no other way to disambiguate the instruction. 
- movb: Operate on byte (8 bits = 1 bytes = 2 Hex )
- movw: Operate on word (16 bits = 2 bytes = 4 Hex)
- movl: Operate on "long" (double word/dword) (32 bits = 4 bytes = 8 Hex )
- movq: Operate on  qword (quadword)  (64 bits = 8 bytes = 16 Hex)

long = double word = 32 bits. (Different from C, where long = 64 bits)


# Differences 3 - Mnemonic (Instruction name) changes  

Some mnemonic have been renamed to conform to the b/w/l/q naming conventions for lengths. 
- "cwde" -> "cwtl" 
    - Convert Word to Doubleword Extended -> Convert Word to Long
        - The goal of this instruction, is to sign extend the ax value into eax. 
            - mov ax, -5      ; AX = 0xFFFB
            - cwtl            ; EAX = 0xFFFFFFFB (-5 sign-extended)


- "movsx" -> "movsbw" (*mov* *s*ign extend *b*yte to *w*ord)

- These things makes it way harder to just learn by reading the intel manual 


---
# Differences 4 - Example of mnemonic changes

Intel: 
```asm
movsxd rdx, edx  # d because movsx rdx, eax implies a register bigger then 32 bit exist. 
# and as there were no 32 bit version. And there were no extra bits left, and no possible free configuration of it
```



AT&T: 
```asm 
movslq %eax, %rdx 
mov s l->q
```



---- 
# Differences 5 - Memory address arithmetic and indexing (r/mX)

Hardest one: The nice offset for memory read become half mips + python range. 
The worst about Atnt

offset\(register\) : mips 


python range: (start, --end--, jump )
replace end by index


`[base + index*scale + displacement]`

becomes 
`disp(base, index, scale)`

Which makes it less clear


# Differences 6 - Examples  of indexing changes


```asm 

call qword ptr [rbx + rsi*0x4 - 0xe8] # intel
callq *-0xe8(%rbx, %rsi, 4) #AT&T


mov rax, qword ptr [rpb+0x8]
movq 0x8(%rbp), %rax 

lea rax, [rbx-0xe8]
leaq -0xe8(%rbp), %rax


# forms of lea in atnt: 
leaq (%rax,%rbx,4), %rcx   # 64-bit load effective address
leal (%eax,%ebx,4), %ecx   # 32-bit load effective address
leaw (%ax,%bx,2), %cx      # 16-bit
leab (%al,%bl,1), %cl      # 8-bit (rare)  


```

# Differences 7 - check the slides Syntax 9. Not gonna repeat that. 

```asm
mov 0x8(%rsi), %rdi 

; is accepted in atnt. You'd think it should be a movq
; So learn to read the manual to see how this instruction was encoded. Which will help for this
```


--- 
# gcc flags

gcc -fno-stack-protector 
no stack protector is a nice flag the prof use in his things


--- 
# gdb flags 

-q for quiet 
-x for gdb config paths



