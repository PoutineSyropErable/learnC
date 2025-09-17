rax = r0
eax. = r0d
ax. = r0w
ah, al = _, r0b



rbx = r3
ebx
bx 
bh, bl


rcx = r1 
ecx
cx
ch, cl


rdx = r1 
edx
dx 
dh, dl


rsp = r4 : stack pointer
esp 
sp 
spl : No way to access the most significant byte

RSP  = [63..........0]
ESP  = lower 32 bits
SP   = lower 16 bits
SPL  = lower 8 bits

REGISTER NAMES AND SUBPART DON'T CARE ABOUT ENDIAN NESS


rbp = r5: base frame pointer
ebp 
bp
bpl 

rsi = r6 
esi, 
si 
sil

rdi = r7
edi 
di
dil

only the low is accessible


====

rip = instruction pointer. Not numbered
eip 
ip 


introduced in 64 bit extension
r8 
r8d 
r8w 
r8b 


r9 
r9d 
r9w 
r9b 


r10 
r10d 
r10w 
r10b 


r11 
r11d 
r11w 
r11b 



r12 
r12d 
r12w 
r12b 



r13 
r13d 
r13w 
r13b 


r14 
r14d 
r14w 
r14b 


r15 
r15d 
r15w 
r15b 

end
